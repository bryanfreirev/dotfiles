# Managing virtualenvs
alias w="source ./venv/bin/activate"
alias we='deactivate'
alias wc8="python3.8 -m venv venv"
alias wc9="python3.9 -m venv venv"
alias wc10="python3.10 -m venv venv"

# Testing
alias t='pytest --no-cov -x'
alias td='pytest --no-cov -x --pdb'
