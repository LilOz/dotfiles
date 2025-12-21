return {
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- your noice opts
    },
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
  },

  {
    "vimpostor/vim-tpipeline",
    config = function()
      vim.g.tpipeline_autoembed = 1
      vim.g.tpipeline_restore = 1
      vim.g.tpipeline_clearstl = 1
    end,
  },
}
