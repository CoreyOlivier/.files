
"Plugins
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'wesQ3/vim-windowswap'
Plug 'vim-python/python-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'junegunn/fzf'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
if !empty(glob("$HOME/.$HOST/plugins_vim"))
  source $HOME/.$HOST/plugins_vim
endif
call plug#end() 

"=================================

"Key Mapping
let mapleader=" "
let @/ = ""
nnoremap <SPACE> <Nop>
nnoremap <leader>b :ls<CR>:buffer<Space>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <leader>se <C-w>
nnoremap <leader>w. <C-w>>
nnoremap <leader>w, <C-w><
nnoremap <leader>h. <C-w>+
nnoremap <leader>h, <C-w>-
inoremap jk <Esc>
vnoremap <leader><leader> <Esc> 
map <leader>s :source ~/.vimrc<CR>
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>y "+y
vnoremap <leader>p "+p
"==================================

"Look
set number

"=================================

" Plugin Settings
"------------------
" Nerd Tree 
 map <leader>t :NERDTreeToggle<CR>
"------------------
" lightline
set laststatus=2
set noshowmode
" Emmet
let g:user_emmet_leader_key=','
"------------------
"Ale
let g:ale_lint_on_text_changed = 'never'
let g:ale_fix_on_save = 1
let g:ale_completion_enabled = 1

"=================================

"Functions
"------------------
function! ToggleNumber()
	if(&relativenumber ==1)
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunc


"=================================
" Multicomputer settings
if !empty(glob("$HOME/.$HOST/local_vim"))
  source $HOME/.$HOST/local_vim
endif
