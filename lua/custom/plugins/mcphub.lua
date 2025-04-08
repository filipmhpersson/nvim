return {
  'ravitemer/mcphub.nvim',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  cmd = 'MCPHub',
  build = 'npm install -g mcp-hub@latest',
  lazy = true,
  extensions = {
    avante = {},
  },
  config = function()
    require('mcphub').setup {
      -- Define how MCPHub should interact with your editor
      -- This is where you can adjust the context enrichment behavior
      context = {
        include_buffer_content = true, -- Include current buffer content
        include_git_diff = true, -- Include git diff information
        include_lsp_context = true, -- Include LSP-provided context (symbols, diagnostics)
        include_file_tree = true, -- Include relevant files from projec
        max_context_tokens = 4000, -- Maximum tokens to use for context
      },
      log_level = 'info', -- debug, info, warn, error
    }
  end,
}
