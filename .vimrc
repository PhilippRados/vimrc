"	    ██╗   ██╗██╗███╗   ███╗██████╗  ██████╗
"		██║   ██║██║████╗ ████║██╔══██╗██╔════╝
"		██║   ██║██║██╔████╔██║██████╔╝██║     
"		╚██╗ ██╔╝██║██║╚██╔╝██║██╔══██╗██║     
" 		 ╚████╔╝ ██║██║ ╚═╝ ██║██║  ██║╚██████╗
"		  ╚═══╝  ╚═╝╚═╝     ╚═╝╚═╝  ╚═╝ ╚═════╝
																	
let mapleader = " "

set number
syntax on

set tabstop=4
set relativenumber

let g:polyglot_disabled = ['markdown']
set tags=./tags;/

nnoremap <silent> <C-f> :Files ~/documents<CR>
nnoremap s :w<CR>
nnoremap t :vert term<CR>
nnoremap r :e ~/.vimrc<CR> 
nnoremap + :vertical resize +5<CR> 
nnoremap - :vertical resize -5<CR> 
nnoremap * :resize +3<CR> 
nnoremap _ :resize -3<CR> 

filetype plugin indent on
nmap <leader>n :NERDTreeToggle<CR>
nmap <leader>m :MaximizerToggle<CR>

"moving lines
vnoremap j :m '>+1<CR>gv=gv
vnoremap k :m '<-2<CR>gv=gv

call plug#begin('~/.vim/plugged')
"General vim stuff:
Plug 'Raimondi/delimitMate'
Plug 'scrooloose/syntastic'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'preservim/nerdtree'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf'
Plug 'mhinz/vim-startify'
Plug 'ryanoasis/vim-devicons'
Plug 'szw/vim-maximizer'
Plug 'preservim/nerdcommenter'
Plug 'vwxyutarooo/nerdtree-devicons-syntax'

"python:
Plug 'python-mode/python-mode', { 'for': 'python', 'branch': 'develop' }

"Autocomplete:
Plug 'neoclide/coc.nvim', {'branch': 'release'}

"Colorscheme:
Plug 'sainnhe/sonokai'
Plug 'sheerun/vim-polyglot'

call plug#end()

let g:startify_custom_header = [
\   '	██╗   ██╗██╗███╗   ███╗',
\	'	██║   ██║██║████╗ ████║',
\	'	██║   ██║██║██╔████╔██║',   
\	'	╚██╗ ██╔╝██║██║╚██╔╝██║',    
\    ' 	 ╚████╔╝ ██║██║ ╚═╝ ██║',
\     '	  ╚═══╝  ╚═╝╚═╝     ╚═╝',                                         
\]

set t_Co=256
let g:sonokai_style = 'andromeda'
set termguicolors
let g:sonokai_disable_italic_comment = 1
colorscheme sonokai

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

"vim-polyglot
set nocompatible
