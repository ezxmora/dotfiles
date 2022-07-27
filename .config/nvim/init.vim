call plug#begin(has('nvim') ? stdpath('data') . '/plugged' : '~/.config/nvim/pluggins')

" Plugin List

Plug 'dylanaraps/wal.vim'
Plug 'kovetskiy/sxhkd-vim'
Plug 'fladson/vim-kitty'

call plug#end()

set nocompatible
set showmatch
set ignorecase
set mouse=v
set softtabstop=4
set tabstop=4
set shiftwidth=4
set expandtab
set fileformat=unix
set autoindent
set cc=100
set nu
filetype plugin indent on
syntax on
set ttyfast
