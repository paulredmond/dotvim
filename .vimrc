" Vundle stuffs
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:
"
" original repos on github
Bundle 'jpo/vim-railscasts-theme'
Bundle 'tpope/vim-fugitive'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'tpope/vim-rails.git'
Bundle 'tpope/vim-rake.git'
Bundle 'scrooloose/nerdtree'
Bundle 'airblade/vim-gitgutter'
Bundle 'mileszs/ack.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'

" Customize
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set number

colorscheme railscasts

" NERDTree Settings
let NERDTreeShowHidden=1
nmap <silent> <F3> :NERDTreeToggle<CR>

set laststatus=2
set encoding=utf-8
autocmd BufWritePre *.py :%s/\s\+$//e
