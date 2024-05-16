-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- colorscheme
  {
    'scottmckendry/cyberdream.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      color = 'cyberdream'
      vim.cmd.colorscheme(color)

      vim.api.nvim_set_hl(0, 'Normal', { bg = 'none' })
      vim.api.nvim_set_hl(0, 'NormalFloat', { bg = 'none' })
    end,
  },

  -- harppon
  { 'nvim-lua/plenary.nvim' },
  {
    'ThePrimeagen/harpoon',
    lazy = false,
    config = function()
      -- local harpoon = require('harpoon').setup()

      vim.keymap.set('n', '<leader>a', function()
        local harp = require 'harpoon.mark'

        harp.add_file()
        -- harpoon:list():add()
      end)
      vim.keymap.set('n', '<C-e>', function()
        local harp = require 'harpoon.ui'

        harp.toggle_quick_menu()
        -- harpoon.ui:toggle_quick_menu(harpoon:list())
      end)
    end,
  },
}
