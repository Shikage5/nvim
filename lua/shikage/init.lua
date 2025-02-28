require("shikage.remap")

vim.g.clipboard = {
    name = 'clip.exe',
    copy = {
        ['+'] = 'clip.exe',
        ['*'] = 'clip.exe',
    },
    paste = {
        ['+'] = 'powershell.exe -c Get-Clipboard',
        ['*'] = 'powershell.exe -c Get-Clipboard',
    },
}

