return {
  "andweeb/presence.nvim",
  opts = {
    -- General options
    auto_update = true, -- Update activity based on autocmd events
    neovim_image_text = "buh???", -- Text displayed when hovered over the Neovim image
    main_image = "neovim", -- Main image display ("neovim" or "file")
    log_level = nil, -- Log messages at or above this level ("debug", "info", "warn", "error")
    debounce_timeout = 10, -- Seconds to debounce events
    enable_line_number = false, -- Display current line number instead of project
    blacklist = {}, -- Disable Rich Presence for matching files/paths
    buttons = false, -- Enable Rich Presence buttons
    file_assets = {}, -- Custom file asset definitions
    show_time = true, -- Show the timer

    -- Rich Presence text options
    editing_text = "Editing %s", -- Text for editable files
    file_explorer_text = "Browsing in Neo-tree", -- Explicitly set for Neo-tree
    git_commit_text = "Committing changes", -- Text for git commits
    plugin_manager_text = "Managing plugins", -- Text for plugin manager
    reading_text = "Reading %s", -- Text for read-only files
    workspace_text = "Working on %s", -- Text for git workspace
    line_number_text = "Line %s out of %s", -- Text when line numbers enabled
  },
}
