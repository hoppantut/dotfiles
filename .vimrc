" Put plugins and dictionaries in this dir (also on Windows)
let vimDir = '$HOME/.vim'
let &runtimepath.=','.vimDir

" reset options when resourcing local .vimrc
set nocompatible

let mapleader=" "
map <leader>s :source ~/.vimrc<CR>
map <leader>e :Rexplore<CR>
map <leader>j :call PpJson()<CR>
map <leader>x :call PpXml()<CR>

" :E remapped to :Re[xplore]
command E Re

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
let &colorcolumn="120"

" enable highlighted search 
set hlsearch
nnoremap <silent><esc> :noh<CR>
nnoremap <esc>^[ <esc>^[

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
hi CursorLine     cterm=bold ctermbg=black
hi LineNr         ctermfg=black
hi CursorLineNr   cterm=bold ctermfg=gray

" command window height, 2 lines
set cmdheight=2

" Use spaces instead of tabs
set tabstop=4 softtabstop=0 expandtab shiftwidth=4 smarttab

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

if has('persistent_undo')
    let &undodir = expand(vimDir . '/undo')
    call system('mkdir -p ' . &undodir)
    set undolevels=5000
    set undofile
endif

" Centralized swap-files
let &directory = expand(vimDir . '/swp//' )
call system('mkdir -p ' . &directory)

" JSON pretty print
function! PpJson()
  :%! jq "."
  if v:shell_error
    :normal u
  endif
  set syntax=json
endfunction

" XML pretty print
function! PpXml()
  :%! xmllint --format --recover -
  if v:shell_error
    :normal u
  endif
  set syntax=xml
endfunction
