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

  -- stuff
  {
    {
      'cappyzawa/trim.nvim',
      opts = {},
    },
  },
}
