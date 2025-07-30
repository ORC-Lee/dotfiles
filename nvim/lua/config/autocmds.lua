-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

local function augroup(name)
	return vim.api.nvim_create_augroup("lazyvim_" .. name, { clear = true })
end

-- wrap and check for spell in text filetypes
vim.api.nvim_create_autocmd("FileType", {
	group = augroup("wrap_spell"),
	pattern = { "gitcommit", "markdown" },
	callback = function()
		vim.opt_local.wrap = true
		vim.opt_local.spell = false -- 覆盖默认的 true
	end,
})

-- automated to run whenever you enter into a python project
vim.api.nvim_create_autocmd("VimEnter", {
	desc = "Auto select virtualenv Nvim open",
	pattern = "*",
	callback = function()
		local venv = vim.fn.findfile("pyproject.toml", vim.fn.getcwd() .. ";")
		if venv ~= "" then
			require("venv-selector").retrieve_from_cache()
		end
	end,
	once = true,
})

-- -- 设置透明
-- vim.api.nvim_create_autocmd("ColorScheme", {
-- 	pattern = "*",
-- 	callback = function()
-- 		local hl_groups = {
-- 			"Normal",
-- 			"SignColumn",
-- 			"NormalNC",
-- 			"TelescopeNormal",
-- 			"NvimTreeNormal",
-- 			"EndOfBuffer",
-- 			"MsgArea",
-- 			"NormalFloat",
-- 		}
--
-- 		-- 设置透明背景
-- 		for _, name in ipairs(hl_groups) do
-- 			vim.api.nvim_set_hl(0, name, { bg = "none" })
-- 		end
--
-- 		-- 设置光标行（当前行）透明
-- 		vim.api.nvim_set_hl(0, "CursorLine", { bg = "#36383F", fg = "NONE" })
-- 	end,
-- })
