" Plugins
" -------------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required
" set the runtime path to include Vundle and initialize

"Windows
if has('win32')
	set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
	call vundle#begin('$HOME/vimfiles/bundle/')
endif

"Linux
if has('unix')
    if isdirectory($HOME . '/.vim/bundle/')
        set rtp+=~/.vim/bundle/Vundle.vim
        call vundle#begin()
    elseif isdirectory($HOME . '/vimfiles/bundle')
        set rtp+=$HOME/vimfiles/bundle/Vundle.vim/
        call vundle#begin('$HOME/vimfiles/bundle/')
    endif
endif

    " alternatively, pass a path where Vundle should install plugins
    "call vundle#begin('$USERPROFILE/vimfiles/bundle/')
    " let Vundle manage Vundle, required
    Plugin 'VundleVim/Vundle.vim'
    "Vundle Pluginpart
    source ~/dotfiles/_vimplugins.vim " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
" -------------------------------------------------------

"Remaps
source ~/dotfiles/_remaps.vim

"Rest der vimrc:
source ~/dotfiles/_vimgeneral.vim
