set nocompatible

set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=600                 "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set gcr=a:blinkon0              "Disable cursor blink
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2                "Always show the status line

set hlsearch
set ignorecase  " ignore case when searching
set smartcase   " case sensitivity is used when search contains uppercase letters
set incsearch   " livesearch

set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Colors
syntax enable

if ! has("gui_running")
  set t_Co=256
endif
"choose background=light for a different style
set background=dark
colors peaksea

" Better statusbar
hi User1 ctermfg=black ctermbg=red
set statusline=
set statusline=\ [%n]
set statusline+=\ %f    "filepath
set statusline+=%1*%m%* "file modification indicator in red
set statusline+=\ %r%h%w "flags
set statusline+=%y " filetype
set statusline+=\ CWD:\ %-.50{getcwd()} "cur working dir
set statusline+=%=\L\:%l\/%L\|\C\:%c\  "Show curser pos
"set statusline=\ %F%1*%m%*%r%h\ %w\ L:\%l\/\%L\|C:\%c


filetype plugin on
filetype indent on

" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:•

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1
set synmaxcol=160

set nobackup
set noswapfile
