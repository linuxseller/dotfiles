set ruler
set showcmd
set wildmenu
set display=truncate
set incsearch
set number
set cul
set spl=en
set showmatch
set tabstop=4
set shiftwidth=4
set relativenumber
set expandtab
set cot=menu,preview,popup,noinsert,fuzzy
set virtualedit=block
set encoding=utf-8
set cursorline
set cursorlineopt=number
syntax on
filetype plugin indent on
colorscheme gruber
nnoremap <C-t> :tabNext<CR>

call plug#begin()
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-commentary'
    Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'
    Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex' }
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'ntpeters/vim-better-whitespace'
call plug#end()

set gfn=Iosevka\ Medium\ Expanded\ 18
set go-=T
set go-=r
set go-=l
set go-=L
set guicursor+=a:blinkon500
set selectmode=mouse
runtime! ftplugin/man.vim
set gli=-><!=

