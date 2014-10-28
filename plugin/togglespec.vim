
fun! s:SwitchToSpec(path)
  return substitute(substitute(a:path, "/src/main/", "/src/test/", ""), ".scala$", "Spec.scala", "")
endfun

fun! s:SwitchToSource(path)
  return substitute(substitute(a:path, "/src/test/", "/src/main/", ""), "Spec.scala$", ".scala", "")
endfun

fun! s:IsSpec(path)
  return a:path =~ "/src/test/"
endfun

fun! ToggleSpec(path)
  if s:IsSpec(a:path)
    return s:SwitchToSource(a:path)
  else
    return s:SwitchToSpec(a:path)
endfun

command! ToggleSpec exec 'edit ' . ToggleSpec(expand('%:p'))
noremap <C-^> :ToggleSpec<CR>
noremap <C-s><C-^> :split<Bar>ToggleSpec<CR>
noremap <C-v><C-^> :vsplit<Bar>ToggleSpec<CR>
