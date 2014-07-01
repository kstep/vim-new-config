" .vimrc file

set nocompatible

for file in glob($HOME . '/.vim/parts/*.vim', 0, 1)
    exec 'source' file
endfor

" vim: set ft=vim :
