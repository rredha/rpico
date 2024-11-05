return {
  {
    "numToStr/Comment.nvim",
    config = function ()
      require("Comment").setup()
    end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons"
    },
    config = function ()
      require("lualine").setup({
        icons_enabled = true,
      })
    end,
  },
  "neovim/nvim-lspconfig",
}
