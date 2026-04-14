-- MODE:    it can be n for normal mode, i for insert, v for visual
-- KEY:     the key that will trigger the action
-- ACTION:  the action that will be triggered when the key is pressed
-- vim.api.nvim_set_keymap("MODE", "KEY", "ACTION")

vim.keymap.set("n", "J", ":m .-2<CR>==")
vim.keymap.set("n", "K", ":m .+1<CR>==")

