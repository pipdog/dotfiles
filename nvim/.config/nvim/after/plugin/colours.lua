require("gruvbox").setup({
    invert_selection = true,
    transparent_mode = true,
    contrast = "hard",
})

vim.cmd.colorscheme("gruvbox")

-- might be redundant
vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })

