" Stored in dotfiles repository 

:inoremap jk <ESC>

" Useful default keybindings

" bd - close current buffer

nnoremap <silent> <C-o> :NERDTreeToggle . <CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMarkBookmarks = 0
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeMinimalUI = 0

" General 
nnoremap <silent> <C-R> :so ~/.config/nvim/init.vim <CR>
nnoremap <silent> <C-h> :bprevious <CR>
nnoremap <silent> <C-l> :bnext <CR>

" Zig/Zgl specific commands
nnoremap <silent> <C-b> :!zig build <CR>
nnoremap <silent> <C-r> :zgl <CR>

set guifont=hack:h20

let mapleader = ","

" Airline
let g:airline#extentions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extentions#tabline#show_buffers = 1
let g:airline_theme = 'minimalist'

set hidden
set number
set tabstop=2
set shiftwidth=2
set expandtab

nnoremap <silent> <C-i> 3<C-y>
nnoremap <silent> <C-m> 3<C-d>

" NerdCommenter
let g:NERDSpaceDelims = 1
let g:NERDCompactSexyComs = 1

set clipboard=unnamedplus

syntax enable
set background=dark
" colorscheme solarized

:command! Opconfig tabe | e ~/.config/nvim/init.vim

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ziglang/zig.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()
