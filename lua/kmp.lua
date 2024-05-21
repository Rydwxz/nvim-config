local kym = function(a,b,c) vim.keymap.set(a,b,c) end
--
--buffers/tabs
kym('n', '<leader>,', '<Cmd>bprev<CR>')
kym('n', '<leader>.', '<Cmd>bnext<CR>')
kym('n', '<leader>x', function () require('bufdelete').bufdelete(0,true) end)

--codewindow
kym('n', '<leader>mm', function() require('codewindow').toggle_minimap() end )
kym('n', '<leader>mf', function() require('codewindow').toggle_focus() end )

--color picker
kym('n', '<leader>4', '<cmd>CccPick<cr>')

--colorizer
kym('n', '<leader>tc', '<cmd>ColorizerToggle<cr>')

--cmp mapping declared in lspzero.lua for reasons
--
--diagnostics
kym('n', '<leader>dc', function() vim.diagnostic.open_float() end)
--
--flash map in flash.lua for laziness
--
--hover
vim.keymap.set("n", "<leader>k", require("hover").hover, {desc = "hover.nvim"})
vim.keymap.set("n", "gK", require("hover").hover_select, {desc = "hover.nvim (select)"})

--numberline
kym('n', '<leader>nn', function () require('fnc').numbertoggle() end)

--oil
kym('n', '-', '<CMD>Oil<CR>')

--playground
kym('n', '<leader>ht', '<cmd>TSPlaygroundToggle<cr>')
kym('n', '<leader>hc', '<cmd>TSNodeUnderCursor<cr>')

--telescope
local ivy = require('telescope.themes').get_ivy()
kym('n', '<leader>ff', function() require('telescope.builtin').find_files(ivy) end )
kym('n', '<leader>fs', function() require('telescope.builtin').live_grep(ivy) end )--cwd
kym('n', '<leader>ft', function() require('telescope.builtin').treesitter(ivy) end )
kym('n', '<leader>f/', function() require('telescope.builtin').current_buffer_fuzzy_find(ivy) end )
kym('n', '<leader>fg', function() require('telescope.builtin').git_files(ivy) end )
kym('n', '<leader>fm', function() require('telescope.builtin').marks(ivy) end )
kym('n', '<leader>fr', function() require('telescope.builtin').lsp_references(ivy) end )
kym('n', '<leader>fi', function() require('telescope.builtin').lsp_implementation(ivy) end )
kym('n', '<leader>fq', function() require('telescope.builtin').quickfix(ivy) end )
kym('n', '<leader>fc', function() require('telescope.builtin').grep_string(ivy) end )--cursor
kym('n', '<leader>fb', function() require('telescope.builtin').buffers(ivy) end )
kym('n', '<leader>fh', function() require('telescope.builtin').help_tags(ivy) end )
kym('n', '<leader>fp', function() require('telescope.builtin').man_pages(ivy) end )--pages
kym('n', '<leader>fo', function() require('telescope.builtin').vim_options(ivy) end )
kym('n', '<leader>fy', function() require('telescope.builtin').registers(ivy) end )--yank
kym('n', '<leader>fk', function() require('telescope.builtin').keymaps(ivy) end )
kym('n', '<leader>fe', function() require('telescope.builtin').diagnostics(ivy) end )

--tree
kym('n', '<leader>r', '<cmd>NvimTreeFocus<cr>')

--renamer
kym('n', '<leader>dr', function () require("renamer").rename() end)

--smartsplits
vim.keymap.set('n', '<A-h>', require('smart-splits').resize_left)
vim.keymap.set('n', '<A-j>', require('smart-splits').resize_down)
vim.keymap.set('n', '<A-k>', require('smart-splits').resize_up)
vim.keymap.set('n', '<A-l>', require('smart-splits').resize_right)
-- moving between splits
vim.keymap.set('n', '<C-h>', require('smart-splits').move_cursor_left)
vim.keymap.set('n', '<C-j>', require('smart-splits').move_cursor_down)
vim.keymap.set('n', '<C-k>', require('smart-splits').move_cursor_up)
vim.keymap.set('n', '<C-l>', require('smart-splits').move_cursor_right)
vim.keymap.set('n', '<C-\\>', require('smart-splits').move_cursor_previous)
-- swapping buffers between windows
vim.keymap.set('n', '<leader><leader>h', require('smart-splits').swap_buf_left)
vim.keymap.set('n', '<leader><leader>j', require('smart-splits').swap_buf_down)
vim.keymap.set('n', '<leader><leader>k', require('smart-splits').swap_buf_up)
vim.keymap.set('n', '<leader><leader>l', require('smart-splits').swap_buf_right)

--spider
kym({"n"}, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
kym({"o","v",'x'}, "f", function ()require('spider').motion('w') end, {remap=true} )
kym({"o",'v','x'}, "F", function ()require('spider').motion('w') end,{remap=true, skipInsignificantPunctuation = false} )
kym({"n"}, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
kym({"n"}, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
kym({"n"}, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })

--undotree
kym("n", "<leader>u", "<cmd>UndotreeToggle<cr>")
