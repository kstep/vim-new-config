imap ,, <Esc>

map <C-w><C-]> <C-w><C-]><C-w>T
map vA ggVG
map Y y$
map <Leader>p :exec 'tabedit '.getreg('*')<CR>

map <ScrollWheelLeft> gT
map <ScrollWheelRight> gt

imap <ScrollWheelLeft> <Esc>gTi
imap <ScrollWheelRight> <Esc>gti

imap <S-Insert> <C-R>=getreg('*')<CR>

map <C-A-a> ciw<C-R>=getreg('')*2<CR><Esc>
map <C-A-x> ciw<C-R>=getreg('')/2<CR><Esc>
map <A-a> @="yyp"<CR>

map <C-q> :quit<CR>
map <F8> :Unite tab<CR>
map <F9> :Unite -buffer-name=tag -resume tag<CR>
map <F10> :Unite qf<CR>
map <F11> :Unite -buffer-name=file_mru -resume file_mru<CR>
map <F12> :Unite -buffer-name=file_res -resume file_rec<CR>

map gb :Unite tab<CR>

vmap ,aa :Align =><CR>
vmap ,a= :Align =<CR>

map ,tt :VimuxRunLastCommand<CR>
map ,tr :VimuxPromptCommand<CR>
map g+ :execute 'tabedit' getreg('+')<CR>

nmap ,fc :if stridx(&syntax,'.conflict')<0<Bar>setl syntax+=.conflict<Bar>endif<CR>:vimgrep "^<<<<<<<" %:p<CR>:copen<CR><CR>

"imap <C-\> <C-^>
"cmap <C-\> <C-^>
"smap <C-\> <C-^>
"nmap <C-\> a<C-^><Esc>

cabbr W w
cabbr Q q
cabbr Wq wq
cabbr WQ wq
cabbr Tabe tabe

command! WW silent! write !sudo tee %:p > /dev/null
