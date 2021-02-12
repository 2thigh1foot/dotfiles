set exrc


call plug#begin('~/.config/nvim/plugged')
" Black formatting
Plug 'ambv/black'

Plug 'SirVer/ultisnips'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

" Neovim lsp Plugins
Plug 'neovim/nvim-lspconfig'
Plug 'nvim-lua/completion-nvim'

" Neovim Treesitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'nvim-treesitter/playground'

" Telescope requirements
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'ThePrimeagen/vim-be-good'

Plug 'gruvbox-community/gruvbox'
call plug#end()

set termguicolors                  " Enable GUI colors for the terminal to get truecolor
" set t_Co=256                     " Enable 256 colors
"

" Tree sitter installs
lua require'nvim-treesitter.configs'.setup { highlight = { enable = true } }

let loaded_matchparen = 1
let mapleader = " "

colorscheme gruvbox
highlight Normal guibg=none

let g:UltiSnipsExpandTrigger = "<S-Tab>"
let g:completion_enable_snippet = 'UltiSnips'

autocmd BufEnter * lua require'completion'.on_attach()

fun! TrimWhitespace()
    let l:save = winsaveview()
    keeppatterns %s/\s\+$//e
    call winrestview(l:save)
endfun

augroup TRIM_WS
    autocmd!
    autocmd BufWritePre * :call TrimWhitespace()
    autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}
augroup END


