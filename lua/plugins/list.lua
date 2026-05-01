return {
  {
    "EdenEast/nightfox.nvim",
    lazy = false,           -- load at startup
    priority = 1000,        -- load before all other plugins
    config = function()
      -- load the Carbonfox variant of Nightfox
      vim.cmd([[colorscheme carbonfox]])
    end,
  }
}
