"------------------------------------------------------
"-----------------KEY REMAPS---------------------------
"------------------------------------------------------

"Leader auf space gesetzt.
map <space> <Leader>
"Fuer Easymotion
nmap <space><space> <Leader><Leader>

"Remap: damit linkt in der Hilfe benutzt werden können:
nmap <Leader>r <C-]>

"Neue Zeile
"nmap öj m`o<Esc>``
"nmap ök m`O<Esc>``

"Zeile löschen
"nmap äj m`j"_dd``
"nmap äk m`k"_dd``

"besser erreichbare Eckige klammern:
nmap ö [
nmap ä ]

"Schnelles wechseln von Buffern:
nmap <Leader>ö :bprevious<CR>
nmap <Leader>ä :bnext<CR>

"Remaps für Yankstrack
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste

"Damit Y bis end yanked
map Y y$

"remap fuer C
" map <F9> :w<CR>:!clear&&gcc % -o %< && ./%<<CR>
" Remap für Haskel
" map <F9> :w<CR>:!%<CR>
autocmd FileType haskell nnoremap <F9> :w<CR>:!%<CR>

"Damit Ctrl-L auch Searchhighlight löscht
nnoremap <silent> <C-l> :<C-u>nohlsearch<CR><C-l>

" Hier extra fuer Python. Spaeter Fallunterscheidung einfuegen:
" Tmux F2 umwandeln
map [12~ <F2>
map <F2> :w\|!clear; ~/bin/toPi.sh <CR>

" um Konflikt mit mark Plugin zu behben
nmap <Leader>mr <Plug>MarkRegex

"------------------------------------------------------
