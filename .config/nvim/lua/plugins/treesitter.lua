return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local treesitter = require("nvim-treesitter")

			local languages = {
				"lua",
				"python",
				"javascript",
				"typescript",
				"html",
				"css",
				"json",
				"bash",
				"c",
				"cpp",
			}

			treesitter.install(languages)

			vim.api.nvim_create_autocmd("FileType", {
				callback = function(args)
					local lang = vim.treesitter.language.get_lang(vim.bo[args.buf].filetype)
					if lang and vim.tbl_contains(languages, lang) then
						pcall(vim.treesitter.start, args.buf)
					end
				end,
			})
		end,
	},
}
