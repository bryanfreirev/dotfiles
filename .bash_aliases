# Managing virtualenvs
alias w="source $VENVFOLDER/bin/activate"
alias wc5="python3.5 -m venv $VENVFOLDER"
alias wc7="python3.7 -m venv $VENVFOLDER"
alias wc8="python3.8 -m venv $VENVFOLDER"
alias wc10="python3.10 -m venv $VENVFOLDER"
alias we='deactivate'

# Testing
alias t='pytest --no-cov -x'
alias td='pytest --no-cov -x --pdb'
