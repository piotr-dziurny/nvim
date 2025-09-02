-- LSP package manager
return {
  "mason-org/mason.nvim",
  dependencies = {
    "mason-org/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
  config = function()
    require("mason").setup()
    -- mason-lspconfig:
    require("mason-lspconfig").setup({
      ensure_installed = {
        "pyright", -- python
        "gopls",   -- go
      }, 
    })
  end,
}
