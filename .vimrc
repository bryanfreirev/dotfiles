" Basic
set nocompatible

set autoindent                                                          " automatic indentation
set expandtab                                                           "
set shiftround
set shiftwidth=4
set smarttab
set tabstop=4
set textwidth=200

set background=light
set number
set wildmenu
set nowrap
set laststatus=2

set nofoldenable
set foldmethod=indent
set foldnestmax=9
set pastetoggle=<F2>

set hlsearch
set ignorecase
set incsearch
set smartcase

set noswapfile
set nobackup

set wildignore+=.git,__pycache__,.*cache,*.egg-info
set clipboard=unnamedplus
set completeopt+=longest,menuone,preview
set backspace=indent,eol,start

syntax on
filetype plugin on
" autocmd bufwritepost .vimrc source $MYVIMRC
autocmd VimLeave * call system("xsel -ib", getreg('+'))

" Mappings
let mapleader = "\<Space>"                                              " space as leader

nnoremap <leader>J <S-j>
nnoremap <S-k> <C-u>
nnoremap <S-j> <C-d>

nnoremap <leader>a :Ack!<Space>
nnoremap <leader>e :NERDTreeMirror<CR>:NERDTreeFocus<CR>
nnoremap <leader><S-e> :NERDTreeFind<CR>
nnoremap <leader>f :CtrlP<CR>
nnoremap <leader>g :G<CR>
map <leader>h <Plug>(easymotion-b)
map <leader>j <Plug>(easymotion-j)
map <leader>k <Plug>(easymotion-k)
map <leader>l <Plug>(easymotion-w)
nnoremap <leader>t :TagbarToggle<CR>

nnoremap <C-w>s :vsplit<CR>
nnoremap <C-w>v :split<CR>
nnoremap <C-w>t :tabnew<CR>
nnoremap <C-w>n :tabnext<CR>
nnoremap <C-w>p :tabprevious<CR>

" plugins
"
" ack.vim
let g:ackprg = 'ag --vimgrep'                                           " use ag instead of ack
" ale
let g:ale_completion_enabled = 1
let g:ale_completion_autoimport = 1
let g:ale_fix_on_save = 1
let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\}
let g:ale_linters = {
\   'python': ['pyls'],
\}
let g:ale_python_pyls_config = {
\   'pyls': {
\       'configurationSources': ['flake8'],
\       'plugins': {
\           'pyls_mypy': { 'enabled': v:true, 'live_mode': v:false }
\       }
\   }
\}
" ctrlp.vim
" nerdtree
let NERDTreeQuitOnOpen = 3                                              " quit on open file or bookmark
let NERDTreeMinimalUI = 1                                               " remove help message in nerdtree
let NERDTreeRespectWildIgnore = 1                                       " use vim wildignore
let NERDTreeShowHidden = 1                                              " show hidden files in nerdtree
au BufEnter NERD_tree_* if winnr('$') == 1 && b:NERDTree.isTabTree() | q | endif " close if nerd tree is the last buffer
au BufEnter NERD_tree_* if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif " dont let others to use nerdtree buffer
" tagbar
let g:tagbar_autoclose = 1                                              " close tagbar on enter
let g:tagbar_autofocus = 1                                              " autofocus on tagbar
" vim-commentary
" vim-easymotion
let g:EasyMotion_do_mapping = 0                                         " Disable default Mappings
let g:EasyMotion_smartcase = 1                                          " Turn on case-insensitive feature
" vim-fugitive
" vim-gitgutter
" vim-surround
" vim-tmux-navigator
let g:tmux_navigator_save_on_switch = 2                                 " save when change tmux window
