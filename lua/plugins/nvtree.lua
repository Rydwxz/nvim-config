return {

   'nvim-tree/nvim-tree.lua',
   dependencies = {
		'nvim-tree/nvim-web-devicons',
	},
   opts = {
		disable_netrw = true,
		hijack_unnamed_buffer_when_opening = true,
		sort_by = 'filetype',
        respect_buf_cwd = true,
		view = {
			width = 32,
			relativenumber = true,
		},
		renderer = {
			group_empty = true,
			highlight_opened_files = 'all',
			highlight_modified = 'all',
			indent_width = 1,
			add_trailing = true,
			root_folder_label = ':~',
		    icons = {
				modified_placement = 'before',
				glyphs = {
					default = '󱁆',
					modified = '󱗆',
					bookmark = '󰌪',
					git = {
						untracked = '󰈺',
						unstaged = '󱁂',
						ignored = '󰈉',
						renamed = '',
					},
				},
			},
			indent_markers = {
				enable = true,
			},
		},
		diagnostics = {
			enable = true,
			show_on_dirs = true,
			show_on_open_dirs = false,
	    },
		filters = {
			git_clean = false,
			git_ignored = false
	    },
		modified = {
			enable = true,
	    },
		actions = {
			open_file = {
				quit_on_open = false,
			},
		},
		trash = {
			cmd = "trash put",
		},
		on_attach = function (nBuf)
			local api = require('nvim-tree.api')
			api.config.mappings.default_on_attach(nBuf)
			vim.keymap.set('n', 't', api.node.open.tab)
			vim.keymap.set('n', 'T', api.node.open.vertical)
		end
   },

}
