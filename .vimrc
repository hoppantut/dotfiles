" reset options when resourcing local .vimrc
set nocompatible

" hide buffer on change
set hidden
set history=100

" Set early so parts can be overwritten later
colorscheme desert
set background=dark

" auto read file when changed externally
set autoread

" enable syntax highlighting
syntax on

" Color code columns (annoying, maybe?)
hi ColorColumn ctermbg=black
let &colorcolumn="90,".join(range(120,999),",")

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
set cursorline
hi CursorLine     cterm=bold
hi LineNr         ctermfg=black
hi CursorLineNr   cterm=bold ctermfg=gray

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
set mat=2 "how long matching brackets blink

" attempt to identify filetype and indentation
filetype on
filetype plugin on
filetype indent on

" Always show the status line
set laststatus=2

" Format the status line
set statusline=\ %F%m%r%h\ %w\ \ %h\ %=%P\ %l:%L,%c

"Set paste always on by default
set paste
