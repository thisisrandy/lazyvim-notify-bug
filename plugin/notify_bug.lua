if vim.g.loaded_notify_bug then
	return
end
vim.g.loaded_notify_bug = true

vim.api.nvim_create_augroup("notify_bug", { clear = true })
vim.api.nvim_create_autocmd({ "BufEnter" }, {
	desc = "Test vim.notify",
	pattern = { "*" },
	callback = function()
		-- if vim.bo.buftype ~= "" then
		-- 	return
		-- end
		require("notify_bug").__contents.on_buf_enter()
	end,
	group = "notify_bug",
})
