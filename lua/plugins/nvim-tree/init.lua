local enable_git = 1
local g = vim.g
local ui = {
  allow_resize = true,
  side = "left",
  width = 25,
  hide_root_folder = true,
}

g.nvim_tree_add_trailing = 0 -- append a trailing slash to folder names
g.nvim_tree_git_hl = enable_git
g.nvim_tree_highlight_opened_files = 0
g.nvim_tree_root_folder_modifier = table.concat { ":t:gs?$?/..", string.rep(" ", 1000), "?:gs?^??" }

g.nvim_tree_show_icons = {
  folders = 1,
  files = 1,
  git = enable_git,
}

g.nvim_tree_respect_buf_cwd = 1

g.nvim_tree_icons = {
  default = "",
  symlink = "",
  git = {
    deleted = "",
    ignored = "◌",
    renamed = "➜",
    staged = "✓",
    unmerged = "",
    unstaged = "✗",
    untracked = "★",
  },
  folder = {
    default = "",
    empty = "",
    empty_open = "",
    open = "",
    symlink = "",
    symlink_open = "",
  },
}

require('nvim-tree').setup {
  filters = {
    dotfiles = false,
  },
  disable_netrw = true,
  hijack_netrw = true,
  ignore_ft_on_setup = {
    "dashboard"
  },
  auto_close = false,
  open_on_tab = false,
  hijack_cursor = true,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
  },
  diagnostics = {
    enable = true,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    }
  },
  view = ui,
  git = {
    ignore = false,
  },
  actions = {
    open_file = {
      quit_on_open = 0, -- closes tree when file's opened
      window_picker = {
        exclude = {
          filetype = { "notify", "packer", "qf" },
          buftype = { "terminal" },
        }
      }
    },
    renderer = {
      indent_markers = {
        enable = 1
      }
    }
  }
}

require('utils.nvim-tree-offset').register_cmd()
