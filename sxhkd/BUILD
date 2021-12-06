load("//dotfiles/target_definitions.py")

SourceBuild (
  name = "skhxd_install",
  source = "https://github.com/baskerville/sxhkd.git",
  build_cmd = "make -C {src}",
  results = [ "sxhkd" ],
)

ConfigSet (
  name = "sxhkd_config",
  deps = [ ":skhxd_install" ],
  files = [ ("sxhkdrc", "{HOME}/.config/sxhkd/sxhkdrc") ],
)