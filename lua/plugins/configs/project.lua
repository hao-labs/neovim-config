require("project_nvim").setup {
    patterns = {
        ".git",
        ".husky",
        "pnpm-lock.yaml",
        "node_modules",
        "package.json"
    },
}

require('telescope').load_extension('projects')
