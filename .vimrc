set background=dark
colorscheme jellybeans
set autoindent
set number
set expandtab
:syntax on

"Python options
"ipdb
autocmd FileType python map U iimport ipdb;ipdb.set_trace()<CR> 
autocmd FileType python set softtabstop=4 
autocmd FileType python set shiftwidth=4 
autocmd FileType python set expandtab 

"Latex
filetype plugin on
set grepprg=grep\ -nH\ $*
filetype indent on
let g:tex_flavor='latex'

"Map CtrlPBufTag
map <c-m> :CtrlPBufTag<CR>

"Whitespacing conf
set smartindent
set tabstop=4
set shiftwidth=4
set expandtab

autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype ruby setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype c setlocal ts=2 sts=2 sw=2
autocmd Filetype cpp setlocal ts=2 sts=2 sw=2

"Delete trailing whitespaces
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,javascript,html autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

"Handleabars syntax
au BufRead,BufNewFile *.handlebars,*.hbs set ft=html syntax=handlebars

set hlsearch

"Disable bells
set noerrorbells
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=

"Leader Mappings
let mapleader = "-"
"Source .vimrc
nnoremap <leader>sv :source $MYVIMRC<cr>
"Open NERDTree
nnoremap <leader>nt :NERDTree<cr>
"Hide search hightlighting
nnoremap <leader>nh  :noh<cr>
"Close Window
nnoremap <leader>q  :q<cr>
