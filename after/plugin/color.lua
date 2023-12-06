require("tokyonight").setup({
  style = "storm",
  diable_background = true
})

function SetColor(color)
  color = color or "tokyonight"
  vim.cmd("colorscheme tokyonight")

  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetColor()
