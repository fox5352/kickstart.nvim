-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- harppon
  { 'nvim-lua/plenary.nvim' },
  {
    'ThePrimeagen/harpoon',
    lazy = false,
    config = function()
      -- local harpoon = require('harpoon').setup()

      vim.keymap.set('n', '<leader>a', function()
        local harp = require 'harpoon.mark'
        -- harpoon.ui:toggle_quick_menu(harpoon:list())
        harp.add_file()
      end)
      vim.keymap.set('n', '<C-e>', function()
        local harp = require 'harpoon.ui'

        harp.toggle_quick_menu()
      end)
    end,
  },
  {
    'barrett-ruth/live-server.nvim',
    build = 'npm add -g live-server',
    cmd = { 'LiveServerStart', 'LiveServerStop', 'LiveServerToggle' },
    lazy = false,
    config = function()
      require('live-server').setup()

      vim.keymap.set('n', '<leader>ts', function()
        vim.cmd 'LiveServerToggle'
      end)
    end,
  },
  -- FIX: discord
  -- {
  --   'vyfor/cord.nvim',
  --   build = './build',
  --   event = 'VeryLazy',
  --   opts = {},
  -- },

  -- stuff
  {
    {
      'cappyzawa/trim.nvim',
      opts = {},
    },
  },

  {
    'windwp/nvim-ts-autotag',
    opts = {
      -- Defaults
      enable_close = true, -- Auto close tags
      enable_rename = true, -- Auto rename pairs of tags
      enable_close_on_slash = false, -- Auto close on trailing </
    },
  },

  -- BUG: doesnt work on windows tabnine plugin
  -- {
  --   'codota/tabnine-nvim',
  --   build = './dl_binaries.sh',
  --   config = function()
  --     require('tabnine').setup {
  --       disable_auto_comment = true,
  --       accept_keymap = '<C-Tab>',
  --       dismiss_keymap = '<C-n>',
  --       debounce_ms = 800,
  --       suggestion_color = { gui = '#708050', cterm = 244 },
  --       exclude_filetypes = { 'TelescopePrompt', 'NvimTree' },
  --       log_file_path = nil, -- absolute path to Tabnine log file
  --     }
  --   end,
  -- },

  {
    'Exafunction/codeium.nvim',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('codeium').setup {
        -- Optionally disable cmp source if using virtual text only
        enable_cmp_source = false,
        virtual_text = {
          enabled = true,

          -- These are the defaults

          -- Set to true if you never want completions to be shown automatically.
          manual = false,
          -- A mapping of filetype to true or false, to enable virtual text.
          filetypes = {},
          -- Whether to enable virtual text of not for filetypes not specifically listed above.
          default_filetype_enabled = true,
          -- How long to wait (in ms) before requesting completions after typing stops.
          idle_delay = 75,
          -- Priority of the virtual text. This usually ensures that the completions appear on top of
          -- other plugins that also add virtual text, such as LSP inlay hints, but can be modified if
          -- desired.
          virtual_text_priority = 65535,
          -- Set to false to disable all key bindings for managing completions.
          map_keys = true,
          -- The key to press when hitting the accept keybinding but no completion is showing.
          -- Defaults to \t normally or <c-n> when a popup is showing.
          accept_fallback = nil,
          -- Key bindings for managing completions in virtual text mode.
          key_bindings = {
            -- Accept the current completion.
            accept = '<C-a>',
            -- Accept the next word.
            accept_word = false,
            -- Accept the next line.
            accept_line = false,
            -- Clear the virtual text.
            clear = false,
            -- Cycle to the next completion.
            next = '<C-n>',
            -- Cycle to the previous completion.
            prev = '<C-p>',
          },
        },
      }
    end,
  },
}
