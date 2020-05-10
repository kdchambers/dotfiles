:inoremap jk <ESC>

nnoremap <silent> <C-o> :NERDTreeToggle . <CR>

" General 
nnoremap <silent> <C-r> :so ~/.config/nvim/init.vim <CR>
set number
set tabstop=2
set shiftwidth=2
set expandtab

" Tabs
nnoremap <silent> <C-n> :tabe <CR>
nnoremap <silent> <C-j> gT
nnoremap <silent> <C-k> gt
nnoremap <silent> <C-z> :tabclose 

" Pane navigation
"nnoremap <C-L> <C-W><C-L>
"nnoremap <C-H> <C-W><C-H>

nnoremap <silent> <C-i> 3<C-y>
nnoremap <silent> <C-m> 3<C-d>

set clipboard=unnamedplus

syntax enable
set background=dark
" colorscheme solarized

:command! Opconfig tabe | e ~/.config/nvim/init.vim

call plug#begin()

"Plug 'pangloss/vim-javascript'
Plug 'altercation/vim-colors-solarized'
"Plug 'posva/vim-vue'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ziglang/zig.vim'

call plug#end()
