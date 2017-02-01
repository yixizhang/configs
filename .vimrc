" prettier format
autocmd FileType python nnoremap <LocalLeader>= :0,$!yapf<CR>
autocmd FileType python nnoremap <LocalLeader>i :!isort %<CR><CR>
autocmd FileType javascript set formatprg=prettier\ --stdin
autocmd BufWritePre *.js :normal gggqG

" unfold by default
set foldlevel=99

" supertab configs
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabContextDefaultCompletionType = "<c-n>"

" syntax
filetype plugin indent on

" plugins
call plug#begin('~/.vim/plugged')
" Asynchronous Lint Engine
Plug 'w0rp/ale'
" autocompletion
Plug 'davidhalter/jedi-vim'
" supertab
Plug 'ervandew/supertab'
" python-mode
Plug 'python-mode/python-mode'
call plug#end()

