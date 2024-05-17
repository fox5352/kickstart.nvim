local filetype = require 'mason-lspconfig.mappings.filetype'
function cmd(query)
  vim.cmd(query)
end

return {
  {
    'romgrk/barbar.nvim',
    dependencies = {},
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
      vim.g.barbar_auto_setup = false

      require('barbar').setup {
        -- Enable/disable animations
        animation = true,

        -- Enables/disable clickable tabs
        --  - left-click: go to buffer
        --  - middle-click: delete buffer
        clickable = true,

        -- Disable highlighting file icons in inactive buffers
        highlight_inactive_file_icons = false,

        icons = {
          button = '',
          filetype = {
            -- Requires `nvim-web-devicons` if `true`
            enabled = false,
          },

          -- Set the filetypes which barbar will offset itself for
          sidebar_filetypes = {
            -- Use the default values: {event = 'BufWinLeave', text = '', align = 'left'}
            NvimTree = true,
            -- Or, specify the text used for the offset:
            undotree = {
              text = 'undotree',
              align = 'center', -- *optionally* specify an alignment (either 'left', 'center', or 'right')
            },
            -- Or, specify the event which the sidebar executes when leaving:
            ['neo-tree'] = { event = 'BufWipeout' },
            -- Or, specify all three
            Outline = { event = 'BufWinLeave', text = 'symbols-outline', align = 'right' },
          },

          -- New buffer letters are assigned in this order. This order is
          -- optimal for the qwerty keyboard layout but might need adjustment
          -- for other layouts.
          letters = 'asdfjkl;ghnmxcvbziowerutyqpASDFJKLGHNMXCVBZIOWERUTYQP',
        },
      }

      vim.keymap.set('n', '<C-h>', function()
        cmd 'BufferPrevious'
      end)

      vim.keymap.set('n', '<C-l>', function()
        cmd 'BufferNext'
      end)

      vim.keymap.set('n', '<C-s>', function()
        cmd 'BufferClose'
      end)
    end,
  },
}
