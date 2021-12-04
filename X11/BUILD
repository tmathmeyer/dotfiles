load("//dotfiles/target_definitions.py")

PackageSet (
  name = "xorg_packages",
  debian = [ "server-xephyr" ],
)

ConfigSet (
  name = "xorg_config",
  deps = [ ":xorg_packages" ],
  files = [
    ("xinitrc", "{HOME}/.xinitrc"),
    ("xmodmaprc", "{HOME}/.xmodmaprc"),
    ("Xresources", "{HOME}/.Xresources"),
    ("pre_wm.sh", "{HOME}/.config/x11/pre_wm.sh"),
    ("start_wm.sh", "{HOME}/.config/x11/start_wm.sh"),
    ("post_wm.sh", "{HOME}/.config/x11/post_wm.sh"),
  ],
)