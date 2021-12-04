load("//dotfiles/target_definitions.py")

PackageSet (
  name = "impulse_deps",
  debian = [ "python3" ],
)

SourceBuild (
  name = "impulse_binary",
  deps = [ ":impulse_deps" ],
  source = "https://github.com/tmathmeyer/impulse.git",
  alternates = ("{HOME}/Git/impulse/", "{HOME}/git/impulse"),
  build_cmd = "make -C {src}",
  results = [ "GENERATED/BINARIES/impulse/impulse", "impulse_arg_completion" ],
)

ConfigSet (
  name = "all",
  deps = [
    ":impulse_binary",
    "//dotfiles/bspwm:bspwm",
  ],
  files = (),
)