set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" javascript syntax
Plugin 'othree/yajs.vim'

" colorscheme
Plugin 'mhartington/oceanic-next'

" html5 highlighting
Plugin 'othree/html5.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
execute pathogen#infect()

filetype plugin on
set omnifunc=syntaxcomplete#Complete

set mouse=a

syntax on

set ruler

runtime macros/matchit.vim

syntax enable

set number

set ts=4

set autoindent

set shiftwidth=4

set showmatch

" Theme
 syntax enable

" for vim 8
 if (has("termguicolors"))
  set termguicolors
 endif

colorscheme OceanicNext

call plug#begin('~/.vim/plugged')

" Vimtemplates - templates for diverse files
Plug 'drbeco/vimtemplates'

" for jsx highlighting
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'

call plug#end()

nnoremap <C-J> <C-W><C-J> 
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
set splitbelow
set splitright

let g:author="Ian Dulchinos"
let g:email="ian.dulchinos@gmail.com"
let g:webpage="www.google.com"
let g:phone="+ (408) 722-1997"

if filereadable(".vim.custom")
    so .vim.custom
endif
