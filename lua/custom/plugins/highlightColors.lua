return {
  {
    'brenoprata10/nvim-highlight-colors',
    config = function()
      vim.opt.termguicolors = true

      require('nvim-highlight-colors').setup {
        ---Render style #fc7373
        ---@usage 'background'|'foreground'|'virtual'
        render = 'background',
        enable_named_colors = true,
      }
    end,
  },
}
