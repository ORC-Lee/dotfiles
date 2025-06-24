-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Insert mode
-- 快速退出插入模式
map("i", "jj", "<esc>", { desc = "Quick Exit Insert Mode", remap = true, silent = true })

-- Normal mode
-- 保存当前buffer
map("n", "<leader>qw", "<cmd>w<cr>", { desc = "Save", remap = true, silent = true })

-- 移动到行首
map("n", "H", "^", { desc = "Move To Beginning Of Line", remap = true, silent = true })

-- 移动到行尾
map("n", "L", "$", { desc = "Move To End Of Line", remap = true, silent = true })

-- -- 快速跳转
-- map("n", "<leader>t", "<c-]>", { desc = "Quick Jump", remap = true, silent = true })
--
-- -- 快速跳转返回
-- map("n", "<leader>T", "<c-t>", { desc = "Quick Jump Back", remap = true, silent = true })

-- 切换到下一个buffer
map("n", "<leader>bn", "<cmd>bn<cr>", { desc = "Switch To Next Buffer", remap = true, silent = true })

-- 切换到上一个buffer
map("n", "<leader>bN", "<cmd>bN<cr>", { desc = "Switch To Previous Buffer", remap = true, silent = true })

-- Command mode
-- 正向回溯历史命令
map("c", "<c-p>", "<up>", { desc = "Forward Traversal History Command", remap = true, silent = false })

-- 反向回溯历史命令
map("c", "<c-n>", "<down>", { desc = "Reverse Traversal History Command", remap = true, silent = false })

-- 选择Python环境
map("n", "<leader>ce", "<cmd>PyenvSelect<CR>", { desc = "Select Python Environment", noremap = true, silent = true })
