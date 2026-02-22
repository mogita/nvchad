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
  { "catppuccin/nvim", name = "catppuccin", lazy = false, priority = 1000 },
  {
    "utilyre/barbecue.nvim",
    lazy = false,
    dependencies = {
      "SmiteshP/nvim-navic",
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("barbecue").setup {
        theme = "catppuccin",
        -- pad the left with the width of number line gutter
        lead_custom_section = function(_, winnr)
          local textoff = vim.fn.getwininfo(winnr)[1].textoff
          return string.rep(" ", textoff)
        end,
      }
      -- attach to all LSPs
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if client and client.server_capabilities.documentSymbolProvider then
            require("nvim-navic").attach(client, args.buf)
          end
        end,
      })
    end,
  },
}
