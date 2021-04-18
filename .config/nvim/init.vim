"
"  g3tchoo's neovim config
"

" plugins
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'a-vrma/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'nvie/vim-flake8'

call plug#end()

" settings
colorscheme nord 
let g:lightline = {
      \ 'colorscheme': 'nord',
      \ }
syntax on
filetype plugin indent on
