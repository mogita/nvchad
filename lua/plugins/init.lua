return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre", -- uncomment for format on save
    opts = require "configs.conform",
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      current_line_blame = true, -- always turn on blame on the current line
    },
  },
  { "wakatime/vim-wakatime", lazy = false },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    lazy = false,
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
  },
  {
    "smoka7/hop.nvim",
    lazy = false,
    version = "*",
    config = function()
      require("hop").setup {
        keys = "etovxqpdygfblzhckisuran",
      }
      vim.api.nvim_set_keymap("n", "f", ":HopWord<cr>", { silent = true })
    end,
  },
  { "akinsho/git-conflict.nvim", version = "*", config = true },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
}
