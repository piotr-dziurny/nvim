vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "--branch=stable",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

local plugins = {
    { import = "core.plugins.utils" }, 
    { import = "core.plugins.ui" },
    { import = "core.plugins.ui.colorschemes.catppuccin" },
}

require("lazy").setup(plugins, {
    checker = { enabled = true }, 
})
