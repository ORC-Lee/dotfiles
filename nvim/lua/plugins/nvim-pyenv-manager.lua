return {
  "idossha/nvim-pyenv-manager",
  dependencies = {
    "nvim-telescope/telescope.nvim",
    "nvim-lualine/lualine.nvim",
  },
  ft = { "python" },
  config = function()
    require('pyenv_manager').setup({
      -- Paths for conda environments
      conda_paths = {
        vim.fn.expand("/opt/miniconda3/envs"),
        vim.fn.expand("~/.conda/envs/"),
      },
    })
  end
}
