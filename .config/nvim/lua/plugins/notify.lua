return {
  "rcarriga/nvim-notify",
  config = function()
    require("notify").setup({
      background_colour = "#000000", -- or any hex that fits your theme
    })
    vim.notify = require("notify")
  end,
}
