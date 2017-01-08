"let g:ycm_rust_src_path = '/Users/NightCrawler/bin/rust/src'
"let g:ycm_python_binary_path = '/usr/local/Cellar/python/2.7.11/bin'        
let g:ycm_min_num_of_chars_for_completion = 2
let g:ycm_filetype_whitelist = {'cpp': 1, 'c': 1, 'python': 1}
let g:ycm_warning_symbol = '>>'
let g:ycm_error_symbol = 'X'
let g:ycm_key_list_select_completion = ['<TAB>', '<C-j>']
let g:ycm_key_list_previous_completion = ['<C-k>']
let g:ycm_global_ycm_extra_conf = '~/.vim/conf.d/ycm.py'

nnoremap <leader>jg :YcmCompleter GoTo<CR>
nnoremap <leader>ji :YcmCompleter GoToInclude<CR>
nnoremap <leader>jd :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>jD :YcmCompleter GoToDefinition<CR>
nnoremap <leader>t  :YcmCompleter GetType<CR>
