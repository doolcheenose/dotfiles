return {
  -- colorscheme (load first)
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- Load colorscheme on startup
      vim.o.termguicolors = true
      vim.cmd([[colorscheme tokyonight-storm]])
    end,
  },

  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {},
  },
  "folke/which-key.nvim",

  -- Manage LSPs in stdpath for neovim
  {
    "mason-org/mason.nvim",
    opts = {},
  },

  -- Corner UI
  {
    "j-hui/fidget.nvim",
    opts = {},
  },

  -- tmux integration
  "christoomey/vim-tmux-navigator",

  -- statusline
  {
    "nvim-lualine/lualine.nvim",
    opts = {},
  },

  -- "gc" to comment visual regions/lines
  "numToStr/Comment.nvim",

  -- Git related plugins
  "tpope/vim-fugitive",
  "tpope/vim-rhubarb",
  "lewis6991/gitsigns.nvim",

  -- Automatically detect tab width
  "tpope/vim-sleuth",

  -- Add indentation guides even on blank lines
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    ---@module "ibl"
    ---@type ibl.config
    opts = {
      indent = {
        char = "┊",
      },
      scope = {
        show_end = false,
        show_start = false,
      },
    },
  },
}
