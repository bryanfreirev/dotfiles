# variables
set -o vi

export VISUAL=vim
export EDITOR=vim
export PYTHONDONTWRITEBYTECODE=1

export VENVFOLDER='~/.virtualenvs/$(basename $PWD)'

# read bashrc
source ~/.bashrc


# read other bash_*

# deepin gsettings
gsettings set com.deepin.dde.keyboard layout-options '["caps:swapescape"]'

# path
export PATH=$PATH:$HOME/.local/bin
