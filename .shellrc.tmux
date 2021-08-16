TMUX_BIN=${TMUX_BIN:=$(which tmux)}
DOTFILES=${DOTFILES:?"Set DOTFILES"}

alias tmux="${TMUX_BIN} -f ${DOTFILES}/.tmux.conf"
alias tls="tmux list-session"
alias tkill="tmux kill-session -t "
alias trename="tmux rename-session -t "
alias tdrop="tmux kill-server"

tnew ()
{
    if [ $# -ge 1 ] ; then
        tmux new -s "$1"
    else
        tmux new
    fi
}

tich ()
{
    if [ $# -ge 1 ] ; then
        tmux attach -t "$1"
    else
        tmux attach
    fi
}

tlayout ()
{
    tmux new -s emacs -n startup -d
    tmux new -s workspace \; split-window -c $HOME \; split-window -h -c $HOME \; select-pane -t 0
}
