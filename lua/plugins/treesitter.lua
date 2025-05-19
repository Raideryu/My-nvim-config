require'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "vim", "json", "rust", "python","yaml","bash" },

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
