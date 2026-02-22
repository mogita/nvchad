local M = {}

M.base_30 = {
  white = "#c6d0f5",
  darker_black = "#232634",
  black = "#303446", --  nvim bg
  black2 = "#393d51",
  one_bg = "#414559",
  one_bg2 = "#494d63",
  one_bg3 = "#51576d",
  grey = "#5b6078",
  grey_fg = "#626880",
  grey_fg2 = "#6b7089",
  light_grey = "#737994",
  red = "#e78284",
  baby_pink = "#f2d5cf",
  pink = "#f4b8e4",
  line = "#414559",
  green = "#a6d189",
  vibrant_green = "#b5e8cf",
  nord_blue = "#99b4e8",
  blue = "#8caaee",
  yellow = "#e5c890",
  sun = "#ebd49f",
  purple = "#ca9ee6",
  dark_purple = "#b8a0d8",
  teal = "#81c8be",
  orange = "#ef9f76",
  cyan = "#99d1db",
  statusline_bg = "#292c3c",
  lightbg = "#414559",
  pmenu_bg = "#a6d189",
  folder_bg = "#8caaee",
  lavender = "#babbf1",
}

M.base_16 = {
  base00 = "#303446",
  base01 = "#383c50",
  base02 = "#414559",
  base03 = "#51576d",
  base04 = "#626880",
  base05 = "#b5bfe2",
  base06 = "#c6d0f5",
  base07 = "#d2dcff",
  base08 = "#e78284",
  base09 = "#ef9f76",
  base0A = "#e5c890",
  base0B = "#a6d189",
  base0C = "#99d1db",
  base0D = "#8caaee",
  base0E = "#ca9ee6",
  base0F = "#e78284",
}

M.polish_hl = {
  treesitter = {
    ["@variable"] = { fg = M.base_30.lavender },
    ["@property"] = { fg = M.base_30.teal },
    ["@variable.builtin"] = { fg = M.base_30.red },
  },
}

M.type = "dark"

M = require("base46").override_theme(M, "catppuccin-frappe")

return M
