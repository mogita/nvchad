local M = {}

M.base_30 = {
  white = "#cad3f5",
  darker_black = "#181926",
  black = "#24273a", --  nvim bg
  black2 = "#2c2f44",
  one_bg = "#363a4f",
  one_bg2 = "#3f4359",
  one_bg3 = "#494d64",
  grey = "#51556e",
  grey_fg = "#5b6078",
  grey_fg2 = "#646982",
  light_grey = "#6e738d",
  red = "#ed8796",
  baby_pink = "#f4dbd6",
  pink = "#f5bde6",
  line = "#363a4f",
  green = "#a6da95",
  vibrant_green = "#b6e8a1",
  nord_blue = "#9ab6f0",
  blue = "#8aadf4",
  yellow = "#eed49f",
  sun = "#f4daaf",
  purple = "#c6a0f6",
  dark_purple = "#b89aeb",
  teal = "#8bd5ca",
  orange = "#f5a97f",
  cyan = "#91d7e3",
  statusline_bg = "#1e2030",
  lightbg = "#363a4f",
  pmenu_bg = "#a6da95",
  folder_bg = "#8aadf4",
  lavender = "#b7bdf8",
}

M.base_16 = {
  base00 = "#24273a",
  base01 = "#2c2f44",
  base02 = "#363a4f",
  base03 = "#494d64",
  base04 = "#5b6078",
  base05 = "#b8c0e0",
  base06 = "#cad3f5",
  base07 = "#d6dfff",
  base08 = "#ed8796",
  base09 = "#f5a97f",
  base0A = "#eed49f",
  base0B = "#a6da95",
  base0C = "#91d7e3",
  base0D = "#8aadf4",
  base0E = "#c6a0f6",
  base0F = "#ed8796",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.lavender },
    ["@property"] = { fg = M.base_30.teal },
    ["@variable.builtin"] = { fg = M.base_30.red },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "catppuccin-macchiato")

return M
