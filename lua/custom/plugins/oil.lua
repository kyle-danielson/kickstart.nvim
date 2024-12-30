return {
  'stevearc/oil.nvim',
  opts = {
    default_file_explorer = true,
  },

  -- Optional dependencies
  -- dependencies = { "echasnovski/mini.icons" },
  dependencies = { 'nvim-tree/nvim-web-devicons' }, -- use if prefer nvim-web-devicons
  config = function()
    require('oil').setup {
      columns = { 'icon' },
      keymaps = {
        ['<C-h>'] = false,
        ['<C-l>'] = false,
        ['<C-k>'] = false,
        ['<C-j>'] = false,
        ['<M-h>'] = 'actions.select_split',
      },
      view_options = { show_hidden = true },
    }
    vim.keymap.set('n', '-', '<CMD>Oil<CR>', { desc = 'Open Parent Directory with Oil' })
  end,
}
