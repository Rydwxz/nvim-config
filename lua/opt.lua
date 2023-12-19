vim.o.timeoutlen = 4000

vim.g.clipboard = {
	name = 'myClip',
	copy = {
        ['+'] = {'tmux', 'load-buffer', '-'},
        ['*'] = 'waycopy',
	},
	paste = {
        ['+'] = {'tmux', 'save-buffer', '-'},
        ['*'] = 'waypaste',
	},
}

vim.o.equalalways = false
vim.o.background = dark
vim.o.cursorline = true

vim.o.termguicolors = true

vim.o.number = false

vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
