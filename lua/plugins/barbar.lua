return {

	'romgrk/barbar.nvim',
	dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
	 opts = {
		 sidebar_filetypes = {
			 NvimTree = {text = 'filetree'},
			 undotree = {text = 'undotree'},
		 },
		 animation = false,
		 auto_hide = false,
		 hide ={
			 extensions = false,
		 },
		 insert_at_end = true,
		 insert_at_start = false,
	 },

}
