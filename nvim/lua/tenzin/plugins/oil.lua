return {
	"https://github.com/stevearc/oil.nvim",
	dependencies = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		require("oil").setup({
			default_file_explorer = false,
		})
	end
}
