return {

	{
	  'rmagatti/auto-session',
	  opts = {
	  	post_restore_cmds = {
	  		'lua require("nvim-tree.api").tree.toggle({focus = false})',
	  	},
	  },
	  dependencies = {
	  	'nvim-tree/nvim-tree.lua',
	  },
  },
	{
	  'okuuva/auto-save.nvim',
    opts = {
	  	debounce_delay = 6000
	  },
	},

}
