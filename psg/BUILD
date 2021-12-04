load("//dotfiles/target_definitions.py")

SourceBuild (
  name = "psg_install",
  source = "https://github.com/tmathmeyer/better-bash-powerline.git",
  build_cmd = "make -C {src}",
  results = [ "psg2" ],
)

ConfigSet (
  name = "psg_config",
  deps = [ ":psg_install" ],
  files = [
    ("psgrc", "{HOME}/.config/psg/psg.json"),
    ("git", "{HOME}/.config/psg/git.sh"),
  ],
)