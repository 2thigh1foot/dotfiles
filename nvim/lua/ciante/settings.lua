local o, wo, bo = vim.o, vim.wo, vim.bo
local map       = vim.api.nvim_set_keymap

-- Map leader key
--map('n', '<Space>', '', {})


-- Globals
o.guicursor		        = 'n-v-c:block'
o.hlsearch 		        = false
o.hidden 		        = true
o.belloff   	        = 'all'
o.swapfile 		        = false
o.laststatus 	        = 2
o.incsearch 	        = true
o.splitbelow 	        = true
o.splitright 	        = true
o.backup 		        = false
o.undodir               = vim.fn.expand('~/.config/nvim/undo')
o.undofile              = true
o.incsearch             = true
o.scrolloff 	        = 8
o.showmode 		        = false
o.isfname               = '@-@'
o.ls                    = 0
o.compatible            = false
o.shortmess             = 'c'
o.wildmode              = 'longest,list,full'
o.cmdheight             = 1
o.updatetime            = 50
o.syntax                = 'on'
o.encoding              = 'utf-8'
o.completeopt           = 'menuone,noinsert,noselect'


-- Window Options
wo.wrap 		        = false
wo.nu 			        = true
wo.rnu 			        = true


-- Buffer Options
-- Tabs
bo.tabstop 		        = 4
bo.softtabstop          = 4
bo.shiftwidth           = 4
bo.expandtab            = true
bo.smartindent          = true

-- Format Options
bo.formatoptions        = 'cqrnj' 

-- Swap file
bo.swapfile 	        = false

-- True colors
o.termguicolors         = true
vim.g["&t_8f"]          = '<Esc>[38;2;%lu;%lu;%lum]'
vim.g["&t_8b"]          = '<Esc>[48;2;%lu;%lu;%lum]'

vim.cmd[[filetype plugin on]]

vim.cmd[[colorscheme challenger_deep]]

vim.cmd[[augroup transparent_bg]]
vim.cmd[[au!]]
vim.cmd[[au ColorScheme * hi LineNr guifg=none guibg=none]]
vim.cmd[[au ColorScheme * hi normal guibg=none]]
vim.cmd[[augroup end]]

