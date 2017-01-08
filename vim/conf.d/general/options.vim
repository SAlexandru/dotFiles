set encoding=utf-8
set shell=bash

set number
set relativenumber
set ruler
set noshowmode

set ttyfast

set autochdir
" Searching
set magic
set ignorecase " case insensitive searching
set smartcase " case-sensitive if expresson contains a capital letter
set hlsearch
set incsearch " set incremental search, like modern browsers
set nolazyredraw " don't redraw while executing macros

set completeopt=menu,longest "directly complete if there is only one element

set clipboard=unnamed

set so=7 " set 7 lines to the cursors - when moving vertical
set wildmenu " enhanced command line completion
set wildmode=list:longest " complete files like a shell
set scrolloff=3 " lines of text around cursor

set cursorline
set noerrorbells
set novisualbell
set vb t_vb= 
set tm=500

set nowrap
set expandtab
set smarttab
set shiftwidth=4

set autoindent
set cindent

set hidden
set autoread " detected when a file is changed

set t_Co=256
set colorcolumn=81

set laststatus=2
set showtabline=2

set bg=dark

set wildignore+=*/tmp/*,*.so,*.swp,*.zip


set foldlevel=1
set foldlevelstart=99
