return {
	'nvim-treesitter/nvim-treesitter',
	build = ':TSUpdate',  -- Automatically updates parsers on install

	config = function()
		require('nvim-treesitter.configs').setup {
			ensure_installed = {"vue", "java", "lua", "python","typescript", "javascript", "html", "css", "markdown", "vimdoc" }, -- Add other languages if needed
			highlight = { enable = true },  -- Enables syntax highlighting
			additional_vim_regex_highlighting = false,
		}
	end
}
