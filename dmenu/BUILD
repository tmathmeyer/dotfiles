load("//dotfiles/target_definitions.py")

SourceBuild (
  name = "dmenu_build",
  deps = [
  ],
  source = "https://github.com/tmathmeyer/dmenu2_borders.git",
  build_cmd = "make -C {src}",
  results = [
    "dmenu",
    "stest",
  ],
)

ConfigSet (
  name = "dmenu_scripts",
  deps = [ ":dmenu_build" ],
  files = [
    ("dmscript", "{HOME}/.bin/dmscript"),
    ("dmenu_run", "{HOME}/.bin/dmenu_run"),
  ],
)