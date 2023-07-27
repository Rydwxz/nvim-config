return {

	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			theme = require('fnc').statusline_theme,
			component_separators = {right = ''},
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
			lualine_z = {
				'branch',
				{  'diff',
					diff_color = {
						added = {fg='#00881b'},
						modified = {fg='#f42b4c'},
						removed = {fg='#d6071f'},
					},
				},
				{  'diagnostics',
					diagnostics_color = {
						error = {fg='#d6071f'},
						warn = {fg='#e7008b'},
						info = {fg='#5200cc'},
						hint = {fg='#00881b'},
					},
				},
			},
		},
		inactive_sections = {
			lualine_x = {'filetype'},
		},
	},
	dependencies = {
		'SmiteshP/nvim-navic',
		'linrongbin16/lsp-progress.nvim',
	},
	extensions = {
		'fugitive',
		'lazy',
		'man',
	},

}
