##################################################
# PYTHON
##################################################
VENVS_DIR="$HOME/.venvs"

function w { source $VENVS_DIR/$1/Scripts/activate; }
function wc { python -m venv $VENVS_DIR/$1; }
alias we='deactivate'

alias t='pytest -vvv -o addopts='
alias td='t --pdb --pdbcls=IPython.terminal.debugger:Pdb'
