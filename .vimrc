" basic stuff from the web
set nocompatible
set autoindent 

" visual goodies
set ruler
set showcmd
set number
set showmode
syntax on
filetype plugin indent on

" my indent preferences 
set expandtab
set tabstop=2
set shiftwidth=2

" search smarter 
set incsearch
set ignorecase
set smartcase

"keep stuff clean
set noswapfile
set nobackup
set nowb

" Quick PDF preview of a LaTex document 
map <silent> <Leader>pdf :!pdflatex %; open -a Preview %:r.pdf<CR><CR>

" Run the current file through python3 
map <silent> <Leader>][ :!python3 %<CR>

" HTML preview in Safari 
map <silent> <Leader>s :!open -a Safari %<CR><CR>

" Spellcheck (awesome)
" setlocal spell spelllang=en_us

" Break lines at word boundries 
set linebreak 

" Save with double tape of Shift-s
map SS :w<CR>

map Q :q!<CR> 
