require("nightfox").setup({
    options = {
        transparent = true,
        styles = {
            comments = "italic"
        },
        terminal_colors = true
    },
    palettes = {
        duskfox = {
            fg3 = "#B57614",
            bg3 = "#005f87"
        },
        carbonfox = {
            fg3 = "#747f3f",
            bg3 = "#3f557f",
            sel0 = "#4a3f7f"
        }
    }
})

vim.cmd("colorscheme carbonfox")
