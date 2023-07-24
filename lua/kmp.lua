local kym = function(a,b,c) vim.keymap.set(a,b,c) end
--color picker
kym('n', '<leader>4', '<cmd>CccPick<cr>')
--
--cmp mapping declared in lspzero.lua for reasons
--
--barbar
kym('n', '<leader>,', '<Cmd>BufferPrevious<CR>')
kym('n', '<leader>.', '<Cmd>BufferNext<CR>')
kym('n', '<leader>.', '<Cmd>BufferNext<CR>')
kym('n', '<leader>t', '<Cmd>BufferPick<CR>')
kym('n', '<a-t>', '<Cmd>BufferClose<CR>')
--
--flash map in flash.lua for laziness
--
--codewindow
kym('n', '<leader>mm', function() require('codewindow').toggle_minimap() end )
kym('n', '<leader>mf', function() require('codewindow').toggle_focus() end )

--playground
kym('n', '<leader>ht', '<cmd>TSPlaygroundToggle<cr>')
kym('n', '<leader>hc', '<cmd>TSNodeUnderCursor<cr>')

--telescope
local ivy = require('telescope.themes').get_ivy()
kym('n', '<leader>ff', function() require('telescope.builtin').find_files(ivy) end )
kym('n', '<leader>fs', function() require('telescope.builtin').live_grep(ivy) end )--string cwd
kym('n', '<leader>ft', function() require('telescope.builtin').treesitter(ivy) end )--find symbol
kym('n', '<leader>fb', function() require('telescope.builtin').current_buffer_fuzzy_find(ivy) end )
kym('n', '<leader>fg', function() require('telescope.builtin').git_files(ivy) end )
kym('n', '<leader>fm', function() require('telescope.builtin').marks(ivy) end )
kym('n', '<leader>fr', function() require('telescope.builtin').lsp_references(ivy) end )
kym('n', '<leader>fd', function() require('telescope.builtin').lsp_definitions(ivy) end )
kym('n', '<leader>fi', function() require('telescope.builtin').lsp_implementation(ivy) end )
kym('n', '<leader>fq', function() require('telescope.builtin').quickfix(ivy) end )

--tree
kym('n', '<leader>r', '<cmd>NvimTreeToggle<cr>')

--scroll
local sm = {}
sm['<c-j>'] = {'scroll', {'28','true','100'}}
sm['<c-k>'] = {'scroll', {'-28','true','100'}}
require('neoscroll.config').set_mappings(sm)

--spider
kym({"n"}, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
kym({"o","v",'x'}, "f", function ()require('spider').motion('w') end, {remap=true} )
kym({"o",'v','x'}, "F", function ()require('spider').motion('w') end,{remap=true, skipInsignificantPunctuation = false} )
kym({"n"}, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
kym({"n"}, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })
kym({"n"}, "ge", "<cmd>lua require('spider').motion('ge')<CR>", { desc = "Spider-ge" })

--undotree
kym("n", "<leader>u", "<cmd>UndotreeToggle<cr>")
