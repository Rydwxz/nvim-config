local colors = {
	  black        = '#202020',
	  neon         = '#DFFF00',
	  white        = '#FFFFFF',
	  green        = '#00D700',
	  purple       = '#5F005F',
	  blue         = '#00DFFF',
	  darkblue     = '#00005F',
	  navyblue     = '#000080',
	  brightgreen  = '#9CFFD3',
	  gray         = '#444444',
	  darkgray     = '#3c3836',
	  lightgray    = '#504945',
	  inactivegray = '#7c6f64',
	  orange       = '#FFAF00',
	  red          = '#b32727',
	  brightorange = '#C08A20',
	  brightred    = '#d22424',
	  cyan         = '#00DFFF',
		noen = '#ad0925',
		dark = '#000000',
}

local statusline_theme = {
	normal = {
		 a = { bg = colors.neon, fg = colors.black, gui = 'bold' },
		 b = vim.api.nvim_get_hl(0,{name='LualineNB'}),
		 c = vim.api.nvim_get_hl(0,{name='LualineNC'}),
	  },
	  insert = {
		 a = { bg = colors.brightred, fg = colors.dark, gui = 'bold' },
		 b = { bg = colors.white, fg = colors.black },
		 c = { bg = colors.dark, fg = colors.brightgreen },
		 y = { bg = colors.brightred, fg = colors.dark},
		 z = { bg = colors.white, fg = colors.dark},
	  },
	  visual = {
		 a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
		 b = { bg = colors.green, fg = colors.black },
		 c = { bg = colors.black, fg = colors.white },
		 z = { bg = colors.green, fg = colors.dark},
	  },
	  replace = {
		 a = { bg = colors.brightred, fg = colors.white, gui = 'bold' },
		 b = { bg = colors.cyan, fg = colors.darkblue },
		 c = { bg = colors.navyblue, fg = colors.white },
	  },
	  command = {
		 a = { bg = colors.purple, fg = colors.brightred, gui = 'bold' },
		 b = { bg = colors.dark, fg = colors.darkgray },
		 c = { bg = colors.dark, fg = colors.dark },
	  },
	  inactive = {
		 a = { bg = colors.darkgray, fg = colors.black, gui = 'bold' },
		 b = { bg = colors.darkgray, fg = colors.black },
		 c = { bg = colors.darkgray, fg = colors.black },
	  },

}
local old_statusline_theme = {
	normal = {
		 a = { bg = colors.neon, fg = colors.black, gui = 'bold' },
		 b = { bg = colors.noen, fg = colors.white },
		 c = { bg = colors.black, fg = colors.red },
	  },
	  insert = {
		 a = { bg = colors.brightred, fg = colors.dark, gui = 'bold' },
		 b = { bg = colors.white, fg = colors.black },
		 c = { bg = colors.dark, fg = colors.brightgreen },
		 y = { bg = colors.brightred, fg = colors.dark},
		 z = { bg = colors.white, fg = colors.dark},
	  },
	  visual = {
		 a = { bg = colors.blue, fg = colors.black, gui = 'bold' },
		 b = { bg = colors.green, fg = colors.black },
		 c = { bg = colors.black, fg = colors.white },
		 z = { bg = colors.green, fg = colors.dark},
	  },
	  replace = {
		 a = { bg = colors.brightred, fg = colors.white, gui = 'bold' },
		 b = { bg = colors.cyan, fg = colors.darkblue },
		 c = { bg = colors.navyblue, fg = colors.white },
	  },
	  command = {
		 a = { bg = colors.purple, fg = colors.brightred, gui = 'bold' },
		 b = { bg = colors.dark, fg = colors.darkgray },
		 c = { bg = colors.dark, fg = colors.dark },
	  },
	  inactive = {
		 a = { bg = colors.darkgray, fg = colors.black, gui = 'bold' },
		 b = { bg = colors.darkgray, fg = colors.black },
		 c = { bg = colors.darkgray, fg = colors.black },
	  },

}
return {

	'nvim-lualine/lualine.nvim',
	opts = {
		options = {
			theme = statusline_theme,
			component_separators = {right = ''},
		},
		sections = {
			lualine_a = {}, -- {{'mode', fmt = function(res) return res:sub(1,1)..":" end}},
			lualine_b = {{'filename', path = 1 }},
			lualine_c = {function ()
				return require('nvim-navic').get_location()
			end},

			lualine_x = { function()
				if not pcall(require, 'lsp_signature') then return end
				local sig = require('lsp_signature').status_line()
				return sig.label
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
	    'ray-x/lsp_signature.nvim',
		'SmiteshP/nvim-navic',
		'Rydwxz/bhs',
	},
	extensions = {
		'fugitive',
		'lazy',
		'man',
	},

}
