require("project_nvim").setup {
    patterns = {
        ".git",
        ".husky",
        "pnpm-lock.yaml",
        "composer.json",
        "docker-compose.yml",
        "artisan",
        "node_modules",
        "package.json"
    },
}

require('telescope').load_extension('projects')
