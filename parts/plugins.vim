filetype off
call plug#begin()

Plug 'leafgarland/typescript-vim'
Plug 'tpope/vim-dispatch'
Plug 'freitass/todo.txt-vim'
Plug 'oblitum/rainbow'
Plug 'tailhook/khufu', { 'rtp': 'vim' }

Plug 'Shougo/neomru.vim', { 'on': 'Unite' } " most recently edited files, Shougo/unite subplugin
Plug 'Shougo/unite.vim', { 'on': 'Unite' } " files opener with fuzzy filtering
Plug 'Shougo/vimproc.vim', { 'do': 'make' } " required by Shougo/unite
Plug 'Shougo/vimshell.vim' " required by Shougo/unite
Plug 'SirVer/ultisnips' " YCM compatible snippets engine
"Plug 'Valloric/YouCompleteMe', { 'do': 'python3 ./install.py --racer-completer' } " powerful autocompleter
Plug 'airblade/vim-gitgutter' " per-line change status with git
Plug 'altercation/vim-colors-solarized' " color scheme
Plug 'benmills/vimux', { 'on': [
            \ 'VimuxRunCommand',
            \ 'VimuxRunLastCommand',
            \ 'VimuxPromptCommand',
            \ 'VimuxInspectRunner',
            \ 'VimuxScrollUpInspect',
            \ 'VimuxScrollDownInspect',
            \ 'VimuxClearRunnerHistory',
            \ 'VimuxCloseRunner',
            \ 'VimuxInterruptRunner',
            \ 'VimuxZoomRunner',
            \ 'VimuxTogglePane'
            \ ] } " control Tmux from Vim
Plug 'bling/vim-airline' " nice status bar
Plug 'vim-airline/vim-airline-themes' " airline plugins
Plug 'cespare/vim-toml', { 'for': 'toml' } " toml format support
Plug 'chrisbra/csv.vim', { 'for': 'csv' } " csv editing
Plug 'chrisbra/unicode.vim' " unicode chars search and ops
Plug 'derekwyatt/vim-scala', { 'for': 'scala' } " basic scala convinience plugin
Plug 'digitaltoad/vim-jade', { 'for': 'jade' } " jade support
Plug 'dkasak/manpageview' " man page viewer for vim
Plug 'editorconfig/editorconfig-vim' " read settings editorconfig file (http://editorconfig.org/)
Plug 'elzr/vim-json', { 'for': 'json' } " better vim checks and highlighting
Plug 'embear/vim-localvimrc' " local vim configs handler
Plug 'geverding/vim-hocon', { 'for': 'hocon' } " Play config format (HOCON) syntax highlighting
Plug 'groenewege/vim-less' " less support
Plug 'honza/vim-snippets' " common snippets for ultisnips
Plug 'junegunn/vim-plug' " heart of plugins system
Plug 'kana/vim-smartinput' " context-dependent quotes autoclose
Plug 'kchmck/vim-coffee-script', { 'for': 'coffee' } " coffeescript support
Plug 'krisajenkins/vim-pipe' " pipe buffer through a filter and show output in a split (mongo, psql etc)
Plug 'ensime/ensime-vim', { 'for': 'scala' } " ENSIME support fro vim
Plug 'kstep/gitgraph-vim-plugin' " git history graph with
Plug 'lambdalisue/unite-grep-vcs', { 'on': 'Unite' } " unite subplugin to grep for vcs
"Plug 'majutsushi/tagbar' " in-file navigation by tags
Plug 'mattn/emmet-vim', { 'for': ['html', 'css'] } " generate html/css from css-like dsl
Plug 'mattn/gist-vim' " gist publisher
Plug 'mattn/webapi-vim' " required for mattn/gist
"Plug 'mpollmeier/vim-scalaConceal', { 'for': 'scala' } " nice symbols in scala files
Plug 'myusuf3/numbers.vim' " adaptive line numbers gutter
Plug 'Yggdroot/indentLine' " indent guides
"Plug 'phildawes/racer', { 'do': 'cargo build --release' } " rust autocompleter
Plug 'scrooloose/nerdcommenter' " comment/uncomment lines
Plug 'scrooloose/syntastic' " syntax checker with many languages support
Plug 'sgur/unite-qf', { 'on': 'Unite' } " Shougo/unite subplugin to list quickfind entries
"Plug 'shinnya/vim-mplayer' " mplayer integration
Plug 'sjl/gundo.vim', { 'on': 'GundoShow' } " graphical undo
Plug 'terryma/vim-multiple-cursors' " edit multiple entries
Plug 'tpope/vim-fugitive' " git commands
Plug 'tpope/vim-surround' " surround text with different symbols
Plug 'tpope/vim-unimpaired' " handle a lot of coupled operations
Plug 'tsukkee/unite-tag', { 'on': 'Unite' } " Shougo/unite subplugin to list tags
Plug 'vim-scripts/Align' " align code
Plug 'rust-lang/rust.vim', { 'for': 'rust' } " rust syntax highlighting support
Plug 'easymotion/vim-easymotion'

Plug 'mmisono/unite-mpc', { 'on': 'Unite' }
Plug 'mmisono/mpc.vim'
Plug 'aquach/vim-http-client'
Plug 'dpelle/vim-LanguageTool'
Plug 'nicwest/QQ.vim'

call plug#end()
