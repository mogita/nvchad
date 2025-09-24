return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    ensure_installed = {
      "vim",
      "lua",
      "go",
      "python", -- defaults
      "html",
      -- "templ",
      "css",
      "javascript",
      "typescript",
      "tsx",
      "json", -- web dev
      "gdscript", -- game dev
      "c",
      "zig", -- low level
      "ruby",
    },
  },
}
