return {
 "scottmckendry/cyberdream.nvim",
 config = function()
   require("cyberdream").setup({
     lazy = false,
     priority = 1000,
--     transparent = true,
     italic_comments = true, 
     theme = {
       variant = "default",
       colors = {
         bg = "#000000"
       }
     },
   })
   vim.cmd([[colorscheme cyberdream]])
 end,
}
