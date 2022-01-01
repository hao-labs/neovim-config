# remove compiled packer
rm -rf plugin/packer_compiled.lua
# remove installed plugins
rm -rf ~/.local/share/nvim/*

# Clean up lsp log
cat /dev/null > ~/.cache/nvim/lsp.log
# Clean up lsp installer log
cat /dev/null > ~/.cache/nvim/lsp-installer.log
# Clean up packer.nvim.log
cat /dev/null > ~/.cache/nvim/packer.nvim.log

