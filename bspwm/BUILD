load("//dotfiles/target_definitions.py")

PackageSet (
  name = "bspwm_deps",
  debian = [
    "libxcb-util0-dev",
    "libxcb-randr0-dev",
    "libxcb-icccm4-dev",
    "libxcb-xinerama0",
    "libxcb-xinerama0",
    "libxcb-ewmh-dev",
    "libxcb-keysyms1-dev",
    "libxcb-shape0-dev",
  ],
)

SourceBuild (
  name = "bspwm_binary",
  deps = [ ":bspwm_deps" ],
  source = "https://github.com/baskerville/bspwm.git",
  build_cmd = "make -C {src}",
  results = [
    "bspwm",
    "bspc",
  ],
)

ConfigSet (
  name = "bspwm",
  deps = [ ":bspwm_binary" ],
  files = [
    ("bspwmrc", "{HOME}/.config/bspwm/bspwmrc"),
    ("setup-wallpaper", "{HOME}/.config/bspwm/setup-wallpaper"),
  ],
)