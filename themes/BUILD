load("//dotfiles/target_definitions.py")

PackageSet (
  name = "urxvt_install",
  debian = [ "rxvt-unicode" ],
)

ConfigSet (
  name = "color_themes",
  deps = [ ":urxvt_install" ],
  files = [ ("solarizedDark", "{HOME}/.themes/font/solarizedDark") ],
)