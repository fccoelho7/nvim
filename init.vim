call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'sheerun/vim-polyglot'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'roxma/nvim-completion-manager'
Plug 'w0rp/ale'
Plug 'cohama/lexima.vim'
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'alvan/vim-closetag'
Plug 'scrooloose/nerdcommenter'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'jiangmiao/auto-pairs'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
call plug#end()

" Theme settings
colorscheme gruvbox
set background=dark

set hidden

" Show side numbers
set number
set relativenumber
set termguicolors

" Enables mouse
set mouse=a

set inccommand=split
set clipboard=unnamed

set expandtab
set shiftwidth=2

filetype plugin on

let mapleader="\<space>"

" Make j and k move to the next row, not file line
nnoremap j gj
nnoremap k gk

" Quickly open/reload vim
nnoremap <leader>ev :split $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" Exit from terminal
:tnoremap <Esc> <C-\><C-n>

" Highlight JSX syntax in JS files
let g:jsx_ext_required = 0

" No backup files
set nobackup

" No writing backups available
set nowritebackup

" Disable swapfiles
set noswapfile

" Show incomplete commands
set showcmd

" Incremental search
set incsearch

" Highlight search results
set hlsearch

" Ignores search capital letters
set smartcase

" Convert tabs in spaces
set expandtab

" Replace tabs to spaces
set expandtabnnoremap <leader>c :source $MYVIMRC<cr>

" Always shows statusbar
set laststatus=2

" Reload automaticaly files edited outside vim
set autoread

" Removes whitespaces on saving
autocmd BufWritePre * :%s/\s\+$//e

nnoremap <c-p> :Files<cr>
nnoremap <c-f> :Ag<space>

let g:UltiSnipsEditSplit="vertical"
let g:UltiSnipsSnippetsDir = '~/.config/nvim/UltiSnips'

" Format pasted text
:nnoremap p p=`]

" Move current line
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

" Limit column
set colorcolumn=100
set cursorline

" Add copy to clipboard
set clipboard+=unnamedplus

" Management tabs
nnoremap <C-t> :tabnew<cr>
nnoremap <A-w> :q<cr>

" Move tabs
nnoremap <A-h> :tabprevious<cr>
nnoremap <A-l> :tabnext<cr>

" NerdTree Toggle shortcut
nnoremap <C-s> :NERDTreeToggle<CR>

" Split pane shortcuts

" New vertical pane, moving to new pane
nnoremap <leader>v <C-w>v<C-w>l
" New horizontal pane, moving to new pane
nnoremap <leader>h <C-w>s<C-w>j

" Move through panes
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l"

" --------------------------------------
" vim-airline
" --------------------------------------

let g:airline#extensions#branch#enabled = 1
let g:airline_powerline_fonts = 0
