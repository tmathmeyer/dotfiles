load("//dotfiles/target_definitions.py")

PackageSet (
  name = "tmux_install",
  debian = [ "tmux" ],
)

ConfigSet (
  name = "tmux_config",
  deps = [ ":tmux_install" ],
  files = [ ("tmux.conf", "{HOME}/.tmux.conf") ],
)