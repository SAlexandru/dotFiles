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
