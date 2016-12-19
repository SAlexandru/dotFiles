set nocompatible "we are not animals
'
"Skip init for vim-tiny or vim-small
 if 0 | endif

colorscheme ir_black

let maplocalleader='\\'
let mapleader=','
let g:mapleader=','



""""""""""""""""""""""""""""
"     =>  Plugins          "
"                          "
""""""""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()

    Plugin 'gmarik/Vundle.vim'
    Plugin 'tpope/vim-fugitive'
    Plugin 'airblade/vim-gitgutter'
    autocmd QuickFixCmdPost *grep* cwindow
    

    Plugin 'scrooloose/nerdcommenter'


   " A tree explorer plugin for vim.
    Plugin 'scrooloose/nerdtree' 
    Plugin 'Xuyuanp/nerdtree-git-plugin'
    Plugin 'jistr/vim-nerdtree-tabs'
    noremap <silent> <leader>n :NERDTreeTabsToggle<CR>
    let NERDTreeShowBookmarks               = 1
    let NERDTreeIgnore                      =
        \ ['\.pyc', '\~$', '\.swo$', '\.git', '\.hg', '\.svn', '\.bzr','\.DS_Store']
    let NERDTreeShowHidden                  = 1
    let NERDTreeChDirMode                   = 2
    let NERDTreeMouseMode                   = 2
    let g:nerdtree_tabs_open_on_gui_startup = '1'
    let g:NERDTreeShowGitStatus = 1
    let g:NERDTreeChDirMode=2
    let NERDTreeChDirMode=2

    Plugin 'bling/vim-airline'
    Plugin 'vim-airline/vim-airline-themes'
    let g:airline#extensions#tabline#enabled = 1
    let g:airline_powerline_fonts = 1
    let g:airline_theme             = 'powerlineish'
    let g:airline_detect_paste      = 1
    let g:airline#extensions#branch#enabled     = 1
    let g:airline#extensions#syntastic#enabled  = 1

    if !exists('g:airline_symbols')
         let g:airline_symbols = {}
    endif

    " unicode symbols
    let g:airline_left_sep = '»'
    let g:airline_left_sep = '▶'
    let g:airline_right_sep = '«'
    let g:airline_right_sep = '◀'
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.linenr = '␤'
    let g:airline_symbols.linenr = '¶'
    let g:airline_symbols.branch = '⎇'
    let g:airline_symbols.paste = 'ρ'
    let g:airline_symbols.paste = 'Þ'
    let g:airline_symbols.paste = '∥'
    let g:airline_symbols.whitespace = 'Ξ'

    Plugin 'kien/ctrlp.vim'
    let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn|.*)$'
    let g:ctrlp_map = '<leader>p'

    "Plugin 'kovisoft/slimv'
    "Plugin 'ensime/ensime-vim'
    "Plugin 'derekwyatt/vim-scala'

    "Plugin 'lervag/vimtex'
    Plugin 'LaTeX-Box-Team/LaTeX-Box'

    Plugin 'xuhdev/vim-latex-live-preview'

    "Call the :YcmDiags command to see if any errors or warnings were detected
    ":YcmRestartServer, YcmForceCompileAndDiagnostics 
    "if the error can be fixed: :YcmCompleter FixIt
    Plugin 'Valloric/YouCompleteMe'
    let g:ycm_rust_src_path = '/Users/NightCrawler/bin/rust/src'
    let g:ycm_python_binary_path = '/usr/local/Cellar/python/2.7.11/bin'        
    let g:ycm_min_num_of_chars_for_completion = 2
    let g:ycm_filetype_whitelist = {'cpp': 1, 'c': 1, 'python': 1}
    let g:ycm_warning_symbol = '>>'
    let g:ycm_error_symbol = 'X'
    let g:ycm_key_list_select_completion = ['<TAB>', '<C-j>']
    let g:ycm_key_list_previous_completion = ['<C-k>']
    let g:ycm_global_ycm_extra_conf = '~/.vim/conf/ycm.py'
    
    nnoremap <leader>jg :YcmCompleter GoTo<CR>
    nnoremap <leader>ji :YcmCompleter GoToInclude<CR>
    nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
    nnoremap <leader>jD :YcmCompleter GoToDefinition<CR>
    nnoremap <leader>t  :YcmCompleter GetType<CR>

    Plugin 'sheerun/vim-polyglot'
    let g:cpp_class_scope_highlight = 1
    let g:cpp_experimental_template_highlight = 1
    let g:scala_use_builtin_tagbar_defs = 1


    

call vundle#end()

filetype plugin indent on
syntax on

""""""""""""""""""""""""""""
"     =>  Options          "
"                          "
""""""""""""""""""""""""""""
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
set smartindent

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

""""""""""""""""""""""""""""
"     =>  Mappings         "
"                          "
""""""""""""""""""""""""""""
" don't know to use Q 
noremap Q <Nop>

nnoremap <F2> :set paste!<cr>

"top this atrocities
nnoremap <up> <Nop>
nnoremap <down> <Nop>
nnoremap <left> <Nop>
nnoremap <right> <Nop>
inoremap <up> <Nop>
inoremap <down> <Nop>
inoremap <left> <Nop>
inoremap <right> <Nop>

" Fast config editing and loading
nnoremap <silent> <leader>ev :vsplit ~/.vimrc<cr>                " edit vimrc
nnoremap <silent> <leader>evg :vsplit ~/.gitconfig<cr>           " edit gitconfig file 
nnoremap <silent> <leader>esh :vsplit ~/.bashrc<cr>
nnoremap <silent> <leader>sv :source ~/.vimrc<cr>

inoremap jk <esc>
inoremap <esc> <Nop>

" remapping the movement keys
nnoremap j gj
nnoremap k gk
nnoremap ^ g^
nnoremap $ g$
nnoremap H 0
nnoremap L $
nnoremap 0 <Nop>
nnoremap <c-e> 3<c-e>
nnoremap <c-a> 3<c-y>
nnoremap <c-y> <Nop>

nnoremap <leader>vs :vsplit<cr>
nnoremap <leader>hs :hsplit<cr>

nnoremap <space> za
nnoremap - ddp   " move line down
nnoremap _ ddkP  " move line up

"to uppercase
inoremap <c-u> <esc>viwUi  
nnoremap <c-u> viwU

"easier split movment commands
nnoremap <c-k> <c-w>k
nnoremap <c-j> <c-w>j
nnoremap <c-l> <c-w>l
nnoremap <c-h> <c-w>h
" add quotes
"
"
nnoremap <leader>' viw<esc>a'<esc>hbi'<esc>
nnoremap <leader>" viw<esc>a"<esc>hbi"<esc>


nnoremap <leader>% :MtaJumpToOtherTag<cr>



"""""""""""""""""""""""""""""""""""
"         => Autocmds             "
"""""""""""""""""""""""""""""""""""
autocmd FileType lua,go,c,cpp setlocal foldmethod=syntax
autocmd FileType python       setlocal foldmethod=indent
autocmd FileType vim          setlocal foldmethod=marker

" follow symlinked file
function! FollowSymlink()
  let current_file = expand('%:p')
  " check if file type is a symlink
  if getftype(current_file) == 'link'
  " if it is a symlink resolve to the actual file path
  "   and open the actual file
     let actual_file = resolve(current_file)
     silent! execute 'file ' . actual_file
  end
endfunction


" follow symlink and set working directory
autocmd BufRead * call FollowSymlink()
