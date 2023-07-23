return {

	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			theme = require('fnc').statusline_theme,
			component_separators = {right = '|'},
		},
		sections = {
			lualine_a = {'mode'},
			lualine_b = {'filename'},
			lualine_c = {function ()
				return require('nvim-navic').get_location()
			end},

			lualine_x = { function()
				return require('lsp-progress').progress()
			end},
			lualine_y = {'progress', 'filesize'},
			lualine_z = {'branch', 'diagnostics'},
		},
		inactive_sections = {
			lualine_x = {'filetype'},
		},
	},
	dependencies = {
		'SmiteshP/nvim-navic',
		'linrongbin16/lsp-progress.nvim',
	},

}
