require("shikage.remap")

-- General
vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 5

vim.g.clipboard = {
	name  = 'clip.exe',
	copy  = {
		['+'] = 'clip.exe',
		['*'] = 'clip.exe',
	},
	paste = {
		['+'] = 'powershell.exe -c Get-Clipboard',
		['*'] = 'powershell.exe -c Get-Clipboard',
	},
}
