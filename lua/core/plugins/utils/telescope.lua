return {
 "nvim-telescope/telescope.nvim",
 dependencies = { "nvim-lua/plenary.nvim" },
 config = function()
   local telescope = require("telescope")
   telescope.setup({
     defaults = {
       layout_config = {
         horizontal = { preview_cutoff = 80, preview_width = 0.55 },
         vertical = { mirror = true, preview_cutoff = 25 },
         width = 0.87,
         height = 0.80,
       }
     },
     pickers = {
       find_files = {
         follow = true,
       },
     },
   })
   
  local builtin = require("telescope.builtin")
  vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
  vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
  vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
  vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
  vim.keymap.set("n", "<leader>dd", builtin.diagnostics, { desc = "Telescope diagnostics (project)" })
  vim.keymap.set("n", "<leader>db", function()
    builtin.diagnostics({ bufnr = 0 })
  end, { desc = "Telescope diagnostics (buffer)" })
 end,
}
