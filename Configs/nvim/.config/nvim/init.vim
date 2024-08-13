set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc

lua << EOF
require'cscope_maps_config'
EOF
