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

call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'

call plug#end()

colorscheme gruvbox
highlight Normal guibg=none

highlight LineNr guifg=#5eacd3


let mapleader = " "

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup THE_PRIMEAGEN
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
augroup END
