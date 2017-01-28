" Plugins
" -------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
call vundle#begin('$USERPROFILE/vimfiles/bundle/')
    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('$USERPROFILE/vimfiles/bundle/')
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    "Vundle Pluginpart
    source $USERPROFILE/dotfiles/_vimplugins.vim
    " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" -------------------------------------------------------

"Remaps
source $USERPROFILE/dotfiles/_remaps.vim

"Rest der vimrc:
source $USERPROFILE/dotfiles/_vimgeneral.vim
