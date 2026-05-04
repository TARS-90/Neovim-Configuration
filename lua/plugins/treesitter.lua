return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		lazy = false,
		config = function()
			require("nvim-treesitter.config").setup {
				ensure_installed = { 
					"lua", 
					"python", 
					"java", 
					"c", 
					"cpp", 
					"c_sharp", 
					"bash", 
					"ada" 
				},
				highlight = { enable = true },
				indent = { enable = true },
			}
		end,
	},
}
