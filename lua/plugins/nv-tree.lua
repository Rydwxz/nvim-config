return {

   'nvim-tree/nvim-tree.lua',
   opts = {
		disable_netrw = true,
		hijack_unnamed_buffer_when_opening = true,
		sort_by = 'type',
		view = {
			width = 32,
			relativenumber = true,
		},
		renderer = {
			group_empty = true,
			highlight_opened_files = 'all',
			highlight_modified = 'all',
			root_folder_label = 'nv@i7desk_rw',
			indent_width = 1,
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
	    },
		modified = {
			enable = true,
	    },
		actions = {
			open_file = {
				quit_on_open= true,
			},
		},
		on_attach = function (nBuf)
			local api = require('nvim-tree.api')
			api.config.mappings.default_on_attach(nBuf)
			vim.keymap.set('n', 't', api.node.open.tab)
			vim.keymap.set('n', 'T', api.node.open.vertical)
		end
   },

}
