alias tmux="/$HOME/.local/bin/tmux -f $HOME/GitRepository/dotfiles/.tmux.conf"
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
