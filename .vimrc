""""""""""""""""""""""""""""""""""""""""""""""""""
" CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on " enable systax hl
colorscheme koehler " colorscheme

set termguicolors " enable gui colors
set relativenumber
set nowrap
set ignorecase " insensitive by default
set smartcase " sensitive when uppercase

set nohlsearch " highlight searches
set incsearch " incremental search

set splitbelow " vertical split below
set splitright " horizontal split right

set nobackup " no create backup file
set noswapfile " no create swap file
set noundofile " no create undo file

set backspace=indent,eol,start
set completeopt=noselect,noinsert,menuone,longest
set wildignore+=.git

" Yank to clipboard in wsl
if executable("clip.exe")
 autocmd TextYankPost * if v:event.operator ==# 'y' | call system("clip.exe", @0) | endif
endif

""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""
let mapleader = " " " space as leader

nnoremap <leader>w :w

nnoremap <S-H> <S-j>
nnoremap <S-k> 20k
nnoremap <S-j> 20j
xnoremap <S-k> 20k
xnoremap <S-j> 20j

nnoremap <leader>fe :NERDTreeFocus<CR>
nnoremap <leader>fc :NERDTreeFind<CR>
nnoremap <leader>fa :Ack!<Space>
nnoremap <leader>ff :CtrlP<CR>

nnoremap gd :ALEGoToDefinition<cr>
nnoremap gr :ALERename<cr>
nnoremap <leader>gg :G<CR>
nnoremap <leader>gn :cnext<CR>
nnoremap <leader>gp :cprevious<CR>
nnoremap <leader>dg :diffget<CR>
nnoremap <leader>dp :diffput<CR>

" Unused mapping (used by tmux)
nnoremap <C-w>s :vsplit<CR>
nnoremap <C-w>v :split<CR>
nnoremap <C-w>n :bnext<CR>
nnoremap <C-w>p :bprevious<CR>

""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""
" ack.vim
let g:ackprg = 'ag --vimgrep --hidden'
" ctrlp
let g:ctrlp_working_path_mode = 'ra' " root directory .git
let g:ctrlp_user_command = 'ag %s -l --no-color --hidden -g ""'
" editorconfig-vim
" fugitive
" nerdtree

let g:NERDTreeMinimalUI = 1 " remove help message in nerdtree
let g:NERDTreeRespectWildIgnore = 1 " use vim wildignore
let g:NERDTreeShowHidden = 1 " show hidden files
let g:NERDTreeDirArrowExpandable = ''
let g:NERDTreeDirArrowCollapsible = ''
let g:NERDTreeCustomOpenArgs = {'file':{'where':'t'}, 'dir': {'where': 't'}}
autocmd VimEnter * NERDTree | if argc() > 0 | wincmd p | endif " Open nerdtree, if file specified go to that window
autocmd BufEnter NERD_tree_* if winnr('$') == 1 && b:NERDTree.isTabTree() | q | endif " close if nerd tree is the last buffer
" autocmd BufEnter NERD_tree_* if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif " dont let others to use nerdtree buffer
" nerdtree-git-plugin
let g:NERDTreeGitStatusUseNerdFonts = 1
" vim-airline
let g:airline#extensions#tabline#enabled = 1 " show buffers as tabs
" vim-airline-themes
let g:airline_theme='dark theme with powerline symbols'
" vim-commentary
" vim-gitgutter
" vim-surround
" vim-tmux-navigator
let g:tmux_navigator_save_on_switch = 2 " save when change tmux window


"" " ale
"" set omnifunc=ale#completion#OmniFunc                        " Set function for completions
"" let ale_completion_enabled = 1                              " Enable ale completion
"" let ale_fix_on_save = 1                                     " Run fixers on save
"" let ale_fixers = {
"" \ 'python': ['black'],
"" \}                                                          " Set fixers based on filetype
"" let ale_linters = {
"" \ 'python': ['pylsp', 'flake8'],
"" \}                                                          " Set linters based on filetype
"" let ale_python_black_options = '--line-length=79'
"" " vim-textobj-argument
"" " vim-textobj-python
"" " vim-textobj-user
