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

autocmd QuickFixCmdPost *grep* cwindow
