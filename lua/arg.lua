local args = vim.v.argv
--print(require('inspect').inspect(args))
--print(#args)
--print(args[2])

function run_session_manager(entry)


end

local arg_len = #args
if arg_len < 3 then
	run_session_manager(vim.c.pwd())
end
