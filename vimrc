" Stefans vimrc

" Sane defaults:
set nocompatible
set number                      "Line numbers are good
set backspace=indent,eol,start  "Allow backspace in insert mode
set history=600                 "Store lots of :cmdline history
set showcmd                     "Show incomplete cmds down the bottom
set showmode                    "Show current mode down the bottom
set visualbell                  "No sounds
set autoread                    "Reload files changed outside vim
set laststatus=2                "Always show the status line
filetype plugin on
filetype indent on

" Better search:
set hlsearch    " highlight search hits
set ignorecase  " ignore case when searching
set smartcase   " case sensitivity is used when search contains uppercase letters
set incsearch   " livesearch

" Proper indentation:
set autoindent
set smartindent
set smarttab
set shiftwidth=2
set softtabstop=2
set tabstop=2
set expandtab

" Color sheme:
"syntax enable "recommended everywhere but doesn't seem to change the default

if ! has("gui_running")
  set t_Co=256
endif
"choose background=light for a different style
set background=dark
colors peaksea " using peaksea colorsheme in .vim/colors/

" Better statusbar
hi User1 ctermfg=black ctermbg=red
set statusline=
set statusline=\ [%n]
set statusline+=\ %f    "filepath
set statusline+=%1*%m%* "file modification indicator in red
set statusline+=\ %r%h%w "flags
set statusline+=%y " filetype
set statusline+=%<\ CWD:\ %{getcwd()} "cur working dir
set statusline+=%=\ L\:%l\/%L\|\C\:%c\  "Show curser pos

" Display tabs and trailing spaces visually:
set list listchars=tab:\ \ ,trail:•

set nowrap       "Don't wrap lines
set linebreak    "Wrap lines at convenient points
set scrolloff=8         "Start scrolling when we're 8 lines away from margins
set sidescrolloff=15
set sidescroll=1

" disable mouse in vim window
set mouse=

" Speed improvements in case of long lines:
" set synmaxcol=240 " syntax highlighting only till column 240
" set ttyfast       " u got a fast terminal
" set ttyscroll=3
" set lazyredraw    " to avoid scrolling problems

" Don't pollute working dir:
set nobackup
set noswapfile

" Plugins with vim-plug
" docs https://github.com/junegunn/vim-plug

" Specify a directory for plugins
call plug#begin('~/.vim/plugged')

" List of plugins to install with PlugInstall (pattern: github_user/repo)
Plug 'elixir-editors/vim-elixir', { 'for': 'elixir' }
Plug 'leafgarland/typescript-vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

call plug#end()
