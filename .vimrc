"Python options
set background=dark
set expandtab
set tabstop=8
set softtabstop=2
set shiftwidth=2
set autoindent
set number
:syntax on

"ipdb
autocmd FileType python map U iimport ipdb;ipdb.set_trace()<CR> 
autocmd FileType python set softtabstop=4 
autocmd FileType python set shiftwidth=4 

"Latex
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

"Map CtrlPBufTag
map <c-m> :CtrlPBufTag<CR>
