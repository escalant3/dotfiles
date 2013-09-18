set background=dark
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
autocmd Filetype html setlocal ts=2 sts=2 sw=2
autocmd Filetype php setlocal ts=4 sts=4 sw=4 noexpandtab
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2

"Delete trailing whitespaces
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType c,cpp,java,php,ruby,python,javascript,html autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

set hlsearch
