"
"  g3tchoo's neovim config
"

" plugins
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'

call plug#end()

" settings
colorscheme nord 
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
syntax on
filetype plugin indent on
