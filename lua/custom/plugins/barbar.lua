function cmd(query)
  vim.cmd(query)
end

return {
  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      -- animation = true,
      -- insert_at_start = true,
      -- …etc.
    },
    version = '^1.0.0', -- optional: only update when a new 1.x version is released
    config = function()
      require('barbar').setup()

      vim.keymap.set('n', '<C-a>', function()
        cmd 'BufferPrevious'
      end)

      vim.keymap.set('n', '<C-d>', function()
        cmd 'BufferNext'
      end)

      vim.keymap.set('n', '<C-w>', function()
        cmd 'BufferClose'
      end)

      vim.keymap.set('n', '<C-s>', function()
        cmd 'BufferLast'
      end)
    end,
  },
}
