require'nvim-treesitter.configs'.setup {
	ensure_installed = { "lua", "vim", "json", "go", "c", "java", "rust", "c_sharp" },

	sync_install = false,
	auto_install = true,
	highlight = {
		enable = true,
	},
}
