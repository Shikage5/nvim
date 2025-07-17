return {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			'saghen/blink.cmp',
		},

		config = function ()
			local capabilities = require('blink.cmp').get_lsp_capabilities()
			vim.diagnostic.config({ virtual_text = true })
			require("lspconfig").lua_ls.setup{ capabilities = capabilities }
  			require("lspconfig").jdtls.setup{ capabilities = capabilities }
		end,
	}
}
