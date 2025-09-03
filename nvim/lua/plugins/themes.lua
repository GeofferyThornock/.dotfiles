return {
       { "sainnhe/gruvbox-material", priority = 1000 , config = function() 

           vim.o.background = "dark"
           vim.cmd("colorscheme gruvbox-material")
       end, opts = ...},
--   {
--       "rebelot/kanagawa.nvim",
--       config = function()
--           vim.cmd("colorscheme kanagawa-dragon")
--       end,
--   }
}
