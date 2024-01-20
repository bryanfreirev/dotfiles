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

nnoremap <s-H> <s-j>
nnoremap <s-k> 20k
nnoremap <s-j> 20j
xnoremap <s-k> 20k
xnoremap <s-j> 20j

nnoremap gd :ALEGoToDefinition<cr>
nnoremap gr :ALERename<cr>
nnoremap gh :ALEHover<cr>

nnoremap <leader>fe :NERDTreeMirror<cr>:NERDTreeFocus<cr>
nnoremap <leader>fc :NERDTreeFind<cr>
nnoremap <leader>fa :Ack!<Space>
nnoremap <leader>ff :CtrlP<cr>
nnoremap <leader>fg :Goyo<cr>

nnoremap <leader>gg :G<cr>
nnoremap <leader>gn :cnext<cr>
nnoremap <leader>gp :cprevious<cr>

nnoremap <leader>dg :diffget<cr>
nnoremap <leader>dp :diffput<cr>

" Unused mapping (used by tmux)
nnoremap <c-w>s :vsplit<cr>
nnoremap <c-w>v :split<cr>
nnoremap <c-w>n :tabnext<cr>
nnoremap <c-w>p :tabprevious<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGINS
""""""""""""""""""""""""""""""""""""""""""""""""""
" ale
" set omnifunc=ale#completion#OmniFunc " Set function for completions
let g:ale_completion_enabled = 1
let g:ale_fix_on_save = 1
let g:ale_completion_autoimport = 1
let g:ale_fixers = {
\ 'python': ['ruff', 'ruff_format'],
\}
let ale_linters = {
\ 'python': ['ruff', 'pyright'],
\}
" ack.vim
let g:ackprg = 'ag --vimgrep --hidden'
" ctrlp
let g:ctrlp_working_path_mode = 'ra' " root directory .git
let g:ctrlp_user_command = 'ag %s -l --no-color --hidden -g ""'
" editorconfig-vim
" fugitive
" goyo
let g:goyo_width = 120
let g:goyo_height = '100%'
let g:goyo_linenr = 1
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


"" " vim-textobj-argument
"" " vim-textobj-python
"" " vim-textobj-user
