local M = {}

M.numbertoggle = function ()
	if vim.wo.number then
		vim.wo.number = false
	else
		vim.wo.number = true
	end
end

M.setBg0 = function ()
	local hl = vim.api.nvim_get_hl('NvimTreeNormal')
	hl[1] = '#000000';
	vim.api.nvim_set_hl(0,'NvimTreeNormal',hl)
end

return M
