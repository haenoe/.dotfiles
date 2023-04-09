vim.o.background = "dark"

require("gruvbox").setup({
   contrast = "hard",
   transparent_mode = true,
})

-- require("catppuccin").setup({
--    flavour = "mocha",
--    color_overrides = {
--        mocha = {
--            base = "#0a0a0f",
--        },
--    },
-- })

vim.cmd("colorscheme gruvbox")
