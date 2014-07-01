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
map <F11> :Unite file_mru<CR>

vmap ,aa :Align =><CR>
vmap ,a= :Align =<CR>

nmap ,fc :if stridx(&syntax,'.conflict')<0<Bar>setl syntax+=.conflict<Bar>endif<CR>:vimgrep "^<<<<<<<" %:p<CR>:copen<CR><CR>

imap <C-\> <C-^>
cmap <C-\> <C-^>
smap <C-\> <C-^>
nmap <C-\> a<C-^><Esc>

cabbr W w
cabbr Q q
cabbr Wq wq
cabbr WQ wq
cabbr Tabe tabe

command! WW silent! write !sudo tee %:p > /dev/null
