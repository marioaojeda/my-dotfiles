" Mario's Vim config file - 12/2017
"
" Ditch vi settings
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

filetype off " required by Vundle

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'

call vundle#end()            " required by Vundle, list plugins before this

filetype plugin indent on    " required by Vundle

" Show line numbers
set number
set relativenumber

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

" Common mispellings
abbr funciton function
abbr teh the
abbr tempalte template

" Snippets
abbr clog console.log(

" backups: won't backup for a while, I could set a different
" backup location if this doesn't work for me
" set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/vat/tmp,/tmp
" set directory=~/.vim-tmp,~/.tmp,~/tmp,/vat/tmp,/tmp
set nobackup
set nowritebackup
set noswapfile

" indentation
set autoindent
set smartindent

" enhanced command line tab completion
set wildmenu
set wildmode=list:longest

set scrolloff=3

" searching
set ignorecase
set incsearch

set showmatch "for highlighting matching braces
set mat=2     " blinking

set encoding=utf8
let base16colorspace=256
set t_Co=256

