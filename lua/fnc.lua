local M = {}

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

M.statusline_theme = {
	normal = {
		 a = { bg = colors.neon, fg = colors.black, gui = 'bold' },
		 b = { bg = colors.noen, fg = colors.white },
		 c = { bg = colors.black, fg = colors.red },
	  },
	  insert = {
		 a = { bg = colors.white, fg = colors.dark, gui = 'bold' },
		 b = { bg = colors.dark, fg = colors.white },
		 c = { bg = colors.brightred, fg = colors.black },
		 z = { bg = colors.white, fg = colors.dark},
	  },
	  visual = {
		 a = { bg = colors.green, fg = colors.black, gui = 'bold' },
		 b = { bg = colors.blue, fg = colors.black },
		 c = { bg = colors.black, fg = colors.white },
		 z = { bg = colors.green, fg = colors.dark},
	  },
	  replace = {
		 a = { bg = colors.brightred, fg = colors.white, gui = 'bold' },
		 b = { bg = colors.cyan, fg = colors.darkblue },
		 c = { bg = colors.navyblue, fg = colors.white },
	  },
	  command = {
		 a = { bg = colors.purple, fg = colors.brightgreen, gui = 'bold' },
		 b = { bg = colors.dark, fg = colors.darkgray },
		 c = { bg = colors.dark, fg = colors.dark },
	  },
	  inactive = {
		 a = { bg = colors.darkgray, fg = colors.black, gui = 'bold' },
		 b = { bg = colors.darkgray, fg = colors.black },
		 c = { bg = colors.darkgray, fg = colors.black },
	  },
}



return M
