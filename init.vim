call plug#begin()
"Flutter plugins
    Plug 'dart-lang/dart-vim-plugin'
    Plug 'natebosch/vim-lsc'
    Plug 'natebosch/vim-lsc-dart'
    ""
    Plug 'scrooloose/nerdtree'
    Plug 'Xuyuanp/nerdtree-git-plugin'
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
    Plug 'ryanoasis/vim-devicons'
    Plug 'airblade/vim-gitgutter'
    Plug 'ctrlpvim/ctrlp.vim' " fuzzy find files
    Plug 'scrooloose/nerdcommenter'
    Plug 'christoomey/vim-tmux-navigator'
    Plug 'HerringtonDarkholme/yats.vim' 
    Plug 'scrooloose/nerdtree'
    Plug 'terryma/vim-multiple-cursors'
    Plug 'sheerun/vim-polyglot'
    Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
    Plug 'junegunn/fzf.vim'
    Plug 'mxw/vim-jsx'
    Plug 'pangloss/vim-javascript'
    Plug 'dikiaap/minimalist'
    Plug 'sts10/vim-pink-moon'
    Plug 'OmniSharp/omnisharp-vim'
    Plug 'mhinz/vim-signify'
    Plug 'nickspoons/vim-sharpenup'
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'tpope/vim-dadbod'
    Plug 'kristijanhusak/vim-dadbod-ui'
    Plug 'vim-scripts/dbext.vim'
    Plug 'dyng/ctrlsf.vim'
    Plug 'https://github.com/joshdick/onedark.vim.git'
	  " UI related
    Plug 'chriskempson/base16-vim'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
  "------------------------ COC ------------------------
  "" coc for tslinting, auto complete and prettier
    Plug 'neoclide/coc.nvim', {'do': 'yarn install --frozen-lockfile'}
  " coc extensions
 " "------------------------ VIM TSX ------------------------
  " " by default, if you open tsx file, neovim does not show syntax colors
  " " vim-tsx will do all the coloring for jsx in the .tsx file
    Plug 'ianks/vim-tsx'
  " "------------------------ VIM TSX ------------------------
  " " by default, if you open tsx file, neovim does not show syntax colors
  " " typescript-vim will do all the coloring for typescript keywords
    Plug 'leafgarland/typescript-vim'
  " "------------------------ THEME ------------------------
  " " most importantly you need a good color scheme to write good code :D
    Plug 'dikiaap/minimalist'
    Plug 'bluz71/vim-nightfly-guicolors'
  "
call plug#end()
set hidden " Some servers have issues with backup files, see #649 set nobackup set nowritebackup " Better display for messages set cmdheight=2 " You will have bad experience for diagnostic messages when it's default 4000.
set updatetime=300
" don't give |ins-completion-menu| messages.
set shortmess+=c
" always show signcolumns
set signcolumn=yes
syntax on
syntax enable
" colorscheme
colorscheme nightfly
let base16colorspace=256
set smarttab
set cindent
set tabstop=2
set shiftwidth=2
set number
set hidden
set mouse=a
set noshowmode
set noshowmatch
set nolazyredraw
" Turn off backup
set nobackup
set noswapfile
set nowritebackup
" Search configuration
set ignorecase                    " ignore case when searching
set smartcase                     " turn on smartcase
" Tab and Indent configuration
set expandtab
set shiftwidth=4
" vim-autoformat
set encoding=UTF-8
set inccommand=split

inoremap jk <ESC>
nmap <A-e> :NERDTreeToggle<CR>
vmap ++ <plug>NERDCommenterToggle
nmap ++ <plug>NERDCommenterToggle

"==========AUTOCMD ================================ 
" by default .ts file are not identified as typescript and .tsx files are not
" " identified as typescript react file, so add following
au BufNewFile,BufRead *.ts setlocal filetype=typescript
au BufNewFile,BufRead *.tsx setlocal filetype=typescript.tsx
" " == AUTOCMD END ================================
let g:coc_global_extensions = ['coc-tslint-plugin', 'coc-tsserver', 'coc-emmet', 'coc-css', 'coc-yank', 'coc-prettier','coc-omnisharp', 'coc-json', 'coc-sql', 'coc-eslint', 'coc-html', 'coc-db'] 
let g:NERDTreeGitStatusWithFlags = 1
"let g:WebDevIconsUnicodeDecorateFolderNodes = 1
"let g:NERDTreeGitStatusNodeColorization = 1
"let g:NERDTreeColorMapCustom = {
    "\ "Staged"    : "#0ee375",  
    "\ "Modified"  : "#d9bf91",  
    "\ "Renamed"   : "#51C9FC",  
    "\ "Untracked" : "#FCE77C",  
    "\ "Unmerged"  : "#FC51E6",  
    "\ "Dirty"     : "#FFBD61",  
    "\ "Clean"     : "#87939A",   
    "\ "Ignored"   : "#808080"   
    "\ }                         


let g:NERDTreeIgnore = ['^node_modules$']
let g:NERDTreeShowHidden=1

" vim-prettier
"let g:prettier#quickfix_enabled = 0
"let g:prettier#quickfix_auto_focus = 0
" prettier command for coc
command! -nargs=0 Prettier :CocCommand prettier.formatFile
" run prettier on save
"let g:prettier#autoformat = 0
"autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue,*.yaml,*.html PrettierAsync

" True Color Support if it's avaiable in terminal
if has("termguicolors")
    set termguicolors
endif
if has("gui_running")
  set guicursor=n-v-c-sm:block,i-ci-ve:block,r-cr-o:blocks
endif
