# Managing virtualenvs
VENV_PATH=$HOME/.venvs
if [ ! -d $VENV_PATH ]; then echo mkdir $VENV_PATH; fi

function w { source $VENV_PATH/$1/bin/activate; }
function wc { python3 -m venv $VENV_PATH/$1; }

alias we='deactivate'
alias t='pytest -vvv -o addopts= -x'
alias td='t --pdb'
