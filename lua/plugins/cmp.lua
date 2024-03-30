return {
	"hrsh7th/nvim-cmp",
	dependencies = {
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
		"hrsh7th/cmp-buffer",
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/cmp-git',
		'windwp/nvim-autopairs',
	},
	event = "VeryLazy",
	main = "config.plugins.cmp",
	config = true
}
