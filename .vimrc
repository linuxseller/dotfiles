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
let g:vimsence_client_id = '439476230543245312'
call plug#begin()
    " LSPs and syntax
    Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'npm ci'}
    Plug 'prabirshrestha/vim-lsp'
    Plug 'autozimu/LanguageClient-neovim', { 'branch': 'next', 'do': 'bash install.sh' }
    Plug 'instant-markdown/vim-instant-markdown', {'for': 'markdown', 'do': 'yarn install'}
    "Plug 'ziglang/zig.vim'
    " Development
    Plug 'fidian/hexmode'
    Plug 'godlygeek/tabular'
    Plug 'tpope/vim-commentary'
    Plug 'garbas/vim-snipmate'
    Plug 'honza/vim-snippets'
    " Misc
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'enricobacis/vim-airline-clock'
    Plug 'MarcWeber/vim-addon-mw-utils'
    Plug 'ntpeters/vim-better-whitespace'
    Plug 'wakatime/vim-wakatime'
    Plug 'severin-lemaignan/vim-minimap'
    Plug 'wfxr/minimap.vim'
    " Colorschemes
    Plug 'wadackel/vim-dogrun'
    Plug 'treycucco/vim-monotonic'
call plug#end()
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

"colorscheme dogrun
colorscheme monotonic-light

autocmd VimEnter * NERDTree | wincmd p
