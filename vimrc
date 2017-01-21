set nocompatible "we are not animals

"Skip init for vim-tiny or vim-small
if 0 | endif

let maplocalleader='\\'
let mapleader=','
let g:mapleader=','

call plug#begin('~/.vim/plugged')
Plug 'flazz/vim-colorschemes'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'
Plug 'mbbill/undotree', { 'on' : 'UndotreeToggle' }
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'   
Plug 'junegunn/vim-github-dashboard'

Plug 'scrooloose/nerdtree', { 'on' : 'NERDTreeToggle' }
Plug 'Xuyuanp/nerdtree-git-plugin', { 'on' : 'NERDTreeToggle' }
Plug 'scrooloose/nerdcommenter'
Plug 'ctrlpvim/ctrlp.vim'

Plug 'tmux-plugins/vim-tmux-focus-events'
Plug 'christoomey/vim-tmux-navigator'

Plug 'sheerun/vim-polyglot'
let g:cpp_class_scope_highlight = 1
let g:cpp_experimental_template_highlight = 1
let g:scala_use_builtin_tagbar_defs = 1

function! BuildYCM(info)
  " info is a dictionary with 3 fields
  " - name:   name of the plugin
  " - status: 'installed', 'updated', or 'unchanged'
  " - force:  set on PlugInstall! or PlugUpdate!
  if a:info.status == 'installed' || a:info.force
    !./install.py --clang-completer --racer-completer
  endif
endfunction

Plug 'scrooloose/syntastic', { 'for': ['ocaml', 'scala', 'cpp', 'c', 'rust', 'python', 'sh'] }
Plug 'ocaml/merlin', { 'for': 'ocaml' }
Plug 'let-def/ocp-indent-vim', { 'for': 'ocaml' }
Plug 'ensime/ensime-vim', { 'for': 'scala' }
Plug 'Valloric/YouCompleteMe', { 'for': ['python', 'c', 'rust', 'hercules', 'sh'], 'do': function('BuildYCM') }
Plug 'majutsushi/tagbar'

call plug#end()
filetype plugin indent on
syntax on

colorscheme ir_black

runtime! conf.d/plugings/*.vim 
runtime! conf.d/general/*.vim 
