set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent

set guicursor=
set nu rnu
set nohlsearch
set hidden
set nowrap
set noswapfile
set nobackup
set incsearch
set scrolloff=8
set signcolumn=yes
set colorcolumn=80
set termguicolors

set updatetime=50

set clipboard=unnamedplus

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'neovim/nvim-lspconfig'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

highlight LineNr guifg=#5eacd3


let mapleader = " "
nnoremap <leader>e :Lex<CR>
nnoremap <leader>s :Sex<CR>
nnoremap <leader>v :Vex<CR>

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END

lua << EOF
require'lspconfig'.pyright.setup{}
EOF
