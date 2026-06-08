return {
  "catgoose/nvim-colorizer.lua",
  lazy = false,
  config = function()
    require("colorizer").setup({
      filetypes = { "*" },
      user_default_options = {
        names = false,
      },
    })
  end,
}
