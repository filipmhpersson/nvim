return {
  {
    'olimorris/codecompanion.nvim',
    event = 'VeryLazy',
    config = function()
      require('codecompanion').setup {
        adapters = {
          copilot = function()
            return require('codecompanion.adapters').extend('copilot', {
              schema = {
                model = {
                  default = 'claude-3.7-sonnet',
                },
              },
            })
          end,
        },
        strategies = {
          chat = {
            adapter = 'copilot',
          },
          inline = {
            adapter = 'copilot',
          },
          completion = {
            adapter = 'copilot',
            accept_keymaps = '<Tab>',
            dismiss_keymaps = '<C-]>',
          },
        },
      }
    end,

    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
    },
  },
}
