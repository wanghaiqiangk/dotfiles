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
    local uos_proj="/home/wang/uisee/uos"
    local can_proj="/home/wang/uisee/can_data_analysis"

    # background session for daemons
    tmux -2 new-session -d -s "background" -n "bg-0" -c "$HOME"

    # main workspace session for working
    tmux -2 new-session -d -s "workspace" -n "uos" -c "$uos_proj"
    tmux split-window -h -d -c "$uos_proj"
    tmux new-window -n "can" -c "$can_proj"
    tmux split-window -h -d -c "$can_proj"
    tmux new-window -n "playground" -c "$HOME"

    # attach to our main session
    tmux -2 attach-session -t workspace:0.0
}
