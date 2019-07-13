call plug#begin('~/.vim/plugged')
	Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'yukunlin/auto-pairs'
  Plug 'nathanaelkane/vim-indent-guides'
  Plug 'morhetz/gruvbox'
  Plug 'majutsushi/tagbar'
  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'scrooloose/nerdtree'
  Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': 'bash install.sh',
    \ }
  Plug 'junegunn/fzf'

  if has('nvim')
    Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  else
    Plug 'Shougo/deoplete.nvim'
    Plug 'roxma/nvim-yarp'
    Plug 'roxma/vim-hug-neovim-rpc'
  endif
  Plug 'Shougo/vimproc.vim', {'do' : 'make'}
  Plug 'idanarye/vim-vebugger'
call plug#end()

colorscheme gruvbox

let g:deoplete#enable_at_startup = 1
let g:indent_guides_enable_on_vim_startup = 1

syntax on
set number
set expandtab  
set tabstop=4  
set shiftwidth=2  
set autoindent  
set smartindent  
set bg=dark  
set nowrap
set termguicolors
set t_Co=256

inoremap jk <Esc>
map <C-b> :TagbarToggle<CR>
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

let g:LanguageClient_serverCommands = {
    \ 'rust': ['~/.cargo/bin/rustup', 'run', 'stable', 'rls'],
    \ 'javascript': ['/usr/local/bin/javascript-typescript-stdio'],
    \ 'javascript.jsx': ['tcp://127.0.0.1:2089'],
    \ 'python': ['/usr/local/bin/pyls'],
    \ 'ruby': ['~/.rbenv/shims/solargraph', 'stdio'],
    \ }

nnoremap <F5> :call LanguageClient_contextMenu()<CR>
" Or map each action separately
nnoremap <silent> K :call LanguageClient#textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient#textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient#textDocument_rename()<CR>

" use current git repo/file director with ctrl p
let g:ctrlp_working_path_mode = 'ra'
"
" Open when no files were speficied on vim launch
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" Toggle nerdtree
map <C-n> :NERDTreeToggle<CR>

set makeprg=java
set clipboard=unnamed
