filetype off
set rtp+=~/.vim/bundle/vim-plug
call plug#begin('~/.vim/bundle')

Plug 'Shougo/neomru.vim'
Plug 'Shougo/unite.vim'
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'airblade/vim-gitgutter'
Plug 'altercation/vim-colors-solarized'
Plug 'bling/vim-airline'
Plug 'chrisbra/csv.vim'
Plug 'derekwyatt/vim-scala'
Plug 'dkasak/manpageview'
Plug 'drmingdrmer/xptemplate'
Plug 'embear/vim-localvimrc'
Plug 'jmcantrell/vim-virtualenv'
Plug 'junegunn/vim-plug'
Plug 'kstep/gitgraph-vim-plugin'
Plug 'mattn/emmet-vim'
Plug 'mattn/gist-vim'
Plug 'mattn/webapi-vim'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/syntastic'
Plug 'sgur/unite-qf'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-unimpaired'
Plug 'tsukkee/unite-tag'
Plug 'vim-scripts/Align'
Plug 'wting/rust.vim'

call plug#end()
