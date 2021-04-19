" Stored in dotfiles repository 

:inoremap jk <ESC>

" Useful default keybindings

" bd - close current buffer

" nnoremap <silent> <C-o> :NERDTreeToggle . <CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:NERDTreeMarkBookmarks = 0
let g:NERDTreeShowBookmarks = 1
let g:NERDTreeMinimalUI = 0

" General 
nnoremap <silent> <C-r> :so ~/.config/nvim/init.vim <CR>
nnoremap <silent> <C-h> :bprevious <CR>
nnoremap <silent> <C-l> :bnext <CR>

nnoremap <C-d> "_d
xnoremap <C-d> "_d

" Jump location forward / backwards
nnoremap <S-i> <C-i>
nnoremap <S-o> <C-o>

" Enter / Tab for scrolling
nnoremap <silent> <C-i> 3<C-y>
nnoremap <silent> <C-m> 3<C-d>
nnoremap <silent> <space> 3<C-d>

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
set updatetime=300

" Make <CR> auto-select the first completion item and notify coc.nvim to
" format on enter, <cr> could be remapped by other vim plugin
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list.
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window.
nnoremap <silent> K :call <SID>show_documentation()<CR>

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  elseif (coc#rpc#ready())
    call CocActionAsync('doHover')
  else
    execute '!' . &keywordprg . " " . expand('<cword>')
  endif
endfunction

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

:command! Opconfig tabe | e ~/.config/nvim/init.vim

call plug#begin()

Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ziglang/zig.vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
