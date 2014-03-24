" reset options when resourcing local .vimrc
set nocompatible

" auto read file when changed externally
set autoread

" enable syntax highlighting
syntax on

" enable highlighted search 
set hlsearch

" case insensitive search (except while using capital letters)
set ignorecase
set smartcase

" allow backspacing over autoindent, line breaks and start of insert action
set backspace=indent,eol,start

" keep the same indent as the line you're currently on
set autoindent

" always display cursor position
set ruler

" always display status line
set laststatus=2

" display line numbers
set number

" command window height, 2 lines
set cmdheight=2

" Use spaces instead of tabs
set expandtab
set smarttab

" tab converts to 4 spaces
set shiftwidth=4
set softtabstop=4

" indicate matching brackets
set showmatch
" how long to blink matching brackets
set mat=2

colorscheme desert
set background=dark
