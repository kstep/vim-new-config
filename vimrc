" .vimrc file

set rtp-=~/.vim rtp+=~/.config/vim
set nocompatible

for file in glob($HOME . '/.config/vim/parts/*.vim', 0, 1)
    exec 'source' file
endfor

" vim: set ft=vim :
