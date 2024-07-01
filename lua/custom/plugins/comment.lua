return {
  {
    'lucastavaresa/SingleComment.nvim',

    config = function()
      vim.keymap.set('v', '<C-/>', function()
        require('SingleComment').SingleComment()
      end)

      vim.keymap.set('v', '<C-.', function()
        require('SingleComment').SingleComment()
      end)
    end,
  },
}
