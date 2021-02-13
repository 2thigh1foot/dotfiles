set completeopt=menuone,noinsert,noselect

highlight LspDiagnosticsDefaultError guibg=#D7001B
highlight LspDiagnosticsSignError guibg=none
highlight LspDiagnosticsUnderlineWarn guibg=#D77600

highlight clear SpellBad
highlight SpellBad gui=undercurl
highlight SignColumn guibg=NONE


nnoremap <leader>vd :lua vim.lsp.buf.definition()<CR>
nnoremap <leader>vi :lua vim.lsp.buf.implementation()<CR>
nnoremap <leader>vsh :lua vim.lsp.buf.signature_help()<CR>
nnoremap <leader>vrr :lua vim.lsp.buf.references()<CR>
nnoremap <leader>vrn :lua vim.lsp.buf.rename()<CR>
nnoremap <leader>vh :lua vim.lsp.buf.hover()<CR>
nnoremap <leader>vca :lua vim.lsp.buf.code_action()<CR>
nnoremap <leader>vsd :lua vim.lsp.diagnostic.show_line_diagnostics(); vim.lsp.diagnostic.show_line_diagnostics()<CR>
nnoremap <leader>b :lua print(vim.inspect(vim.lsp.buf_get_clients()))<CR>

let g:completion_matching_strategy_list = ['exact', 'substring', 'fuzzy']
lua require'lspconfig'.tsserver.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.clangd.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.jedi_language_server.setup{ on_attach=require'completion'.on_attach }
lua require'lspconfig'.gopls.setup{ on_attach=require'completion'.on_attach }
