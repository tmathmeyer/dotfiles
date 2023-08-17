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
  results = [
    "GENERATED/BINARIES/impulse/impulse",
    "impulse_arg_completion",
  ],
)

ConfigSet (
  name = "all",
  deps = [
    ":impulse_binary",
    "//dotfiles/X11:xorg_config",
    "//dotfiles/bash:bash_config",
    "//dotfiles/bspwm:bspwm",
    "//dotfiles/chromium:chromium_config",
    "//dotfiles/compton:compton_config",
    "//dotfiles/dmenu:dmenu_scripts",
    "//dotfiles/dunst:dunst_config",
    "//dotfiles/fonts:fonts_install",
    "//dotfiles/psg:psg_config",
    "//dotfiles/sxhkd:sxhkd_config",
    "//dotfiles/themes:color_themes",
    "//dotfiles/tint3:tint3_config",
    "//dotfiles/tmux:tmux_config",
    "//dotfiles/vim:vim_setup",
  ],
  files = [],
)