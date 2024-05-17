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

  -- notify plugin
  {
    'rcarriga/nvim-notify',
    config = function()
      vim.notify = require 'notify'
    end,
  },

  --  tabnine plaugin
  {
    'codota/tabnine-nvim',
    build = './dl_binaries.sh',
    config = function()
      require('tabnine').setup {
        disable_auto_comment = true,
        accept_keymap = '<Tab>',
        dismiss_keymap = '<C-]>',
        debounce_ms = 800,
        suggestion_color = { gui = '#808080', cterm = 244 },
        exclude_filetypes = { 'TelescopePrompt', 'NvimTree' },
        log_file_path = nil, -- absolute path to Tabnine log file
      }
    end,
  },

  -- stuff
}
