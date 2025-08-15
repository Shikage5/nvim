require("shikage.remap")

-- General
vim.o.nu = true
vim.o.relativenumber = true
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.scrolloff = 5
vim.o.signcolumn = "yes"
vim.o.wrap = false
vim.o.expandtab = true
vim.o.smartindent = true
vim.o.autoindent = true


-- Highlight yanked text
vim.api.nvim_create_autocmd("TextYankPost", {
	pattern = "*",
	callback = function()
		vim.highlight.on_yank {
			higroup = "IncSearch", -- You can change this to any highlight group
			timeout = 200,     -- Time in milliseconds
		}
	end,
})

-- --Clipboard for Windows with WSL
-- vim.g.clipboard = {
-- 	name = 'WslClipboard',
-- 	copy = {
-- 		['+'] = 'clip.exe',
-- 		['*'] = 'clip.exe',
-- 	},
-- 	paste = {
-- 		['+'] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write(($([Console]::In.ReadToEnd()) -replace "`r", ""))',
-- 		['*'] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write(($([Console]::In.ReadToEnd()) -replace "`r", ""))',
-- 	},
-- 	cache_enabled = 0,
-- }

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

vim.lsp.enable({'jdtls', 'lua_ls', 'vue_ls', 'vtsls', 'ts_ls'})
