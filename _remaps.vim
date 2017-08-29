"------------------------------------------------------
"-----------------KEY REMAPS---------------------------
"------------------------------------------------------

"Leader auf space gesetzt.
nmap <space> <Leader>
"Fuer Easymotion
nmap <space><space> <Leader><Leader>

"Remap: damit linkt in der Hilfe benutzt werden können:
nmap <Leader>r <C-]>

"Neue Zeile
nmap öj m`o<Esc>``
nmap ök m`O<Esc>``

"Zeile löschen
nmap äj m`j"_dd``
nmap äk m`k"_dd``

"Remaps für Yankstrack
nmap <leader>p <Plug>yankstack_substitute_older_paste
nmap <leader>P <Plug>yankstack_substitute_newer_paste
    

"remap fuer C
map <F9> :w<CR>:!clear&&gcc % -o %< && ./%<<CR>
"------------------------------------------------------
