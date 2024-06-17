return {

	'nvim-telescope/telescope.nvim',
	dependencies = {
		'nvim-lua/plenary.nvim',
	},
	opts = {
		defaults = {
			path_display = { shorten = 4, },
        mappings = {
              n = {
            	  ['<c-d>'] = 'delete_buffer',
              }, -- n
              i = {
                ["<C-h>"] = "which_key",
                ['<c-d>'] = 'delete_buffer',
              } -- i
        } -- mappings
		},
		pickers = {
			find_files = {
				hidden = true,
			},
		},
	},

}
