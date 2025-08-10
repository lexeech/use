plugins=(git zsh-syntax-highlighting you-should-use zsh-shift-select)

alias nano="echo 'Use alternative - micro"

alias dmanage="pyenv exec poetry run python ./manage.py"
alias startapp="pyenv exec poetry run python ./manage.py startapp"
alias runserver="pyenv exec poetry run python ./manage.py runserver 0.0.0.0:8001 --nothreading"
alias dmigrate="pyenv exec poetry run python ./manage.py migrate"
alias dshell="pyenv exec poetry run python ./manage.py shell"