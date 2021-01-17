"
"  g3tchoo's neovim config
"

" plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'preservim/nerdtree'
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

" settings
colorscheme dracula 
syntax on
filetype plugin indent on
