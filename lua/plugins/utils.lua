return {
	{ "nvim-lua/plenary.nvim" },
	{ "tpope/vim-commentary" },

	{
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup {
				check_ts = true,  -- integration with Treesitter
				enable_check_bracket_line = true,   
				fast_wrap = {
					map = "<M-e>",
					chars = { "(", "{", "[", "'", '"' },
					pattern = string.gsub("[%)%>%]%}%,]", "%p", "%%%0"),
					end_key = "$",
					keys = "qwertyuiopzxcvbnmasdfghjkl", 
					check_comma = true,
					highlight = "Search",
					highlight_grey = "Comment",
				},
			}
		end
	},
}
