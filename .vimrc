colorscheme peachpuff
syntax on
set number
set ruler
set showcmd
set relativenumber
syntax on
filetype plugin indent on
set expandtab
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
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
    Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
    Plug 'preservim/nerdtree'
    Plug 'tpope/vim-commentary'
    "Plug 'marcweber/vim-addon-mw-utils'
    "Plug 'tomtom/tlib_vim'
    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
    "Plug 'ziglang/zig.vim'
    Plug 'godlygeek/tabular'
    Plug 'vim-airline/vim-airline'
    Plug 'wadackel/vim-dogrun'
    Plug 'honza/vim-snippets'
    Plug 'garbas/vim-snipmate'
    Plug 'MarcWeber/vim-addon-mw-utils'
call plug#end()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

colorscheme dogrun
colorscheme gruvbox 

