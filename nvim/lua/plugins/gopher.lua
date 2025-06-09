return {
  'olexsmir/gopher.nvim',
  ft = 'go',
  -- branch = "develop", -- if you want develop branch
  -- keep in mind, it might break everything
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-treesitter/nvim-treesitter',
    --"mfussenegger/nvim-dap", -- (optional) only if you use `gopher.dap`
  },
  config = function()
    vim.keymap.set('n', '<leader>gsj', '<cmd> GoTagAdd json <CR>', { desc = 'Add json struct tags' })
    vim.keymap.set('n', '<leader>gie', '<cmd> GoIfErr <CR>', { desc = 'Add err != nil block' })
  end,
  -- (optional) will update plugin's deps on every update
  build = function()
    vim.cmd.GoInstallDeps()
  end,
  ---@type gopher.Config
}
