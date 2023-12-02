--[[ it seems like this triggered loading tokyonight.lua
-- which causes w18 error, probably my skill issue.

require("tokyonight").setup({
  style = "storm",
  diable_background = true
})
--]]

function SetColor()
--  vim.cmd("colorscheme tokyonight-storm")

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
  vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end
