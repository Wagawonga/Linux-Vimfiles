"hybrid Number Plugin activate:
set relativenumber
set number

compiler dcc32

syntax enable

colorscheme sahara
set background=dark

"My preferences
set shiftwidth=4
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start

set nowritebackup
set nobackup
set noswapfile

syntax enable
set laststatus=2

"Strictly necessary for Powerline
set encoding=utf-8
"Set to whatever font you like.
set guifont=Inconsolata\ for\ Powerline:h12

python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
