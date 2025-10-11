return {
  "nvim-tree/nvim-tree.lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local function my_on_attach(bufnr)
      local api = require("nvim-tree.api")

      api.config.mappings.default_on_attach(bufnr)
 
      vim.keymap.set("n", "s", api.node.open.horizontal, { buffer = bufnr, desc = "Open in split" })
      vim.keymap.set("n", "v", api.node.open.vertical,   { buffer = bufnr, desc = "Open in vsplit" })
    end

    require("nvim-tree").setup({
      sort_by = "case_sensitive",
      view = { width = 45, side = "right" },
      renderer = { group_empty = true },
      filters = { dotfiles = true },
      on_attach = my_on_attach,
    })

    vim.keymap.set("n", "<leader>e", function()
      vim.cmd("NvimTreeFocus")
    end, { desc = "Focus on NvimTree" })
  end,
}
