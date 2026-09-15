load("//dotfiles/target_definitions.py")

PackageSet (
  name = "deps",
  debian = [
    "libxcb-util0-dev",
    "libxcb-randr0-dev",
    "libxcb-icccm4-dev",
    "libxcb-xinerama0",
    "libxcb-xinerama0-dev",
    "libxcb-ewmh-dev",
    "libxcb-keysyms1-dev",
    "libxcb-shape0-dev",
    "wmname",
    "libxcb-xkb-dev",
  ],
)

SourceBuild (
  name = "skhxd_install",
  source = "https://github.com/baskerville/sxhkd.git",
  build_cmd = "make -C {src}",
  results = [ "sxhkd" ],
  deps = [ ":deps" ],
)

ConfigSet (
  name = "sxhkd_config",
  deps = [ ":skhxd_install" ],
  files = [ ("sxhkdrc", "{HOME}/.config/sxhkd/sxhkdrc") ],
)
