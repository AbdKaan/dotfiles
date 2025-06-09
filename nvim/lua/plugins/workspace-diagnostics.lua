return {
  'artemave/workspace-diagnostics.nvim',
  config = function()
    require('lazy').setup({})
    vim.keymap.set('n', '<space>x', function()
      for _, client in ipairs(vim.lsp.get_clients()) do
        require('workspace-diagnostics').populate_workspace_diagnostics(client, 0)
      end
    end, { desc = 'Workspace wise diagnostics' })
  end,
}
