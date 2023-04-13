return {
    "epwalsh/obsidian.nvim",
    config = function()
        require("obsidian").setup {
            dir = "~/Documents/obsidian-vault",
            completion = {
                nvim_cmp = true,
            },
            disable_frontmatter = true,
            use_advanced_uri = true,
            open_app_foreground = true,
        }
    end
}
