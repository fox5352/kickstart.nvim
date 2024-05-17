return {
  {
    'm4xshen/autoclose.nvim',
    opts = {
      auto_indentEnabled = false,
    },
    config = function()
      require('autoclose').setup()
    end,
  },
}
