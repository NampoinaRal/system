return {
	"neovim/nvim-lspconfig",
	opts = {
		servers = {
			intelephense = {
				enabled = lsp == "intelephense",
			},
			[lsp] = {
				enabled = true,
			},
		},
	},
}
