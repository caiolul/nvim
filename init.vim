call plug#begin()
	Plug 'scrooloose/nerdtree'
	Plug 'terryma/vim-multiple-cursors'
	Plug 'sheerun/vim-polyglot'
	Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	Plug 'junegunn/fzf.vim'
call plug#end()

set number
set hidden
set relativenumber
set mouse=a
set inccommand=split
let mapleader='\<Space>\'
noremap <F3> :NERDTreeToggle<CR>
