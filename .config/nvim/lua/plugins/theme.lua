return {
  "tiagovla/tokyodark.nvim",
  config = function()
    require("tokyodark").setup({
      transparent_background = true
    })
    vim.cmd [[colorscheme tokyodark]]
  end
}
