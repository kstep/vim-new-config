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
