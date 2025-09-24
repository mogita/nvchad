require("nvchad.configs.lspconfig").defaults()

-- full list: https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
local servers = {
  "html",
  "cssls",
  "ts_ls",
  "gopls",
  "golangci_lint_ls",
  "tailwindcss",
  "rust_analyzer",
  "jsonls",
  "biome",
}
vim.lsp.enable(servers)

-- read :h vim.lsp.config for changing options of lsp servers
