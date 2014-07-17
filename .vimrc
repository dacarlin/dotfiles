" basic stuff from the web
set nocompatible
set autoindent 
set backspace=indent,eol,start

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
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

map <silent> <Leader>][ :!python3 %<CR>
map <silent> <Leader>s :!open -a Safari %<CR><CR>
setlocal spelllang=en_us
set linebreak 
map SS :w<CR>
map Q :q!<CR> 
command Prose set fo+=t1 | set tw=75 | set spell 
