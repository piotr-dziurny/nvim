return {
  "scottmckendry/cyberdream.nvim",
  config = function()
    require("cyberdream").setup({
      lazy = false,
      priority = 1000,
--    transparent = true,
    })
    vim.cmd([[colorscheme cyberdream]])
  end,
}
