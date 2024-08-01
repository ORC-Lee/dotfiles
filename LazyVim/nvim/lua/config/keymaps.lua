-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local unmap = vim.api.nvim_del_keymap

-- 去掉 <leader>w 的映射
unmap("n", "<leader>w")

local map = vim.keymap.set

-- 快速退出插入模式
map("i", "jj", "<ESC>", { desc = "Quick Exit Insert Mode", remap = true, silent = true })

-- 保存当前buffer
map("n", "<leader>w", "<cmd>w<cr>", { desc = "Save", remap = true, silent = true })

-- 移动到行首
map("n", "H", "^", { desc = "Move To Beginning Of Line", remap = true, silent = true })

-- 移动到行尾
map("n", "L", "$", { desc = "Move To End Of Line", remap = true, silent = true })

-- 快速跳转
map("n", "<leader>t", "<C-]>", { desc = "Quick Jump", remap = true, silent = true })

-- 快速跳转返回
map("n", "<leader>T", "<C-t>", { desc = "Quick Jump Back", remap = true, silent = true })

-- 切换到下一个buffer
map("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Switch To Next Buffer", remap = true, silent = true })

-- 切换到上一个buffer
map("n", "<leader>bN", "<cmd>bN<cr>", { desc = "Switch To Previous Buffer", remap = true, silent = true })
