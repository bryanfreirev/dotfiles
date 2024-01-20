#
ln -s $HOME/projects/dotfiles/.bash_profile $HOME
ln -s $HOME/projects/dotfiles/.bash_aliases $HOME

ln -s $HOME/projects/dotfiles/.editorconfig $HOME
ln -s $HOME/projects/dotfiles/.tmux.conf $HOME
if [ ! -d $HOME/.vim ]; then mkdir $HOME/.vim; fi
ln -s $HOME/projects/dotfiles/.vimrc $HOME/.vim/vimrc

# vim plugins
VIM_PLUGINS_PATH=$HOME/.vim/pack/vendor/start
if [ ! -d $VIM_PLUGINS_PATH ]; then mkdir -p $VIM_PLUGINS_PATH; fi

# git clone --depth=1 _ $VIM_PLUGINS_PATH
# git clone --depth=1 _ $VIM_PLUGINS_PATH
git clone --depth=1 https://github.com/christoomey/vim-tmux-navigator.git $VIM_PLUGINS_PATH
git clone --depth=1 https://github.com/editorconfig/editorconfig-vim.git $VIM_PLUGINS_PATH
git clone --depth=1 https://tpope.io/vim/surround.git $VIM_PLUGINS_PATH
git clone --depth=1 https://tpope.io/vim/commentary.git $VIM_PLUGINS_PATH
git clone --depth=1 https://github.com/junegunn/goyo.vim.git $VIM_PLUGINS_PATH

git clone --depth=1 https://github.com/tpope/vim-fugitive.git $VIM_PLUGIN_PATH
git clone --depth=1 https://github.com/airblade/vim-gitgutter.git $VIM_PLUGINS_PATH

git clone --depth=1 https://github.com/preservim/nerdtree.git $VIM_PLUGINS_PATH
git clone --depth=1 https://github.com/ryanoasis/vim-devicons.git $VIM_PLUGINS_PATH
git clone --depth=1 https://github.com/Xuyuanp/nerdtree-git-plugin.git $VIM_PLUGINS_PATH

git clone --depth=1 https://github.com/vim-airline/vim-airline.git $VIM_PLUGINS_PATH
git clone --depth=1 https://github.com/vim-airline/vim-airline-themes.git $VIM_PLUGINS_PATH

git clone --depth=1 https://github.com/mileszs/ack.vim.git $VIM_PLUGINS_PATH
git clone --depth=1 https://github.com/ctrlpvim/ctrlp.vim.git $VIM_PLUGINS_PATH

git clone --depth=1 https://github.com/dense-analysis/ale.git $VIM_PLUGINS_PATH
