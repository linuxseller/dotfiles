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

set runtimepath^=~/.vim/pluginv/commentary.vim
set runtimepath^=~/.vim/pluginv/Tabular.vim
set runtimepath^=~/.vim/pluginv/better-whitespace.vim

"Plug 'godlygeek/tabular'

set gfn=Iosevka\ Medium\ Expanded\ 18
set go-=T
set go-=r
set go-=l
set go-=L
set guicursor+=a:blinkon500
set selectmode=mouse
runtime! ftplugin/man.vim
set gli=-><!=

