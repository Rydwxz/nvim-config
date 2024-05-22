return {

  {
	'famiu/bufdelete.nvim',
  },
  {
    "nvim-zh/colorful-winsep.nvim",
	  opts = {
	    hi = {
        fg = "#7f0800",
      },
      no_exec_files = {
        'NvimTree',
      },
    },
  },
	{
	  'mrjones2014/smart-splits.nvim',
	},
  {
	  'xiyaowong/transparent.nvim',
	  opts = {
	  	extra_groups = {
      "NormalFloat", -- plugins which have float panel such as Lazy, Mason, LspInfo
      "NvimTreeNormal" -- NvimTree
      },
	  },
	  lazy = false,
  },

}
