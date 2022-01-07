local map = require('utils.map')

-------------------------------------------------------------------
-- Normal Mode Key Bindings
-------------------------------------------------------------------
map {'n', '<leader>ps', ':PackerStatus<cr>'}        -- Check Status of Installed Plugins
map {'n', '<leader>psy', ':PackerSync<cr>'}         -- Update/Install and Compile Installed Plugins
map {'n', '<leader>pp', ':PackerProfile<cr>'}       -- Check packer profiler for performance
map {'n', '<leader>pc', ':PackerCompile<cr>'}       -- Compile Installed Plugins
