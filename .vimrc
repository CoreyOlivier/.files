
"Plugins
call plug#begin('~/.vim/plugged')
Plug 'tpope/vim-surround'
Plug 'scrooloose/nerdtree'
Plug 'wesQ3/vim-windowswap'
Plug 'vim-python/python-syntax'
Plug 'jiangmiao/auto-pairs'
Plug 'dracula/vim',{'as':'dracula'}
Plug 'junegunn/fzf'
Plug 'itchyny/lightline.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
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

"==================================

"Look
set t_Co=256
set number
set softtabstop=2
set expandtab
set shiftwidth=2
set tabstop=2
set incsearch
set hlsearch
set hidden
set splitbelow
set splitright
set cursorline
syntax enable
color dracula
hi CursorLine gui=none
hi CursorLine cterm=underline
hi Normal guibg=NONE ctermbg=NONE

"=================================

" Plugin Settings
"------------------
" Nerd Tree 
 map <leader>t :NERDTreeToggle<CR>
"------------------
" lightline
set laststatus=2
set noshowmode
let g:lightline = {
  \ 'colorscheme': 'Dracula',
  \}
let s:palette = g:lightline#colorscheme#{g:lightline.colorscheme}#palette
let s:palette.normal.middle = [ [ 'NONE', 'NONE', 'NONE', 'NONE' ] ]
let s:palette.inactive.middle = s:palette.normal.middle
let s:palette.tabline.middle = s:palette.normal.middle
" Emmet
let g:user_emmet_leader_key=','
"------------------
"Ale
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
source $HOME/.$HOST.vim
