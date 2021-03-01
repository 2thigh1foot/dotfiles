--
-- Setup packer .nvim with necessary plugins
--
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
  if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
    return
  end

  local directory = string.format(
    '%s/site/pack/packer/opt/',
    vim.fn.stdpath('data')
  )

  vim.fn.mkdir(directory, 'p')

  local out = vim.fn.system(string.format(
    'git clone %s %s',
    'https://github.com/wbthomason/packer.nvim',
    directory .. '/packer.nvim'
  ))

  print(out)
  print("Downloading packer.nvim...")
  print("( You'll need to restart now )")

  return
end

return require('packer').startup{
    function(use)

        local local_use = function(first, second)
          local plug_path, home
          if second == nil then
            plug_path = first
            home = 'ciante'
          else
            plug_path = second
            home = first
          end

          if vim.fn.isdirectory(vim.fn.expand("~/plugins/" .. plug_path)) == 1 then
            use("~/plugins/" .. plug_path)
          else
            use(string.format('%s/%s', home, plug_path))
          end
        end
        -- Packer can manage itself as an optional plugin
        use {"wbthomason/packer.nvim", opt = true}

        use {"ambv/black"}
        use {"SirVer/ultisnips"}
        use {"fatih/vim-go"}

        -- Neovim lsp
        use {"neovim/nvim-lspconfig"}
        use {"nvim-lua/completion-nvim"}
        use {"nvim-lua/lsp-status.nvim"}

        -- LSP Extensions
        use {"tjdevries/lsp_extensions.nvim"}

        -- Treesitter
        use {"nvim-treesitter/nvim-treesitter"}
        use {"nvim-treesitter/playground"}
        use 'sheerun/vim-polyglot'
        -- Telescope
        use {"nvim-lua/popup.nvim"}
        use {"nvim-lua/plenary.nvim"}
        use {"nvim-telescope/telescope.nvim"}

        use {'prettier/vim-prettier', run = 'yarn install' }

        use {"hupfdule/vimux"}

        use {"vimwiki/vimwiki"}

        -- Colors
        use {"KabbAmine/vCoolor.vim"}
        use {"norcalli/nvim-colorizer.lua"}
        use {"norcalli/nvim-terminal.lua"}
        use {"challenger-deep-theme/vim", as = "challenger-deep"}
        
        use {"justinmk/vim-dirvish"}
    end
}













