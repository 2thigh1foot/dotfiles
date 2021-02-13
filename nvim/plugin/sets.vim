set guicursor=n-v-c:block
set nohlsearch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set relativenumber
set nowrap
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set incsearch
set scrolloff=8
set noshowmode
set signcolumn=yes
set isfname+=@-@
set ls=0
set nocompatible

filetype plugin on
syntax on
set encoding=utf-8

colorscheme challenger_deep
highlight Normal guibg=none


" Shut off auto commenting on newline
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o

" Enable autocompletw
set wildmode=longest,list,full

"
" " Give more space for displaying messages.
set cmdheight=1


" " Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" " delays and poor user experience.
set updatetime=50


" " Don't pass messages to |ins-completion-menu|.
set shortmess+=c


" Mapping Vim bindings to split windows
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" Automatically deletes all trailing whitespace and newlines at end of file on save.
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\n\+\%$//e
autocmd BufWritePre *.[ch] %s/\%$/\r/e
