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
Plugin 'leafgarland/typescript-vim'
"Plugin 'Valloric/YouCompleteMe'
Plugin 'godlygeek/csapprox'
Bundle "daylerees/colour-schemes", { "rtp": "vim/"  }

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
set guifont=Hack
set visualbell   " Don't beep
set noerrorbells " Don't beep
set mouse=a
set autowrite  " Save on buffer switch
set autoindent " Always set autoindenting on
set copyindent " copy the previous indentation on autoindenting
set ignorecase " ignore case when searching
set smartcase  " ignore case if search pattern is all lowercase

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
"let g:mapleader = ","

" fast saves
nmap <leader>w :w!<cr>

" Down is really the next line
nnoremap j gj
nnoremap k gk

" Easy escaping to normal model
imap jj <esc>

" Easy window navigation
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Window Shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Laravel common framework files
nmap <leader>lr :e app/Http/routes.php<cr>
nmap <leader>lca :e config/app.php<cr>81Gf(%0
nmap <leader>lcd :e config/database.php<cr>
nmap <leader>lc :e composer.json<cr>

" Formatting for .json
autocmd BufNewFile,BufRead *.json set ft=javascript

colorscheme railscasts

" VIM Airline config
let g:airline_powerline_fonts = 1
let g:airline_theme='wombat'

" NERDTree Settings
let NERDTreeShowHidden=1
nmap <silent> <F3> :NERDTreeToggle<CR>

" TagBar
nmap <F8> :TagbarToggle<CR>

set laststatus=2
set encoding=utf-8
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
