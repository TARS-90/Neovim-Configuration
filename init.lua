vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("set")
require("remap")
require("lazy-bootstrap")
require("lazy-plugins")

local function load_plugins()
    local fn = vim.fn
    local plugin_dir = fn.stdpath('config') .. '/lua/plugins'

    for _, file in ipairs(fn.readdir(plugin_dir)) do
        if file:match('.lua$') then
            local plugin_name = file:sub(1, -5) -- usuwa rozszerzenia .lua
            require('plugins.' .. plugin_name)
        end
    end
end
