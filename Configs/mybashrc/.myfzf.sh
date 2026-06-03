# determines search program for fzf
if type ag &> /dev/null; then
    export FZF_DEFAULT_COMMAND='ag -p ~/.gitignore -g ""'
fi
#refer rg over ag
if type rg &> /dev/null; then
    export FZF_DEFAULT_COMMAND='rg --files --hidden'
fi

if [ -n "$FZF_DEFAULT_COMMAND" ]; then
    export FZF_CTRL_T_COMMAND="$FZF_DEFAULT_COMMAND"
fi

_fzf_compgen_path() {
    if type fd &> /dev/null; then
        fd --hidden --follow --exclude ".git" --exclude ".cache" . "$1"
    else
        echo "$1"
        command find -L "$1" \
            -name .git -prune -o -name .hg -prune -o -name .svn -prune -o -name .cache -prune -o \( -type d -o -type f -o -type l \) \
            -a -not -path "$1" -print 2> /dev/null | command sed 's@^\./@@'
    fi
}

_fzf_compgen_dir() {
    if type fd &> /dev/null; then
        fd --type d --hidden --follow --exclude ".git" --exclude ".cache" . "$1"
    else
        command find -L "$1" \
            -name .git -prune -o -name .hg -prune -o -name .svn -prune -o -name .cache -prune -o -type d \
            -a -not -path "$1" -print 2> /dev/null | command sed 's@^\./@@'
    fi
}

# gco has been defined as an alias by OMZ
unalias gco
gco() {
  _fzf_git_each_ref --no-multi | xargs git checkout
}

gswt() {
  cd "$(_fzf_git_worktrees --no-multi)"
}
