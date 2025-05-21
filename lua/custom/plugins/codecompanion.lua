return {
  {
    'zbirenbaum/copilot.lua',
    cmd = 'Copilot',
    event = 'InsertEnter',
    config = function()
      require('copilot').setup {}
    end,
  },
  -- {
  --   'olimorris/codecompanion.nvim',
  --   event = 'VeryLazy',
  --   config = function()
  --     require('codecompanion').setup {
  --       adapters = {
  --
  --         copilot = function()
  --           return require('codecompanion.adapters').extend('copilot', {
  --             schema = {
  --               model = {
  --                 default = 'claude-3.7-sonnet',
  --               },
  --             },
  --           })
  --         end,
  --
  --         azure_openai = function()
  --           return require('codecompanion.adapters').extend('azure_openai', {
  --             env = {
  --               api_key = 'cmd: echo $AZURE_OPENAI_API_KEY',
  --               endpoint = 'https://test-ibinder-ai-services.openai.azure.com/',
  --             },
  --             schema = {
  --               model = {},
  --             },
  --           })
  --         end,
  --       },
  --       strategies = {
  --         chat = {
  --           adapter = 'copilot',
  --         },
  --         inline = {
  --           adapter = 'copilot',
  --         },
  --       },
  --     }
  --   end,
  --   dependencies = {
  --     'nvim-lua/plenary.nvim',
  --     'nvim-treesitter/nvim-treesitter',
  --   },
  -- },
}
