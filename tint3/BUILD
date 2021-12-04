load("//dotfiles/target_definitions.py")

SourceBuild (
  name = "tint3_install",
  source = "https://github.com/tmathmeyer/tint3.git",
  build_cmd = "make -C {src}",
  results = [ "tint3" ],
)

ConfigSet (
  name = "tint3_config",
  deps = [ ":tint3_install" ],
  files = [ ("tint3rc", "{HOME}/.tint3rc") ],
)