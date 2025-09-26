# See e
ZSH_THEME="terminalparty"

plugins=(
        git
        zsh-shift-select
        you-should-use
        zsh-syntax-highlighting
        zsh-autosuggestions
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

# pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init - zsh)"

export EDITOR="zed"
export VISUAL="zed"

source $ZSH/oh-my-zsh.sh
