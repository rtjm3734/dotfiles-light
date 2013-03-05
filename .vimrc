syntax on

" based on https://github.com/jferris/config_files/blob/master/vimrc
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8

" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" Switch wrap on for everything
set wrap

" Softtabs, 4 spaces
set tabstop=4
set shiftwidth=4
set expandtab

" Always display the status line
set laststatus=2

" Local config
if filereadable(".vimrc.local")
  source .vimrc.local
endif

" better statusline
set statusline=%t       "tail of the filename
set statusline+=[%{strlen(&fenc)?&fenc:'none'}, "file encoding
set statusline+=%{&ff}] "file format
set statusline+=%h      "help file flag
set statusline+=%m      "modified flag
set statusline+=%r      "read only flag
set statusline+=%y      "filetype
set statusline+=%=      "left/right separator
set statusline+=%c,     "cursor column
set statusline+=%l/%L   "cursor line/total lines
set statusline+=\ %P    "percent through file

" python fixes
set softtabstop=4
set shiftwidth=4
set autoindent
filetype plugin indent on

set paste

autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
