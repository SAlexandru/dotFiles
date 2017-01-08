noremap <silent> <leader>n :NERDTreeToggle<CR>
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

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

