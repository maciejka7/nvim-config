return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons',  'kyazdani42/nvim-web-devicons', },
  config = function()
    require("lualine").setup({
      sections = {
        lualine_x = {
          {

            "datetime",
            style = "%H:%M - %d %m %Y"
          }
        }
      },
    })
  end,
}
