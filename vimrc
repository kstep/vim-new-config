" .vimrc file

" Vundle {{{

set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'kstep/gitgraph-vim-plugin'
Plugin 'scrooloose/nerdcommenter'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'vim-scripts/Align'
Plugin 'altercation/vim-colors-solarized'
Plugin 'bling/vim-airline'
"Plugin 'yegappan/mru'
Plugin 'Shougo/unite.vim'
Plugin 'Shougo/neomru.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'embear/vim-localvimrc'
Plugin 'tpope/vim-fugitive'
Plugin 'jmcantrell/vim-virtualenv'
Plugin 'derekwyatt/vim-scala'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'drmingdrmer/xptemplate'

call vundle#end()
set rtp+=~/.vim/bundle/_local_

" }}}

" Basic config & plugins loading {{{

syntax on
filetype plugin indent on
runtime macros/matchit.vim
" }}}

" Options {{{
silent !stty -ixon -ixoff
set helplang=ru
"set t_Co=256
set t_IS=]0; t_IE=
set icon iconstring=Vim
set ttimeoutlen=50

set nohlsearch
set ignorecase
set smartcase
set incsearch

set keymap=russian-jcukenwin
set spelllang=en,ru
set imsearch=0
set iminsert=0
set grepprg=find\ %:p:h\ -xdev\ -name\ '*.%:e'\ -exec\ grep\ -Hn\ $*\ \{}\ +
set diffopt=filler,vertical

set tabstop=8
set shiftwidth=4
set softtabstop=4
set shiftround
set smarttab
set expandtab
set autoindent
set smartindent
set showmatch
set listchars=tab:»┄,eol:↲,trail:·,precedes:«,extends:»
set backspace=start,eol,indent

set foldmethod=marker
set foldlevelstart=1
set foldcolumn=1
set foldminlines=5
set numberwidth=2
"set relativenumber

set window=39
set winminheight=0
set noequalalways
set ruler
set laststatus=2
set visualbell
set noerrorbells
set cursorline

set tildeop
set nrformats=hex,alpha
set encoding=utf-8

set linebreak
set nojoinspaces

set sessionoptions=buffers,curdir,folds,tabpages,winsize
set wildmenu

set modeline
set nobackup nowritebackup
set noswapfile
set undofile
set undodir=~/.vim/undofiles

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 16
set noicon

" }}}

" Functions {{{

fun! UscorePluralToCamelSingle(value)
    let value = substitute(a:value, '_\(.\)', '\U\1', 'g')
    let value = substitute(value, '^\(.\)', '\U\1', '')
    let value = substitute(value, 'ies$', 'y', '')
    let value = substitute(value, 's$', '', '')
    return value
endfun

function! GetSelection()
	let l:line = getline("'<")
	let l:line = strpart(l:line, col("'<") - 1, col("'>") - col("'<") + 1)
	return l:line
endfunction

function! MirrorExchange(delim)
	let sel = GetSelection()
	let sel = substitute(sel, '\(.\{-}\)\('.a:delim.'\)\(.*\)', '\3\2\1', '')
	exe "norm gvc".sel."\<esc>"
endfunction
command! -range -nargs=1 MirrorExchange :call MirrorExchange(<f-args>)

function! GetSynName(...)
    let l = exists('a:1') ? a:1 : '.'
    let c = exists('a:2') ? a:2 : '.'
    return synIDattr(synID(line(l), col(c), 1), "name")
endfunction

" }}}

" Mappings & abbrevs {{{
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
" }}}

" Plugins config {{{
let g:gitgraph_date_format="iso"
let g:Tlist_Ctags_Cmd="/usr/bin/ctags"

"let g:dbext_default_profile_mysql_buick="type=MYSQL:user=root:passwd=nownthen:dbname=zanby5_stepanov:host=buick:extra=-vvvt"
let g:dbext_default_profile_pgsql="type=PGSQL:user=postgres:dbname=postgres"
let g:dbext_default_profile_mysql="type=MYSQL:user=root:host=localhost"
let g:dbext_default_DBI_max_rows=0

let g:airline_powerline_fonts = 1
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 1
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#virtualenv#enabled = 1

let g:sql_type_default="mysql"
let g:sqlutil_keyword_case='\l'
let g:sqlutil_align_comma=1

let g:Tlist_Show_One_File=1
let g:DrChipTopLvlMenu="Plugin."
let g:MRU_Max_Entries=50
let g:NERDShutUp=1

let g:vimwiki_list = [{'path': '~/.vim/wiki/', 'path_html': '~/.vim/wiki_html/', 'syntax': 'default'}]
let g:vimwiki_folding = 1
let g:vimwiki_fold_lists = 1

let g:netrw_list_hide='^\.,\.pyc,\.pyo,\.class'
let g:netrw_cursor=2
let g:netrw_liststyle=1
let g:netrw_timefmt="%a, %e %b %Y %H:%M"
let g:netrw_keepdir=0
let g:netrw_sort_options='ni /[0-9]\+/'
let g:netrw_maxfilenamelen=64
let g:netrw_list_cmd='ssh HOSTNAME ls -La'

let g:perl_include_pod=1
let g:perl_fold=1
let g:perl_nofold_subs=1

let g:po_translator = 'Konstantin Stepanov <me@kstep.me>'
let g:syntastic_enable_signs=1
let g:syntastic_python_flake8_args='--ignore=E501,W391'
"let g:syntastic_python_flake8_args='--ignore=E302,E303,E501,W391,E127,E128,E221,E126,E251,E124,E261,E401,W404,E301,E123,E401'
let g:localvimrc_ask=0
let g:localvimrc_sandbox=0
let g:gitgraph_layout = { 'g':[20,'la'], 's':[-30,'tl'], 't':[5,'rb'], 'd':[0,'br'],
            \ 'c':[10,'br'], 'v':[0,'rb'], 'f':[0,'rb'], 'r':[5,'rb'], 'l':['g','s','t'] }


let g:user_zen_settings = { 'indentation': '    ', 'mako': { 'extends': 'html' }, 'less': { 'extends': 'css' } }
let g:indent_guides_guide_size = 1
let g:indent_guides_start_level = 2

" }}}

" Custom highlighting {{{
set background=light
colorscheme solarized
"colorscheme thegoodluck
"colorscheme chocolate
" }}}

let g:tagbar_type_php = {
            \ 'ctagstype': 'PHP',
            \ 'kinds': [
            \       'c:classes',
            \       'm:methods',
            \       'f:functions'
            \ ]
        \ }

" vim: set ft=vim :

fun! MassVisualChange()
    let selection = getreg("*")
    let @/ = '\<' . selection . '\>'
    set hls
    redraw
    let replace = input("Replace with: ")
    %s//\=replace/g
    set nohls
endfun

vmap S <Esc>:call MassVisualChange()<CR>

fun! JavaAddImport()
    let word = expand('<cword>')
    let variants = split(system('jcf -i ' . word . ' 2>/dev/null | sort -u'), '\n')
    if len(variants) == 0
        echoerr 'No class or interface found!'
    else
        let variant = variants[0]
        if len(variants) > 1
            let variant = variants[inputlist(variants)]
        endif

        let pos = search('^import ', 'bn')
        call append(pos, variant)
    endif
endfun

fun! JavaDeleteUnusedImport()
    let pos = getpos('.')
    norm *
    if pos[1] == getpos('.')[1]
        delete
    else
        call setpos('.', pos)
    endif
endfun

map ,i :call JavaAddImport()<CR>

fun! JavaReorganizeImports()
    " find all imports and cut them into a dedicated register
    let @a=''
    g/^import /norm "Add

    " sort them alphabetically
    let imports=split(@a, "\n")
    call sort(imports)
    let @a="\n" . join(imports, "\n") . "\n\n"

    " put them to the top of file, but below "package" statement
    /^package /
    norm j
    while getline('.') == ''
        delete
    endwhile
    norm k
    put a
endfun

let g:Upload_Config = {
            \ '/home/kstep/work/myp-backend': {
            \ 'qa': 'yoga-user@qa.yoga.com:/home/yoga-user/webqa',
            \ 'dev': 'yoga-user@dev.yoga.com:/home/yoga-user/webdev',
            \ 'prod': 'yoga-user@yoga.com:/home/yoga-user/webprod'
            \ }
            \ }

fun! UploadFile(filename, preset)
    echo a:filename
    let remotename = ''
    for key in keys(g:Upload_Config)
        if strpart(a:filename, 0, len(key)) ==# key
            let remotename = g:Upload_Config[key][a:preset] . strpart(a:filename, len(key))
            break
        endif
    endfor

    if remotename != ''
        echom "Uploading to " . remotename
        exec '!scp ' . shellescape(a:filename) . ' ' . shellescape(remotename)
        "exec 'Nwrite ' . shellescape(remotename)
    else
        echoerr "No upload config found for the current file"
    endif
endfun

command! -nargs=1 Upload call UploadFile(expand('%:p'), <f-args>)
map ,qu :Upload qa<CR>
map ,du :Upload dev<CR>
map ,pu :Upload prod<CR>
