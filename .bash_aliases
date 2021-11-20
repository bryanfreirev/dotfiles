# Managing virtualenvs
alias w="source $VENVFOLDER/bin/activate"
alias wc5="virtualenv -p python3.5 $VENVFOLDER"
alias wc7="virtualenv -p python3.7 $VENVFOLDER"
alias wc8="virtualenv -p python3.8 $VENVFOLDER"
alias we='deactivate'

# Testing
alias t='pytest --no-cov -x'
alias td='pytest --no-cov -x --pdb'
