local on_attach = function (_, bufnr)
  -- _ : client
  -- bufnr : buffer number
  -- Helper funtion for keymappings
  local bufmap = function (keys, func)
    vim.keymap.set('n', keys, func, { buffer = bufnr })
  end

  -- lsp keymappins
  bufmap('<leader>r', vim.lsp.buf.rename)
  bufmap('<leader>a', vim.lsp.buf.code_action)

  bufmap('gd', vim.lsp.buf.definiion)
  bufmap('gD', vim.lsp.buf.declaration)
  bufmap('gi', vim.lsp.buf.implementation)
  bufmap('<leader>D', vim.lsp.buf.type_definition)

  bufmap('K', vim.lsp.buf.hover)

  -- to add stuff @ 06:30
end

local capabilities = vim.lsp.protocol.make_client_capabilities()

require('lspconfig').lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  Lua = {
    workspace = { checkThirdParty = false },
    telemetry = { enable = false },
  },
}
