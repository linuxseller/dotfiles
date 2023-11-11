colorscheme peachpuff
syntax on
colorscheme dogrun
colorscheme gruvbox 
set number
set ruler
set showcmd
syntax on
filetype plugin indent on
nnoremap <Ctrl-x> :w<CR>
set expandtab
set tabstop=4
set shiftwidth=4

set encoding=utf-8

hi CursorLineNr guifg=#af00af
set cursorline
set cursorlineopt=number

set statusline=
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor
nnoremap <C-t> :NERDTreeToggle<CR>
call plug#begin()
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
    Plug 'prabirshrestha/vim-lsp'
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-commentary'
    Plug 'marcweber/vim-addon-mw-utils'
    Plug 'tomtom/tlib_vim'
    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
call plug#end()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
