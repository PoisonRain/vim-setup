alias vimAliases='vim ~/.bashrc ; source ~/.bashrc'

alias ta='tmux attach-session -t'
alias tn='tmux new -s'
alias tls='tmux ls'
alias tkill='tmux kill-session -t'

alias lal='ls -glash'

function _update_ps1() {
    PS1="$(~/powerline-shell.py $? 2> /dev/null)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi
