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

nnoremap <C-d> "_d
xnoremap <C-d> "_d

" Zig/Zgl specific commands
nnoremap <silent> <C-b> :!zig build <CR>
" nnoremap <silent> <C-r> :zgl <CR>

let g:tagbar_type_zig = {
	\ 'ctagstype' : 'zig',
	\ 'kinds'     : [
		\ 's:structs',
		\ 'u:unions',
		\ 'e:enums',
		\ 'v:variables',
		\ 'm:members',
        \ 'f:functions',
        \ 'r:errors'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 'e' : 'enum',
		\ 'u' : 'union',
		\ 's' : 'struct',
        \ 'r' : 'error'
	\ },
	\ 'scope2kind' : {
		\ 'enum' : 'e',
		\ 'union' : 'u',
		\ 'struct' : 's',
		\ 'error' : 'r'
	\ },
	\ 'ctagsbin'  : '~/ztags/zig-cache/ztags',
	\ 'ctagsargs' : ''
\ }

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

" zls 

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ "\<TAB>"
  
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

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
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
