require("presence").setup({
  auto_update         = true,
  neovim_image_text   = "Do as you wish.",
  main_image          = "neovim",
  buttons             = true,
  enable_line_number  = false,
  log_level           = nil,

  editing_text        = "Editing %s",
  file_explorer_text  = "Browsing %s",
  git_commit_text     = "Committing changes",
  plugin_manager_text = "Managing plugins",
  reading_text        = "Reading %s",
  workspace_text      = "Working on %s",
  line_number_text    = "Line %s out of %s",
})
