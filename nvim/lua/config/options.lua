-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

local opt = vim.opt
opt.wrap = true -- 自动折行
opt.spell = false -- 禁用拼写检查
opt.relativenumber = false -- 禁用相对行号
opt.guifont = { "Ubuntu Mono", "JetBrains Mono", "FiraCode Nerd Font", "等距更纱黑体 Slab SC" }
opt.list = true --显示空白字符
opt.listchars = { space = "·" }
if vim.fn.has("win32") == 1 then
	opt.shell = "pwsh" -- 设置shell为pwsh7
else
	opt.shell = "zsh" -- 设置shell为zsh
end
opt.shellcmdflag = "-command"
opt.shellquote = '"'
opt.shellxquote = ""
opt.conceallevel = 0 -- 隐藏级别

-- markdown-preview option
vim.cmd([[
let g:mkdp_browser = 'google-chrome'
]])
