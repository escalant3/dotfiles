"Python options
set background=light
set expandtab
set tabstop=8
set softtabstop=4
set shiftwidth=4
set autoindent
set number
:syntax on

"ipdb
autocmd FileType python map U iimport ipdb;ipdb.set_trace()<CR> 

"Latex
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'
