return {

	--'wellle/context.vim',
	{
		'nvim-treesitter/nvim-treesitter-context',
		opts = {
			max_lines = 8,
			min_window_height = 20,
			multiline_threshold = 1,
			mode = 'topline',
		},
	},
	{
	  'HiPhish/rainbow-delimiters.nvim',
	  config = function()
	  	require('rainbow-delimiters')
	  end,
	},
  {
	  'SmiteshP/nvim-navic',
	  opts = {
	  	lsp = {
	  		auto_attach = true,
	  	},
	  	separator = ' ',
	  },
	},
	{
	  'ray-x/lsp_signature.nvim',
      config = function(_, opts) require'lsp_signature'.setup(opts) end
	},

}
