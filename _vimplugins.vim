set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('$USERPROFILE/vimfiles/bundle/')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" More options on surroundings
Plugin 'tpope/vim-surround'

" dot Repeat for some Plugins
Plugin 'tpope/vim-repeat'

" Tabellenartige anordungen für Einträge
Plugin 'godlygeek/tabular'

" Show git difft at side
Plugin 'airblade/vim-gitgutter'

" Einfacher Kommentieren
Plugin 'scrooloose/nerdcommenter'

" Syntaxfehler Highlighter
" Plugin 'scrooloose/syntastic'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Relative und absolute Zeilenanzeige.
Plugin 'https://github.com/jeffkreeftmeijer/vim-numbertoggle.git'

" Verbessertes Springen an bestimmte Position:
Plugin 'https://github.com/easymotion/vim-easymotion.git'

" Baumansicht der Klassenstruktur:
Plugin 'https://github.com/majutsushi/tagbar.git'

" Vim-Powerline (Statusleiste Unten)
Plugin 'https://github.com/Lokaltog/vim-powerline.git'

" Tab Completion für Python
"Plugin 'https://github.com/davidhalter/jedi-vim'

" Table mode für Vim
Plugin 'https://github.com/dhruvasagar/vim-table-mode' 

" Schoeneres C++ Highliting
Plugin 'octol/vim-cpp-enhanced-highlight'

" Colorsheme
Plugin 'https://github.com/altercation/vim-colors-solarized.git'

" CntlP Fuzzy Search
Plugin 'https://github.com/ctrlpvim/ctrlp.vim.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
