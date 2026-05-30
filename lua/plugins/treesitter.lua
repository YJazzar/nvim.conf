return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  highlight = {
      enable = true,
  },
  ensure_installed = { "go", "gomod", "gowork", "gosum"}
}
