return {
  'ThePrimeagen/harpoon',
  dependencies = { 'nvim-lua/plenary.nvim' }, -- Dependency for Harpoon
  config = function()
    -- Keymappings for Harpoon
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', '<leader>h', mark.add_file, { desc = 'Add file to Harpoon' })
    vim.keymap.set('n', '<leader>l', ui.toggle_quick_menu, { desc = 'Toggle Harpoon list' })

    -- Navigate between Harpoon marks
    vim.keymap.set('n', '<leader>1', function()
      ui.nav_file(1)
    end, { desc = 'Go to Harpoon mark 1' })
    vim.keymap.set('n', '<leader>2', function()
      ui.nav_file(2)
    end, { desc = 'Go to Harpoon mark 2' })
    vim.keymap.set('n', '<leader>3', function()
      ui.nav_file(3)
    end, { desc = 'Go to Harpoon mark 3' })
    vim.keymap.set('n', '<leader>4', function()
      ui.nav_file(4)
    end, { desc = 'Go to Harpoon mark 4' })
    -- Customize Harpoon menu appearance
    require('harpoon').setup {
      menu = {
        width = 80, -- Set custom width for the menu
        height = 10, -- Optional: set height if needed
      },
    }
  end,
}
