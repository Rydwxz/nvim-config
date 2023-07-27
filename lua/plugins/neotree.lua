return {

	'nvim-neo-tree/neo-tree.nvim',
	opts = {
		hijack_netrw_behavior = 'open_default',
	},
	dependencies = {
		"nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
        "MunifTanjim/nui.nvim",
	},
}
