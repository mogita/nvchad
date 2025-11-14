return {
  "hrsh7th/nvim-cmp",
  opts = function(_, opts)
    local cmp = require "cmp"
    
    -- Override only the Tab and Shift-Tab mappings to avoid conflicts with Augment
    -- Keep all other NvChad defaults intact
    opts.mapping["<Tab>"] = function(fallback)
      fallback()
    end
    
    opts.mapping["<S-Tab>"] = function(fallback)
      fallback()
    end
    
    return opts
  end,
}
