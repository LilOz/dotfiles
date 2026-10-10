return {
	"nvimtools/none-ls.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.stylua,
				null_ls.builtins.formatting.black,
				null_ls.builtins.formatting.isort,
				null_ls.builtins.formatting.prettier,
				null_ls.builtins.formatting.clang_format,
			},

			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					local group = vim.api.nvim_create_augroup("NoneLsFormatting", {
						clear = false,
					})

					vim.api.nvim_clear_autocmds({
						group = group,
						buffer = bufnr,
					})

					vim.api.nvim_create_autocmd("BufWritePre", {
						group = group,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({
								bufnr = bufnr,
								async = false,
								filter = function(c)
									return c.name == "null-ls"
								end,
							})
						end,
					})
				end
			end,
		})

		vim.keymap.set("n", "<leader>gf", function()
			vim.lsp.buf.format({ async = false })
		end, { desc = "Format file" })
	end,
}
