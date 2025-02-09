-- AstroCommunity plugins
-- https://github.com/AstroNvim/astrocommunity

return {
  -- ----------------------------------------------
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",

  -- Test changes in local copy of astrocommunity (fork of project)
  -- uses ~/project/astrocommunity
  -- {
  --   "AstroNvim/astrocommunity",
  --   dev = true,
  -- },
  -- local plugins in path
  -- { dir = "~/projects/community/neovim/astrocommunity" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- code runner
  -- Overseer task runner & job management
  { import = "astrocommunity.code-runner.overseer-nvim" },

  -- ----------------------------------------------
  -- color
  -- color picker and highlighter
  { import = "astrocommunity.color.ccc-nvim" },

  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Motion plugins
  -- :help nvim-surround.usage.
  { import = "astrocommunity.motion.nvim-surround" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Editor support
  -- Rainbow parens
  { import = "astrocommunity.editing-support.rainbow-delimiters-nvim" },
  { import = "astrocommunity.editing-support.nvim-regexplainer" },
  { import = "astrocommunity.editing-support.todo-comments-nvim" },
  {
    "folke/todo-comments.nvim",
    opts = {
      sign_priority = 5, -- higher sign display priority
    },
  },

  -- ----------------------------------------------
  -- Distraction free editing
  { import = "astrocommunity.editing-support.zen-mode-nvim" },
  {
    "folke/zen-mode.nvim",
    opts = {
      -- override default configuration
      -- https://github.com/folke/zen-mode.nvim#%EF%B8%8F-configuration
      plugins = {
        options = {
          enabled = true,
        },
        kitty = {
          enabled = true,
          font = "+4", -- font size increment
        },
      },
    },
  },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Motion
  -- Navigate with search labels
  -- { import = "astrocommunity.motion.flash-nvim" }, -- overrides S surround in visual state
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Packs
  -- Treesitter: clojure , Lsp: clojure-lsp, Lint/format:
  -- { import = "astrocommunity.pack.clojure" },
  -- Configure parinfer with different mode, i.e. paren, smart, indent (default)
  -- {
  --   "gpanders/nvim-parinfer",
  --   ft = { "clojure" },
  --   config = function()
  --     vim.g.parinfer_force_balance = true
  --     vim.g.parinfer_comment_chars = ";;"
  --     vim.g.parinfer_mode = "paren"
  --   end,
  -- },
  -- Treesitter: dockerfile , Lsp: dockerls & docker_compose_language_service, Lint/format: hadolint
  { import = "astrocommunity.pack.docker" },
  -- Treesitter: json & jsonc, Lsp: jsonls, Lint/format: stylua
  { import = "astrocommunity.pack.json" },
  -- Treesitter: lua, Lsp: lua_ls, Lint/format: stylua
  { import = "astrocommunity.pack.lua" },

  -- Pack not used as prettierd too agressive with format
  -- Treesitter: markdown & markdown_inline, Lsp: marksman, Lint/format: prettierd
  -- { import = "astrocommunity.pack.markdown" },
  -- Treesitter: markdown & markdown_inline, Lsp: marksman, Lint/format: prettierd
  -- { import = "astrocommunity.pack.yaml" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Project
  { import = "astrocommunity.project.project-nvim" }, -- switch between projects
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Programing Language support
  { import = "astrocommunity.programming-language-support.nvim-jqx" },
  { import = "astrocommunity.programming-language-support.rest-nvim" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Registers
  { import = "astrocommunity.register.nvim-neoclip-lua" },
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Themes
  -- defined in themes.lua
  -- ----------------------------------------------

  -- ----------------------------------------------
  -- Utility
  -- rich command prompt
  { import = "astrocommunity.utility.noice-nvim" },

  -- pack
  -- vue
  -- Vue support
  { import = "astrocommunity.pack.vue" },
  { import = "astrocommunity.pack.python" },

  -- { import = "astrocommunity.colorscheme.dracula-nvim" },
  { import = "astrocommunity.colorscheme.catppuccin", enable = true, lazy = false },
  { -- further customize the options set by the community
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        rainbow_delimiters = true,
      },
    },
  },
  -- { "max397574/better-escape.nvim", enabled = false },
  -- ----------------------------------------------
}
