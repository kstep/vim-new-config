filetype off
call plug#begin()

Plug 'Shougo/neomru.vim' " most recently edited files, Shougo/unite subplugin
Plug 'Shougo/unite.vim' " files opener with fuzzy filtering
Plug 'Shougo/vimproc.vim', { 'do': 'make' } " required by Shougo/unite
Plug 'Shougo/vimshell.vim' " required by Shougo/unite
Plug 'SirVer/ultisnips' " YCM compatible snippets engine
Plug 'Valloric/YouCompleteMe', { 'do': 'python2 ./install.py' } " powerful autocompleter
Plug 'airblade/vim-gitgutter' " per-line change status with git
Plug 'altercation/vim-colors-solarized' " color scheme
Plug 'benmills/vimux' " control Tmux from Vim
Plug 'bling/vim-airline' " nice status bar
Plug 'cespare/vim-toml' " toml format support
Plug 'chrisbra/csv.vim' " csv editing
Plug 'chrisbra/unicode.vim' " unicode chars search and ops
Plug 'derekwyatt/vim-scala' " basic scala convinience plugin
Plug 'digitaltoad/vim-jade' " jade support
Plug 'dkasak/manpageview' " man page viewer for vim
Plug 'elzr/vim-json' " better vim checks and highlighting
Plug 'embear/vim-localvimrc' " local vim configs handler
Plug 'geverding/vim-hocon' " Play config format (HOCON) syntax highlighting
Plug 'groenewege/vim-less' " less support
Plug 'honza/vim-snippets' " common snippets for ultisnips
Plug 'junegunn/vim-plug' " heart of plugins system
Plug 'kana/vim-smartinput' " context-dependent quotes autoclose
Plug 'kchmck/vim-coffee-script' " coffeescript support
Plug 'krisajenkins/vim-pipe' " pipe buffer through a filter and show output in a split (mongo, psql etc)
Plug 'kstep/ensime-vim' " ENSIME support fro vim
Plug 'kstep/gitgraph-vim-plugin' " git history graph with
Plug 'lambdalisue/unite-grep-vcs' " unite subplugin to grep for vcs
Plug 'majutsushi/tagbar' " in-file navigation by tags
Plug 'mattn/emmet-vim' " generate html/css from css-like dsl
Plug 'mattn/gist-vim' " gist publisher
Plug 'mattn/webapi-vim' " required for mattn/gist
Plug 'mpollmeier/vim-scalaConceal' " nice symbols in scala files
Plug 'myusuf3/numbers.vim' " adaptive line numbers gutter
Plug 'nathanaelkane/vim-indent-guides' " indent guides
Plug 'phildawes/racer', { 'do': 'cargo build --release' } " rust autocompleter
Plug 'scrooloose/nerdcommenter' " comment/uncomment lines
Plug 'scrooloose/syntastic' " syntax checker with many languages support
Plug 'sgur/unite-qf' " Shougo/unite subplugin to list quickfind entries
Plug 'shinnya/vim-mplayer' " mplayer integration
Plug 'sjl/gundo.vim' " graphical undo
Plug 'terryma/vim-multiple-cursors' " edit multiple entries
Plug 'tpope/vim-fugitive' " git commands
Plug 'tpope/vim-surround' " surround text with different symbols
Plug 'tpope/vim-unimpaired' " handle a lot of coupled operations
Plug 'tsukkee/unite-tag' " Shougo/unite subplugin to list tags
Plug 'vim-scripts/Align' " align code
Plug 'wting/rust.vim' " rust syntax highlighting support
Plug 'easymotion/vim-easymotion'

call plug#end()
