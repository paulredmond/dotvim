" Fix Delete (backspace) on Mac OS X
set backspace=2

" Vundle stuffs
set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required! 
Plugin 'gmarik/Vundle.vim'

" My Bundles here:
"
" original repos on github
Plugin 'jpo/vim-railscasts-theme'
Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'tpope/vim-rails.git'
Plugin 'tpope/vim-rake.git'
Plugin 'tpope/vim-bundler'
Plugin 'scrooloose/nerdtree'
Plugin 'airblade/vim-gitgutter'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/syntastic'
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'kchmck/vim-coffee-script'
Plugin 'joonty/vdebug.git'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'majutsushi/tagbar'
Plugin 'jiangmiao/auto-pairs'
Plugin 'kien/ctrlp.vim'

"Plugin 'ctrlp.vim'

call vundle#end()
filetype plugin indent on

" Customize
syntax on
set tabstop=4
set shiftwidth=4
set expandtab
set number
set wrap
set guifont=Bitstream\ Vera\ Sans\ Mono\ 10

" Window Shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l


" Formatting for .json
autocmd BufNewFile,BufRead *.json set ft=javascript

colorscheme railscasts

" NERDTree Settings
let NERDTreeShowHidden=1
nmap <silent> <F3> :NERDTreeToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

set laststatus=2
set encoding=utf-8
let &t_Co=256
autocmd BufWritePre *.py :%s/\s\+$//e

" vdebug
let g:vdebug_options= {
\    "port": 9001
\}

" Custom highlighting

" Thanks to http://dailyvim.tumblr.com/post/1262764095/additional-ruby-syntax-highlighting
au BufRead,BufNewFile {Capfile,Gemfile,Rakefile,Thorfile,config.ru,.caprc,.irbrc,irb_tempfile*} set ft=ruby
au BufRead,BufNewFile {.ctp} set ft=php
au BufRead,BufNewFile {*.json} set ft=javascript
