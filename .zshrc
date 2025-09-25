# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="terminalparty"

plugins=(
        git
        zsh-shift-select
        you-should-use
        zsh-syntax-highlighting
        zsh-256color
)

alias nano="echo 'Use alternative - micro"

alias dmanage="pyenv exec poetry run python ./manage.py"
alias startapp="pyenv exec poetry run python ./manage.py startapp"
alias runserver="pyenv exec poetry run python ./manage.py runserver 0.0.0.0:8001 --nothreading"
alias dmigrate="pyenv exec poetry run python ./manage.py migrate"
alias dshell="pyenv exec poetry run python ./manage.py shell"

alias lzg="lazygit"
alias lzd="lazydocker'

alias tmux="tmux a || tmux"

source $ZSH/oh-my-zsh.sh
