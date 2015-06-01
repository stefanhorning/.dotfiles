set nocompatible

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=600                 "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim

set hlsearch

"set guioptions=aegimrLt

"set hidden
"set background=dark
"syntax enable
"colorscheme aldmeris

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:•

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" Speed improvements in case of long lines:
set synmaxcol=125 " syntax highlighting only till column 120
set ttyfast       " u got a fast terminal
set ttyscroll=3
set lazyredraw    " to avoid scrolling problems

set nobackup
set noswapfile
