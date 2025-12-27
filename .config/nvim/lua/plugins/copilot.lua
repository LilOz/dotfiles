return {
	{
		"github/copilot.vim",
		config = function()
			-- Toggle Copilot on/off
			vim.keymap.set("n", "<leader>ct", function()
				if vim.g.copilot_enabled == 1 then
					vim.cmd("Copilot disable")
					print("🛑 Copilot disabled")
				else
					vim.cmd("Copilot enable")
					print("✅ Copilot enabled")
				end
			end, { desc = "Toggle Copilot" })

			local map = vim.keymap.set
			map(
				"i",
				"<C-f>",
				"copilot#Accept('<CR>')",
				{ noremap = true, silent = true, expr = true, replace_keycodes = false }
			)
		end,
	},
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {},
		keys = {
			{ "<leader>cc", ":CopilotChat<CR>", mode = "n", desc = "Chat with Copilot" },
			{ "<leader>ce", ":CopilotChatExplain<CR>", mode = "v", desc = "Explain Code" },
			{ "<leader>cr", ":CopilotChatReview<CR>", mode = "v", desc = "Review Code" },
			{ "<leader>cf", ":CopilotChatFix<CR>", mode = "v", desc = "Fix Code Issues" },
			{ "<leader>co", ":CopilotChatOptimize<CR>", mode = "v", desc = "Optimize Code" },
			{ "<leader>cd", ":CopilotChatDocs<CR>", mode = "v", desc = "Generate Docs" },
			{ "<leader>ct", ":CopilotChatTests<CR>", mode = "v", desc = "Generate Tests" },
			{ "<leader>cm", ":CopilotChatCommit<CR>", mode = "n", desc = "Generate Commit Message" },
			{ "<leader>cs", ":CopilotChatCommit<CR>", mode = "v", desc = "Generate Commit for Selection" },
		},
	},
}
