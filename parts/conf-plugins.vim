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

let g:syntastic_enable_signs = 1
let g:syntastic_warning_symbol = '●'
let g:syntastic_error_symbol = '●'

let g:localvimrc_ask = 0
let g:localvimrc_sandbox = 0
let g:gitgraph_layout = { 'g':[20,'la'], 's':[-30,'tl'], 't':[5,'rb'], 'd':[0,'br'],
            \ 'c':[10,'br'], 'v':[0,'rb'], 'f':[0,'rb'], 'r':[5,'rb'], 'l':['g','s','t'] }


let g:user_zen_settings = { 'indentation': '    ', 'mako': { 'extends': 'html' }, 'less': { 'extends': 'css' } }
"let g:indent_guides_guide_size = 1
"let g:indent_guides_start_level = 2
let g:indentLine_char = '⸽'

let g:tagbar_type_php = {
            \ 'ctagstype': 'PHP',
            \ 'kinds': [
            \       'c:classes',
            \       'm:methods',
            \       'f:functions'
            \ ]
        \ }

let g:gitgutter_sign_added            = '┃+'
let g:gitgutter_sign_modified         = '┃±'
let g:gitgutter_sign_removed          = '┃…'
let g:gitgutter_sign_modified_removed = '┃−'

let g:UltiSnipsExpandTrigger = '<C-j>'

let g:EclimCompletionMethod = 'omnifunc'
"let g:EclimJavaCompleteTmpFile = 0

let $RUST_SRC_PATH = $HOME . '/.multirust/src/rust'
let g:ycm_rust_src_path = $RUST_SRC_PATH

"let g:solarized_termcolors = 256
let g:solarized_visibility = "low"

let g:languagetool_jar = '/usr/share/java/languagetool/languagetool-commandline.jar'
let g:languagetool_disable_rules = 'WHITESPACE_RULE,EN_QUOTES,MORFOLOGIK_RULE_RU_RU,COMMA_PARENTHESIS_WHITESPACE,SENTENCE_WHITESPACE,UPPERCASE_SENTENCE_START,EN_UNPAIRED_BRACKETS,RU_UNPAIRED_BRACKETS'

