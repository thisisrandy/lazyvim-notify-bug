if vim.g.loaded_notify_bug then
	return
end
vim.g.loaded_notify_bug = true

vim.api.nvim_create_augroup("notify_bug", { clear = true })
-- NOTE: BufEnter is included for easier demonstration of the problem, since it
-- triggers a notification without any user interaction. It's otherwise
-- irrelevant to the issue at hand
vim.api.nvim_create_autocmd({ "BufEnter", "WinClosed" }, {
	desc = "Test vim.notify",
	pattern = { "*" },
	callback = function()
		require("notify_bug").__contents.on_win_closed()
	end,
	group = "notify_bug",
})
