load("//dotfiles/target_definitions.py")

PackageSet (
  name = "tint3_dependencies",
  debian = [ "libx11-dev", ],
)

SourceBuild (
  name = "tint3_install",
  source = "https://github.com/tmathmeyer/tint3.git",
  alternates = ("{HOME}/Git/tint3/", "{HOME}/git/tint3"),
  build_cmd = "make -C {src}",
  results = [ "tint3" ],
  deps = [ ":tint3_dependencies", ],
)

ConfigSet (
  name = "tint3_config",
  deps = [ ":tint3_install" ],
  files = [ ("tint3rc", "{HOME}/.tint3rc") ],
)