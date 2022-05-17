" Basic
syntax on								" enable systax hl
colorscheme zellner							" colorscheme
set autoindent                                                          " automatic indentation
set shiftround								" when shifting, round to shiftwidth multilpy
set number								" show line number
set nowrap								" nowrap line when overflow
set laststatus=2							" show statusline always

set hlsearch								" highlight searches 
set incsearch								" incremental search
set smartcase								" insensitive case when no mayus

set nobackup								" no create backup file
set noswapfile								" no create swap file
set noundofile								" no create undo file

set wildignore=.git
set shell=/bin/bash

" Mappings
let mapleader = "\<Space>"                                              " space as leader

nnoremap <leader>H <S-j>
nnoremap <S-k> 10k
nnoremap <S-j> 10j
vnoremap <S-k> 10k
vnoremap <S-j> 10j

nnoremap <leader>a :Ack!<Space>
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <leader>E :NERDTreeFind<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>gg :G<CR>
nnoremap <leader>gn :cnext<CR>
nnoremap <leader>gp :cprevious<CR>
nnoremap <leader>dg :diffget<CR>
nnoremap <leader>dp :diffput<CR>

" Unused mapping (used by tmux)
nnoremap <C-w>s :vsplit<CR>
nnoremap <C-w>v :split<CR>
nnoremap <C-w>t :tabnew<CR>
nnoremap <C-w>n :tabnext<CR>
nnoremap <C-w>p :tabprevious<CR>

" plugins
"
" ack.vim
" ctrlp.vim
let ctrlp_show_hidden = 1
" editorconfig
" nerdtree
let NERDTreeMinimalUI = 1                                               " remove help message in nerdtree
let NERDTreeRespectWildIgnore = 1                                       " use vim wildignore
let NERDTreeShowHidden = 1                                              " show hidden files
au VimEnter * NERDTree 							" Open NERDTree on startup
au BufEnter NERD_tree_* if winnr('$') == 1 && b:NERDTree.isTabTree() | q | endif " close if nerd tree is the last buffer
au BufEnter NERD_tree_* if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif " dont let others to use nerdtree buffer
" vim-fugitive
" autocmd User fugitive 							" Use .. to go to parent object
" \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
" \   nnoremap <buffer> .. :edit %:h<CR> |
" \ endif
" autocmd BufReadPost fugitive://* set bufhidden=delete			" Delete fugitive buffers
" vim-commentary
" vim-gitgutter
" vim-surround
" vim-tmux-navigator
let tmux_navigator_save_on_switch = 2                                 " save when change tmux window

