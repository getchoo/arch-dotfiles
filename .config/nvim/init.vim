"
"  g3tchoo's neovim config
"

" plugins
call plug#begin()

Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'a-vrma/black-nvim', {'do': ':UpdateRemotePlugins'}
Plug 'nvie/vim-flake8'

call plug#end()

" settings
colorscheme dracula 
let g:lightline = {
      \ 'colorscheme': 'Dracula',
      \ }
syntax on
filetype plugin indent on
