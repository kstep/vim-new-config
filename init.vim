" .vimrc file

set nocompatible

if has('nvim')
    let $VIM_KIND = 'nvim'
else
    let $VIM_KIND = 'vim'
    set rtp-=~/.vim rtp^=~/.config/vim
endif

let $VIM_CONFIG = fnamemodify(resolve(expand('<sfile>:p')), ':h')
let $VIM_CACHE = $HOME . '/.cache/' . $VIM_KIND

for file in glob($VIM_CONFIG . '/parts/*.vim', 0, 1)
    exec 'source' file
endfor

" vim: set ft=vim :
