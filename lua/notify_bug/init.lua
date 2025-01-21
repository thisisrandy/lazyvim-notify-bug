local notify_bug = {}
-- our implementation details
notify_bug.__contents = {}
notify_bug.__contents.on_buf_enter = function()
	vim.notify("INFO notify", vim.log.INFO)
end
return notify_bug
