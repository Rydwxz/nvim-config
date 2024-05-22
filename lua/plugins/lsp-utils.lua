return {

	{
	'linrongbin16/lsp-progress.nvim',
	opts = {},
	},
	{
	'filipdutescu/renamer.nvim',
	opts = {},
	},
	{
    'simrat39/rust-tools.nvim',
    dependencies = {
        'neovim/nvim-lspconfig',
    },
	},
	{
	'lewis6991/hover.nvim',
	},
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-tree.lua",
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
	{
		'NMAC427/guess-indent.nvim',
		opts = {},
	},


}
