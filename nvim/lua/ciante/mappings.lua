local key_mapper = function(mode, key, result)
  vim.api.nvim_set_keymap(
    mode,
    key,
    result,
    {noremap = true, silent = true}
  )
end

key_mapper('', '<up>', '<nop>')
key_mapper('', '<down>', '<nop>')
key_mapper('', '<left>', '<nop>')
key_mapper('', '<right>', '<nop>')
key_mapper('n', 'gD', ':lua vim.lsp.buf.declaration()<CR>')
key_mapper('n', 'gi', ':lua vim.lsp.buf.implementation()<CR>')
key_mapper('n', 'gw', ':lua vim.lsp.buf.document_symbol()<CR>')
key_mapper('n', 'gW', ':lua vim.lsp.buf.workspace_symbol()<CR>')
key_mapper('n', 'gr', ':lua vim.lsp.buf.references()<CR>')
key_mapper('n', 'gt', ':lua vim.lsp.buf.type_definition()<CR>')
key_mapper('n', 'K', ':lua vim.lsp.buf.hover()<CR>')
key_mapper('n', '<c-k>', ':lua vim.lsp.buf.signature_help()<CR>')
key_mapper('n', '<leader>af', ':lua vim.lsp.buf.code_action()<CR>')
key_mapper('n', '<leader>rn', ':lua vim.lsp.buf.rename()<CR>')
key_mapper('n', '<leader>ff', ':lua require"telescope.builtin".find_files({hidden = true})<CR>')
key_mapper('n', '<leader>fg', ':lua require"telescope.builtin".live_grep()<CR>')
key_mapper('n', '<leader>fh', ':lua require"telescope.builtin".help_tags()<CR>')
key_mapper('n', '<leader>fb', ':lua require"telescope.builtin".buffers()<CR>')
key_mapper('n', '<Tab>', ':bnext<CR>')
key_mapper('n', '<S-Tab>', ':bprevious<CR>')
key_mapper('n', '<leader>z', ':luafile %<CR>')
key_mapper('n', '<leader>g', ':Dirvish<CR>')
key_mapper('n', '<leader>x', ':bd<CR>')
key_mapper('n', '<leader>xx', ':%bd<CR>')
key_mapper('n', '<C-c>', ':bp|bd #<CR>')
key_mapper('n', '<leader>r', ':%s/<<C-r><C-w>>/')
key_mapper('n', '<leader>u', ':UndotreeToggle<CR>')
key_mapper('n', '<leader>u', ':UndotreeToggle<CR>')
key_mapper('n', '<leader>j', '<C-w><C-j>')
key_mapper('n', '<leader>k', '<C-w><C-k>')
key_mapper('n', '<leader>l', '<C-w><C-l>')
key_mapper('n', '<leader>h', '<C-w><C-h>')
key_mapper('n', '<leader>p', ':PrettierAsync<CR>')

-- Mapping Vim bindings to split windows
key_mapper('n', '<C-h>', '<C-w>h')
key_mapper('n', '<C-j>', '<C-w>j')
key_mapper('n', '<C-k>', '<C-w>k')
key_mapper('n', '<C-l>', '<C-w>l')

