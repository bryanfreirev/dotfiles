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

set wildignore=.git,venv

" Mappings
let mapleader = "\<Space>"                                              " space as leader

nnoremap <leader>H <S-j>
nnoremap <S-k> 10k
nnoremap <S-j> 10j
vnoremap <S-k> 10k
vnoremap <S-j> 10j

nnoremap gd :ALEGoToDefinition<cr>
nnoremap gr :ALERename<cr>

nnoremap <leader>a :Ack!<Space>
nnoremap <leader>e :NERDTreeFocus<CR>
nnoremap <leader>E :NERDTreeFind<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>gg :G<CR>
nnoremap <leader>gn :cnext<CR>
nnoremap <leader>gp :cprevious<CR>
nnoremap <leader>dg :diffget<CR>
nnoremap <leader>dp :diffput<CR>

" camelcase motions
map <silent> w <Plug>CamelCaseMotion_w
map <silent> b <Plug>CamelCaseMotion_b
map <silent> e <Plug>CamelCaseMotion_e
map <silent> ge <Plug>CamelCaseMotion_ge
sunmap w
sunmap b
sunmap e
sunmap ge
omap <silent> iw <Plug>CamelCaseMotion_iw
xmap <silent> iw <Plug>CamelCaseMotion_iw
omap <silent> ib <Plug>CamelCaseMotion_ib
xmap <silent> ib <Plug>CamelCaseMotion_ib
omap <silent> ie <Plug>CamelCaseMotion_ie
xmap <silent> ie <Plug>CamelCaseMotion_ie

" Unused mapping (used by tmux)
nnoremap <C-w>s :vsplit<CR>
nnoremap <C-w>v :split<CR>
nnoremap <C-w>t :tabnew<CR>
nnoremap <C-w>n :tabnext<CR>
nnoremap <C-w>p :tabprevious<CR>

" plugins
"
" ack.vim
" ale
set omnifunc=ale#completion#OmniFunc                                    " Set function for completions
let ale_completion_enabled = 1                                          " Enable ale completion
let ale_fix_on_save = 1                                                 " Run fixers on save
let ale_fixers = {
\ 'python': ['black'],
\}                                                                      " Set fixers based on filetype
let ale_linters = {
\ 'python': ['pylsp', 'flake8'],
\}                                                                      " Set linters based on filetype
let ale_python_black_options = '--line-length=79'
" camelcasemotion
" ctrlp.vim
let ctrlp_show_hidden = 1                                               " Show hidden files in ctrlp buffer
" editorconfig
" nerdtree
let NERDTreeMinimalUI = 1                                               " remove help message in nerdtree
let NERDTreeRespectWildIgnore = 1                                       " use vim wildignore
let NERDTreeShowHidden = 1                                              " show hidden files
au VimEnter * NERDTree 							                        " Open NERDTree on startup
au BufEnter NERD_tree_* if winnr('$') == 1 && b:NERDTree.isTabTree() | q | endif " close if nerd tree is the last buffer
au BufEnter NERD_tree_* if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif " dont let others to use nerdtree buffer
" textobj-entire
" vim-fugitive
" vim-airline
" vim-airline-themes
let airline_theme='light'                                               " set airline theme
" vim-commentary
" vim-gitgutter
" vim-surround
" vim-textobj-argument
" vim-textobj-python
" vim-textobj-user
" vim-tmux-navigator
let tmux_navigator_save_on_switch = 2                                 " save when change tmux window
