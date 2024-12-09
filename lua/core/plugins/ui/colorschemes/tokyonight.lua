return {
  "folke/tokyonight.nvim",
  config = function()
    require("tokyonight").setup({
      style = "night",
      lazy = false, 
      priority = 1000,
--    transparent = true,
    })
    vim.cmd([[colorscheme tokyonight]])
  end,
}
