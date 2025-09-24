local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "biome-check" },
    typescript = { "biome-check" },
    javascriptreact = { "biome-check" },
    typescriptreact = { "biome-check" },
    css = { "biome-check" },
    json = { "biome-check" },
    go = { "golangci-lint" },
    rust = { "rustfmt" },
    gdscript = { "gdformat" },
  },

  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
