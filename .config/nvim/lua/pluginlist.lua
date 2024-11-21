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
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    opts = {},
    -- Optional dependencies
    dependencies = { { "echasnovski/mini.icons", opts = {} } },
    -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if prefer nvim-web-devicons
  },
  {
    "lewis6991/gitsigns.nvim",
    config = function()
      require("gitsigns").setup({
        -- Your desired settings here
        signs = {
          add = { text = "│" },
          change = { text = "│" },
          delete = { text = "_" },
          -- ...
        },
        signcolumn = true,
        numhl = false,
        linehl = false,
        word_diff = false,
        watch_gitdir = { interval = 10 },
      })
    end,
  },
  "neovim/nvim-lspconfig",
  {
    "EdenEast/nightfox.nvim",
	priority = 1000,
	config = function()
		vim.cmd("colorscheme nightfox")
	end
  },
  {
    "hrsh7th/nvim-cmp",
	dependencies = {
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",

    	"hrsh7th/cmp-nvim-lsp",
		"folke/neodev.nvim", -- nvim namespace
	},
  },
  {
	  'nvim-telescope/telescope.nvim',
	  dependencies = {
		  'nvim-lua/plenary.nvim'
	  },
  },
  {
	  'nvim-telescope/telescope-fzf-native.nvim',
	  build = 'make',
  },
  {
	  'nvim-treesitter/nvim-treesitter',
	  build = ':TSUpdate',
  },
}
