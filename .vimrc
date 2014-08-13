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
"filetype plugin indent on " no longer works, why?

" my indent preferences 
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smartindent

" search smarter 
set incsearch
set ignorecase
set smartcase

"keep stuff clean
set backupdir=~/.vim/tmp,.
set directory=~/.vim/tmp,.

map <silent> <Leader>3 :!python3 %<CR>
map <silent> <Leader>s :!open -a Safari %<CR><CR>

command Prose set fo+=t1 | set tw=75 | set spell | set linebreak 
setlocal spelllang=en_us

map SS :w<CR>
map S l
map Q :q!<CR> 
