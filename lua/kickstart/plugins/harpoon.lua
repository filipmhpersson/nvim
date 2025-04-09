return {
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      local harpoon = require 'harpoon'

      harpoon:setup()

      vim.keymap.set('n', '<leader>a', function()
        harpoon:list():add()
      end, { desc = '[A]dd to harpoon' })
      vim.keymap.set('n', '<C-e>', function()
        harpoon.ui:toggle_quick_menu(harpoon:list())
      end, { desc = 'Open harpoon m[E]nu' })
      vim.keymap.set('n', '<C-1>', function()
        harpoon:list():select(1)
      end, { desc = 'Goto [F]irst harpoon file' })
      vim.keymap.set('n', '<C-2>', function()
        harpoon:list():select(2)
      end, { desc = 'Goto [S]econd harpoon file' })
      vim.keymap.set('n', '<C-3>', function()
        harpoon:list():select(3)
      end, { desc = 'Goto third harpoon file' })
      vim.keymap.set('n', '<C-4>', function()
        harpoon:list():select(4)
      end, { desc = 'Goto [4]:th harpoon file' })
      vim.keymap.set('n', '<leader>1', function()
        harpoon:list():replace_at(1)
      end, { desc = 'Replace [F]irst harpoon file' })
      vim.keymap.set('n', '<leader>2', function()
        harpoon:list():replace_at(2)
      end, { desc = 'Replace [S]econd harpoon file' })
      vim.keymap.set('n', '<leader>3', function()
        harpoon:list():replace_at(3)
      end, { desc = 'Replace third harpoon file' })
      vim.keymap.set('n', '<leader>4', function()
        harpoon:list():replace_at(4)
      end, { desc = 'Relace [4]:th harpoon file' })
    end,
  },
}
