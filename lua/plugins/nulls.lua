local null_ls = require("null-ls")
local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

null_ls.setup({
    sources = {
        null_ls.builtins.formatting.eslint_d.with { filetypes = {
            "go",
            "java",
            "c_sharp",
            "c",
            "rust",
            "python",
            "bash",
            "yaml",
        } },
        null_ls.builtins.formatting.lua_format,
        null_ls.builtins.diagnostics.eslint_d,
        null_ls.builtins.formatting.stylua,
        null_ls.builtins.diagnostics.ltrs,
        null_ls.builtins.formatting.rustfmt,
        null_ls.builtins.formatting.prettierd.with { filetypes = {
        "json",
        "jsonc",
        "yaml",
        "markdown",
        "markdown.mdx",
        "rs",
        "py",
        "sh",
        "yml",
    },
}
    },
	on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    vim.lsp.buf.format({ 
						bufnr = bufnr,
						filter = function(client)
							return client.name == "null-ls"
						end
					 })
                    -- vim.lsp.buf.formatting_sync()
                end,
            })
        end
    end,
})
