"hybrid Number Plugin activate:
set relativenumber
set number

"Neuer Tagbar Type:
let g:tagbar_type_delphi = {
      \ 'ctagstype' : 'delphi',
      \ 'kinds'     : [
      \ 't:Type',
      \ 'c:Class',
      \ 'n:Constructor',
      \ 'd:Destructor',
      \ 'm:Method',
      \ 'f:Function',
      \ 'p:Procedure',
      \ 's:Section',
      \ ],
      \ }

compiler dcc32

syntax enable

"Damit das Windows Clipboard genutzt wird:
set clipboard=unnamed

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

