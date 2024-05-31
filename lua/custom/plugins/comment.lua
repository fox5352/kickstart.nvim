return {
  {
    'lucastavaresa/SingleComment.nvim',

    config = function()
      vim.keymap.set('v', '<C-/>', function()
        require('SingleComment').Comment()
      end)
    end,
  },
}
