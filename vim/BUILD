load("//dotfiles/target_definitions.py")

PackageSet (
  name = "vim_install",
  debian = [ "vim" ],
  arch = [ "vim" ],
)

ExecuteTool (
  name = "vim_fs_setup",
  execute = "mkdir -p ~/.vim/bundle",
)

ExecuteTool (
  name = "download_vundle",
  deps = [ ":vim_fs_setup" ],
  execute = "[ -d '{HOME}/.vim/bundle/Vundle.vim' ] || git clone https://github.com/VundleVim/Vundle.vim.git {HOME}/.vim/bundle/"
)

ExecuteTool (
  name = "vim_setup",
  deps = [
    ":download_vundle",
    ":vim_config",
    ":vim_install",
  ],
  execute = "vim +PluginInstall +qall",
)

ConfigSet (
  name = "vim_config",
  deps = [ ":download_vundle" ],
  files = [
    ("colors/molokai.vim", "{HOME}/.vim/colors/molokai.vim"),
    ("colors/solarized.vim", "{HOME}/.vim/colors/solarized.vim"),
    ("colors/spacegrey.vim", "{HOME}/.vim/colors/spacegrey.vim"),
    ("vimrc", "{HOME}/.vimrc"),
  ],
)
