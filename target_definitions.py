
def env(pattern):
  return pattern.replace('{HOME}', os.environ['HOME'])


@using(env)
@buildrule
def ExecuteTool(target, execute, **kwargs):
  target.Execute(env(execute))


@using(env)
@buildrule
def PackageSet(target, **platforms):
  tools = {
    "debian": ('/etc/debian_version', 'apt-get install -o DPkg::Lock::Timeout=-1', 'apt-cache policy'),
    "arch": ('/etc/arch-release', 'pacman --noconfirm -S', None)
  }
  for platform in platforms:
    versionfile, tool, check = tools.get(platform, ('', '', None))
    if os.path.exists(versionfile):
      for package in platforms[platform]:
        if check is not None:
          r = target.RunCommand(f'{check} {package}')
          if not r.returncode:
            continue
        target.Execute(f'sudo {tool} {package}')


@using(env)
@buildrule
def SourceBuild(target, source, build_cmd, results, **kwargs):
  def BuildAndInstall(source_location):
    target.Execute(build_cmd.format(src=source_location))
    for result in results:
      target.Execute(f'sudo install {source_location}/{result} /usr/local/bin')

  for alternate in kwargs.get('alternates', []):
    alternate = env(alternate)
    if os.path.exists(alternate):
      source_location = alternate
      BuildAndInstall(source_location)
      return

  with target.UseTempDir() as source_location:
    target.Execute(f'git clone {source} {source_location}')
    BuildAndInstall(source_location)


@using(env)
@buildrule
def _ConfigSet(target, files, **kwargs):
  for file, dest in files:
    dest = env(dest)
    source = f'{impulse_paths.root()}/{target.GetPackageDirectory()}/{file}'
    if not os.path.exists(source):
      raise ValueError(f'source {source} does not exist!')
    if not os.path.exists(dest):
      # a not-exists could also mean a broken symlink!
      if os.path.islink(dest):
        target.Execute(f'rm {dest}')
      if not os.path.exists(os.path.dirname(dest)):
        target.Execute(f'mkdir -p {os.path.dirname(dest)}')
      target.Execute(f'ln -s {source} {dest}')
    elif os.path.islink(dest) and os.readlink(dest) == source:
      continue
    else:
      raise ValueError(f'File {dest} already exists!')


@buildmacro
def ConfigSet(macro_env, name, deps, files):
  import os
  def PrependHostname(filemap):
    file, dest = filemap
    hostname = os.uname()[1]
    host_specific = f'{macro_env.GetLocation()}/{hostname}/{file}'
    if os.path.exists(host_specific):
      return f'{hostname}/{file}', dest
    return f'default/{file}', dest

  macro_env.ImitateRule(
    rulefile = '//dotfiles/target_definitions.py',
    rulename = '_ConfigSet',
    args = {
      'name': name,
      'deps': deps,
      'files': files.Map(lambda x: PrependHostname(x)),
      'srcs': files.Map(lambda x: PrependHostname(x)[0])
    })
