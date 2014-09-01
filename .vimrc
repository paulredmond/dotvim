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
Bundle 'tpope/vim-bundler'
Bundle 'scrooloose/nerdtree'
Bundle 'airblade/vim-gitgutter'
Bundle 'mileszs/ack.vim'
Bundle 'bling/vim-airline'
Bundle 'scrooloose/syntastic'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'joonty/vdebug.git'
Bundle 'editorconfig/editorconfig-vim'

" Customize
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set wrap

" Formatting for .json
autocmd BufNewFile,BufRead *.json set ft=javascript

colorscheme railscasts

" NERDTree Settings
let NERDTreeShowHidden=1
nmap <silent> <F3> :NERDTreeToggle<CR>

set laststatus=2
set encoding=utf-8
let &t_Co=256
autocmd BufWritePre *.py :%s/\s\+$//e

" vdebug
let g:vdebug_options= {
\    "port": 9001
\}
