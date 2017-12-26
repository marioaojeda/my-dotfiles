" Mario's Vim config file - 12/2017
"
" Ditch vi settings
set nocompatible

" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
syntax on

let mapleader = ","

filetype off " required by Vundle

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'
Plugin 'Valloric/YouCompleteMe'
Plugin 'jelera/vim-javascript-syntax'
Plugin 'mattn/emmet-vim'

call vundle#end()            " required by Vundle, list plugins before this

filetype plugin indent on    " required by Vundle
set tabstop=4
set shiftwidth=4
set expandtab

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

" Remaps
nnoremap <leader>l :ls<CR>:b<space>

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
set path+=**
set wildmenu
set wildmode=list:longest

set scrolloff=3

" searching
set ignorecase
set incsearch
set hlsearch

" Enables escaping highlighted search
nnoremap <leader>1 :noh<return><esc>

set showmatch "for highlighting matching braces
set mat=2     " blinking

set encoding=utf8
let base16colorspace=256
set t_Co=256

let g:airline_powerline_fonts = 1

" Automatic omnicompletion for YouCompleteMe
if !exists('g:ycm_semantic_triggers')
  let g:ycm_semantic_triggers = {}
endif

let g:ycm_semantic_triggers['typescript'] = ['.']

" set foldlevelstart=1
" set foldmethod=indent

 autocmd FileType javascript,typescript,json setlocal foldmarker={,}

