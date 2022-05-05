# Managing virtualenvs
alias w="source $VENVFOLDER/bin/activate"
alias wc8="python3.8 -m venv $VENVFOLDER"
alias wc9="python3.9 -m venv $VENVFOLDER"
alias wc10="python3.10 -m venv $VENVFOLDER"
alias we='deactivate'

# Testing
alias t='pytest --no-cov -x'
alias td='pytest --no-cov -x --pdb'
