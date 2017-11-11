syntax enable

"My preferences
set shiftwidth=4
set autoindent
set expandtab
set tabstop=4
set softtabstop=4
set backspace=indent,eol,start
"set clipboard=unnamed

set nowritebackup
set nobackup
set noswapfile

syntax enable
set laststatus=2


"Strictly necessary for Powerline
set encoding=utf-8
"Set to whatever font you like.
set guifont=Inconsolata\ for\ Powerline:h12

"für Tagbar muss die Filetype detecton an sein:
filetype on

"Fenstergröße Erinnern:
if has("gui_running")
  function! ScreenFilename()
    if has('amiga')
      return "s:.vimsize"
    elseif has('win32')
      return $HOME.'\_vimsize'
    else
      return $HOME.'/.vimsize'
    endif
  endfunction

  function! ScreenRestore()
    " Restore window size (columns and lines) and position
    " from values stored in vimsize file.
    " Must set font first so columns and lines are based on font size.
    let f = ScreenFilename()
    if has("gui_running") && g:screen_size_restore_pos && filereadable(f)
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      for line in readfile(f)
        let sizepos = split(line)
        if len(sizepos) == 5 && sizepos[0] == vim_instance
          silent! execute "set columns=".sizepos[1]." lines=".sizepos[2]
          silent! execute "winpos ".sizepos[3]." ".sizepos[4]
          return
        endif
      endfor
    endif
  endfunction

  function! ScreenSave()
    " Save window size and position.
    if has("gui_running") && g:screen_size_restore_pos
      let vim_instance = (g:screen_size_by_vim_instance==1?(v:servername):'GVIM')
      let data = vim_instance . ' ' . &columns . ' ' . &lines . ' ' .
            \ (getwinposx()<0?0:getwinposx()) . ' ' .
            \ (getwinposy()<0?0:getwinposy())
      let f = ScreenFilename()
      if filereadable(f)
        let lines = readfile(f)
        call filter(lines, "v:val !~ '^" . vim_instance . "\\>'")
        call add(lines, data)
      else
        let lines = [data]
      endif
      call writefile(lines, f)
    endif
  endfunction

  if !exists('g:screen_size_restore_pos')
    let g:screen_size_restore_pos = 1
  endif
  if !exists('g:screen_size_by_vim_instance')
    let g:screen_size_by_vim_instance = 1
  endif
  autocmd VimEnter * if g:screen_size_restore_pos == 1 | call ScreenRestore() | endif
  autocmd VimLeavePre * if g:screen_size_restore_pos == 1 | call ScreenSave() | endif
endif

"Tagbar auf der linkes seite:
let g:tagbar_left = 1

"Index Limit für CtrlP
let g:ctrlp_max_files = 10000
"Auch in Buffern und mru suchen:
let g:ctrlp_cmd = 'CtrlPMixed'
"Caching angeschaltet aber nicht automatisch updated.
"Mit F5 kann händisch gecascht werden:
"Dafür wird der cache der letzten session beibehalten:
let g:ctrlp_use_caching = 1
let g:ctrlp_clear_cache_on_exit = 0


"Buffer werden versteckt bei
set hidden

"Path erweiterung für find:
set path+=~\dotfiles\**
set path+=~\*

"hervorheben von Suchergebnissen:
set hlsearch
"Farbe von Suchergebnissen Rot für bessere Sichtbarkeit:
hi Search guibg=Red

"Anzeigen des Suchmatches während der Eingabe
set incsearch

"Fuer Arduino Files
autocmd! BufNewFile,BufRead *.ino setlocal ft=arduino

"hybrid Number Plugin activate:
set relativenumber
set number

set runtimepath^=~/.vim/bundle/ctrlp.vim
   
"Default
colorscheme 0x7A69_dark
"Wenn mehr Farben unterstützt werden:
if !match($TERM,"xterm") 
\  || ( has("gui_running") && has("win32") )
"  || !match($TERM,"cygwin") 
    colorscheme onedark 
"    highlight Normal guibg=black
"    highlight Normal ctermbg=black
endif

"Schöneres Javascript:
set guifont=DejaVu_Sans_Mono:h8:cANSI:qDRAFT

" Syntastic setup
let g:syntastic_javascript_checkers = ['jshint']
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

set makeprg=gcc\ -o\ %<\ %

"Autmoatisches Anpassen von CMV's
"let g:csv_autocmd_arrange = 1

" ; als Trennung fuer CSV
let g:csv_delim=';'

set clipboard=unnamed
set nofoldenable " Disable Folding when openening a file. Toggle with normalmode command zi
