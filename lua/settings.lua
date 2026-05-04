-- set the line numbers and relative line numbers
vim.opt.nu = true
vim.opt.relativenumber = true

-- set four spaces for tabs
vim.opt.tabstop = 8
vim.opt.softtabstop = 8
vim.opt.shiftwidth = 8
vim.opt.expandtab = false
vim.opt.smartindent = true

-- highlight incrementally as we search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- set the terminal to be 256 colours
vim.opt.termguicolors = true

-- set primary background colour of terminal
vim.api.nvim_create_autocmd("ColorScheme", {
    callback = function()
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    end,
})

-- leave a 8-line margin when we scroll
vim.opt.scrolloff = 8

-- set the update time to 50ms
vim.opt.updatetime = 50

-- disable the ugly column
vim.opt.signcolumn = "yes"
vim.opt.colorcolumn = ""

-- enable provider
vim.opt.clipboard = "unnamedplus"
