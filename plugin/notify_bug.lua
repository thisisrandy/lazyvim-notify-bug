if vim.g.loaded_notify_bug then
	return
end
vim.g.loaded_notify_bug = true

vim.api.nvim_create_augroup("notify_bug", { clear = true })
vim.api.nvim_create_autocmd({ "WinClosed" }, {
	desc = "Test vim.notify",
	pattern = { "*" },
	callback = function()
		require("notify_bug").__contents.on_win_closed()
	end,
	group = "notify_bug",
})
