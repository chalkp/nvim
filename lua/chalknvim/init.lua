require("chalknvim.set")
require("chalknvim.remap")

require("presence").setup({
  -- General options
  auto_update         = true,
  neovim_image_text   = "Do not underestimate the power of collective autism.",
  main_image          = "neovim",
  log_level           = nil,
  debounce_timeout    = 10,
  enable_line_number  = true,
  blacklist           = {},
  buttons             = {{ label = "chalkp.com", url = "https://chalkp.com/" }, ...},
  file_assets         = {},
  show_time           = true,

  -- Rich Presence text options
  editing_text        = "Editing %s",
  file_explorer_text  = "Browsing %s",
  git_commit_text     = "Committing changes",
  plugin_manager_text = "Managing plugins",
  reading_text        = "Reading %s",
  workspace_text      = "Working on %s",
  line_number_text    = "Line %s out of %s",
})

require("notebook").setup {
  insert_blank_line = true,
  show_index = true,
  show_cell_type = true,
}
