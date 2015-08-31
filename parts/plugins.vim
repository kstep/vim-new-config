filetype off
set rtp+=~/.vim/bundle/vim-plug
call plug#begin('~/.vim/bundle')

Plug 'Shougo/neomru.vim' " most recently edited files, Shougo/unite subplugin
Plug 'Shougo/unite.vim' " files opener with fuzzy filtering
Plug 'Shougo/vimshell.vim' " required by Shougo/unite
Plug 'Shougo/vimproc.vim' " required by Shougo/unite
Plug 'SirVer/ultisnips' " YCM compatible snippets engine
Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' } " powerful autocompleter
Plug 'airblade/vim-gitgutter' " per-line change status with git
Plug 'altercation/vim-colors-solarized' " color scheme
Plug 'bling/vim-airline' " nice status bar
Plug 'cespare/vim-toml' " toml format support
Plug 'chrisbra/csv.vim' " csv editing
Plug 'derekwyatt/vim-scala' " basic scala convinience plugin
Plug 'digitaltoad/vim-jade' " jade support
Plug 'dkasak/manpageview' " man page viewer for vim
"Plug 'drmingdrmer/xptemplate' " templates with placeholders
Plug 'embear/vim-localvimrc' " local vim configs handler
Plug 'groenewege/vim-less' " less support
Plug 'honza/vim-snippets' " common snippets for ultisnips
"Plug 'jmcantrell/vim-virtualenv' " Python virtualenv support
Plug 'junegunn/vim-plug' " heart of plugins system
Plug 'kchmck/vim-coffee-script' " coffeescript support
Plug 'kstep/gitgraph-vim-plugin' " git history graph with
Plug 'lambdalisue/unite-grep-vcs' " unite subplugin to grep for vcs
Plug 'mattn/emmet-vim' " generate html/css from css-like dsl
Plug 'mattn/gist-vim' " gist publisher
Plug 'mattn/webapi-vim' " required for mattn/gist
Plug 'phildawes/racer', { 'do': 'cargo build --release' } " rust autocompleter
"Plug 'megaannum/forms' " required by megaannum/vimside
"Plug 'megaannum/self'  " required by megaannum/vimside
"Plug 'megaannum/vimside' " ENSIME support for vim (vim scala ide)
Plug 'nathanaelkane/vim-indent-guides' " indent guides
Plug 'scrooloose/nerdcommenter' " comment/uncomment lines
Plug 'scrooloose/syntastic' " syntax checker with many languages support
Plug 'sgur/unite-qf' " Shougo/unite subplugin to list quickfind entries
Plug 'terryma/vim-multiple-cursors' " edit multiple entries
Plug 'tpope/vim-fugitive' " git commands
Plug 'tpope/vim-unimpaired' " handle a lot of coupled operations
Plug 'tsukkee/unite-tag' " Shougo/unite subplugin to list tags
Plug 'vim-scripts/Align' " align code
Plug 'wting/rust.vim' " rust syntax highlighting support

call plug#end()
