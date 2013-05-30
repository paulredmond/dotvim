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

" Customize
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
 
colorscheme railscasts
map <F10> :NERDTreeToggle<CR>      " Key to open NERDTree in commands mode
imap <F10> <Esc>:NERDTreeToggle<CR>    " Key to open NERDTree in insert mode
