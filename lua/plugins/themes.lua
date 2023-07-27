return {

	{'NvChad/nvim-colorizer.lua', opts = {} },
	{'rktjmp/lush.nvim'},
	{'uga-rosa/ccc.nvim'},

	{'Rydwxz/bhs'},

	{'challenger-deep-theme/vim'},
	{'Everblush/nvim', name = 'everblush'},
    {'EdenEast/nightfox.nvim'},
	{'rose-pine/neovim', name = 'rose-pine'},
	{'LunarVim/horizon.nvim', name = 'horizon'},
	{'nyoom-engineering/oxocarbon.nvim'},
	{'Mofiqul/vscode.nvim'},
	{'marko-cerovac/material.nvim'},
	{'lighthaus-theme/vim-lighthaus'},
	{'junegunn/seoul256.vim'},
	{'josegamez82/starrynight'}, -- no styler
	{'felipeagc/fleet-theme-nvim', name = 'fleet'},
	{'rockerBOO/boo-colorscheme-nvim'},
	{'maxmx03/fluoromachine.nvim', opts = {theme = 'flouromachine'}},
	{'folke/tokyonight.nvim'},
	{'sainnhe/sonokai'},
	{'sainnhe/edge'},
	{'monsonjeremy/onedark.nvim'},

	{
		'Rydwxz/styler.nvim',
		enabled = false,
		opts = {
			themes = {
				markdown = { colorscheme =  'rose-pine'},
				c = { colorscheme =  'fleet'},
				cpp = { colorscheme =  'vscode'},
				python = { colorscheme = 'everblush'},
				rust = { colorscheme = 'black_hole_sun'},
				lua = { colorscheme = 'oxocarbon'},
			},
		},
	},

}
