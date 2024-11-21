local on_attach = function (_, bufnr)
  -- _ : client
  -- bufnr : buffer number
  -- Helper funtion for keymappings
  local bufmap = function (keys, func)
    vim.keymap.set('n', keys, func, { buffer = bufnr })
  end
  local telescope = require("telescope")
  -- lsp keymappins
  bufmap('<leader>r', vim.lsp.buf.rename)
  bufmap('<leader>a', vim.lsp.buf.code_action)

  bufmap('gd', vim.lsp.buf.definiion)
  bufmap('gD', vim.lsp.buf.declaration)
  bufmap('gi', vim.lsp.buf.implementation)
  bufmap('<leader>D', vim.lsp.buf.type_definition)


  -- telescope
  bufmap('gr', telescope.lsp_references)
  bufmap('<leader>s', telescope.lsp_document_symbols)
  bufmap('<leader>S', telescope.lsp_dynamic_workspace_symbols)

  bufmap('K', vim.lsp.buf.hover)

  vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
	  vim.lsp.buf.format()
  end, {})
end


local capabilities = vim.lsp.protocol.make_client_capabilities()
capabilities = require('cmp_nvim_lsp').default_capabilities(capabilities)

	require("neodev").setup()
	require("lspconfig").lua_ls.setup {
		on_attach = on_attach,
		capabilities = capabilities,
		settings = {
			Lua = {
				workspace = { checkThirdParty = false },
				telemtry = { enable = false },
			},
		}
	}
