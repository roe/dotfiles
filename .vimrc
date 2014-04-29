execute pathogen#infect()
filetype plugin indent on

"color settings
syntax enable
set number
set background=dark
set t_Co=256
set encoding=utf-8

"editor settings
set nowrap 
set expandtab
set tabstop=2  
set shiftwidth=2
set textwidth=80

"startup NERDTree when vim is opened
autocmd vimenter * NERDTree

"quit vim and quit nerdtree at the same time
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"start the cursor in the window and not nerdtree
autocmd VimEnter * wincmd p

"golang specifics
filetype off
filetype plugin indent off
set runtimepath+=$GOROOT/misc/vim
filetype plugin indent on
syntax on

"powerline setup
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup

"powerline options
set guifont=Inconsolata\ for\ Powerline:h15
let g:Powerline_symbols = 'fancy'
set laststatus=2
