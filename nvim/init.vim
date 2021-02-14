if ! filereadable(expand('~/.config/nvim/autoload/plug.vim'))
	echo "Downloading junegunn/vim-plug to manage plugins..."
	silent !mkdir -p ~/.config/nvim/autoload/
	silent !curl "https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim" > ~/.config/nvim/autoload/plug.vim
	autocmd VimEnter * PlugInstall
endif

set exrc

set t_Co=256                       " Enable 256 colors
set termguicolors                  " Enable GUI colors for the terminal to get truecolor
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"

" This must be loaded after we set termguicolors
" This is giving tons of errors, will figure out later
" lua require('init')

call plug#begin('~/.config/nvim/plugged')

" Black formatting
Plug 'ambv/black'

Plug 'SirVer/ultisnips'

Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'francoiscabrol/ranger.vim'

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

" Tmux and Vim Together at Last!
Plug 'hupfdule/vimux'

" Colors and what not
Plug 'norcalli/nvim-colorizer.lua' " This brings me the most joy
Plug 'norcalli/nvim-terminal.lua'
Plug 'challenger-deep-theme/vim', { 'as': 'challenger-deep' }

call plug#end()


let loaded_matchparen = 1
let mapleader = " "

function! CheckBackSpace() abort
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction

" =====================================
" ======== Completion Settings ========
" =====================================
inoremap <silent><expr> <c-p> completion#trigger_completion()

inoremap <silent><expr> <TAB>
  \ pumvisible() ? "\<C-n>" :
  \ CheckBackSpace() ? "\<TAB>" :
  \ completion#trigger_completion()

let g:completion_enable_snippet = 'UltiSnips'
"" Why is this not grabbing from mysnippets folder?
"" let g:UltiSnipsSnippetDirectories=["UltiSnips", "mysnippets"]
let g:UltiSnipsExpandTrigger = "<S-Tab>"

"" Ranger Stuffs
let g:ranger_map_keys = 0
nnoremap <leader>r :Ranger<CR>

autocmd BufEnter * lua require'completion'.on_attach()
