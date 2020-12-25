let mapleader = "\<Space>"

set nocompatible

" show line numbers
set number

" turn off autoindent
set nocindent
set nosmartindent
set noautoindent
set nocopyindent
set indentexpr=
set lazyredraw

set ruler

" set highlight matches
set hlsearch

syntax on

set sidescroll=6

filetype indent off
filetype plugin indent off

" language specifc configs
autocmd Filetype c setlocal tabstop=8 shiftwidth=8
autocmd Filetype rust setlocal softtabstop=4 shiftwidth=4 expandtab
autocmd Filetype python setlocal softtabstop=4 shiftwidth=4 expandtab

" plugins
call plug#begin()
Plug 'itchyny/lightline.vim'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'neoclide/coc.nvim', {'branch': 'release'}

" language theming
Plug 'cespare/vim-toml'
Plug 'stephpy/vim-yaml'
Plug 'rust-lang/rust.vim'
Plug 'plasticboy/vim-markdown'

call plug#end()

" colors
source ~/.config/nvim/themes/c.vim
source ~/.config/nvim/themes/toml.vim
source ~/.config/nvim/themes/general_theme.vim

if executable('rg')
	set grepprg=rg\ --no-heading\ --vimgrep
	set grepformat=%f:%l:%c:%m
endif

let g:fzf_layout = { 'down': '~40%' }

" keyboard bindings
nmap <leader>w :w<CR>

nnoremap <leader><leader> <c-^>
nmap <leader>; :Buffers<CR>

noremap <leader>s :Rg
noremap Q :q<CR>
noremap q :bd<CR>
noremap <C-q> :qa<CR>
noremap S :w<CR>
noremap <C-s> :w<CR>
noremap <C-x> :bd<CR>

noremap <C-\> :%s///g
noremap ; :

inoremap <C-d> <esc>ddi

noremap <C-o> :Files<CR>

inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" : "\<TAB>"

