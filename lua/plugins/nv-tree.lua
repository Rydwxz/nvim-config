return {

   'nvim-tree/nvim-tree.lua',
   opts = {
      disable_netrw = true,
      hijack_unnamed_buffer_when_opening = true,
      sort_by = 'type',
      view = {
		   width = 24,
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
   },

}
