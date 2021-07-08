venvfolder='~/.virtualenvs/$(basename $PWD)'
alias w="source $venvfolder/bin/activate"
alias wc5="virtualenv -p python3.5 $venvfolder"
alias wc7="virtualenv -p python3.7 $venvfolder"
alias wc8="virtualenv -p python3.8 $venvfolder"
alias we='deactivate'

alias t='pytest --no-cov -x'
alias td='pytest --no-cov -x --pdb'
