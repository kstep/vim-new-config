syntax on
filetype plugin indent on
runtime macros/matchit.vim

silent !stty -ixon -ixoff
set helplang=ru
"set t_Co=256
"set t_IS=]0; t_IE=
set icon iconstring=Vim
set ttimeoutlen=50

set nohlsearch
set ignorecase
set smartcase
set incsearch

set keymap=russian-jcukenwin
set spelllang=en,ru
set imsearch=0
set iminsert=0
set grepprg=find\ %:p:h\ -xdev\ -name\ '*.%:e'\ -exec\ grep\ -Hn\ $*\ \{}\ +
set diffopt=filler,vertical

set tabstop=8
set shiftwidth=4
set softtabstop=4
set shiftround
set smarttab
set expandtab
set autoindent
set smartindent
set showmatch
set list
set listchars=tab:»┄,eol:↲,trail:·,precedes:«,extends:»
set backspace=start,eol,indent

set foldmethod=marker
set foldlevelstart=1
set foldcolumn=1
set foldminlines=5
set numberwidth=2
"set relativenumber

set window=39
set winminheight=0
set noequalalways
set ruler
set laststatus=2
set visualbell
set noerrorbells
set cursorline

set tildeop
set nrformats=hex,alpha
set encoding=utf-8

set linebreak
set nojoinspaces

set sessionoptions=buffers,curdir,folds,tabpages,winsize
set wildmenu

set modeline
set nobackup nowritebackup
set noswapfile
set undofile
set undodir=~/.vim/undofiles

set guifont=DejaVu\ Sans\ Mono\ for\ Powerline\ 14
set guioptions-=T
set guioptions-=m
set noicon

set background=dark
colorscheme solarized
hi SignColumn ctermbg=lightgrey
