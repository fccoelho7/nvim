call plug#begin()
Plug 'morhetz/gruvbox'
Plug 'terryma/vim-multiple-cursors'
Plug 'sheerun/vim-polyglot'
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
call plug#end()

" theme settings
colorscheme gruvbox
set background=dark

set hidden

" show side numbers
set number
set relativenumber
set termguicolors

" enables mouse
set mouse=a

set inccommand=split
set clipboard=unnamed

set expandtab
set shiftwidth=2

filetype plugin on

let mapleader="\<space>"

" exit from terminal
:tnoremap <Esc> <C-\><C-n>

" highlight JSX syntax in JS files
let g:jsx_ext_required = 0

" no backup files
set nobackup

" no writing backups available
set nowritebackup

" disable swapfiles
set noswapfile

" show incomplete commands
set showcmd

" incremental search
set incsearch

" highlight search results
set hlsearch

" ignores search capital letters
set smartcase

" convert tabs in spaces
set expandtab

" replace tabs to spaces
set expandtabnnoremap <leader>c :source $MYVIMRC<cr>

" always shows statusbar
set laststatus=2

" status bar more efficient
set statusline=%f\ %=L:%l/%L\ %c\ (%p%%)

" reload automaticaly files edited outside vim
set autoread

" removes whitespaces on saving
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
