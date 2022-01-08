## Keyboard Shortcuts

### Leader key ( , )

### LSP (IDE)
|Action|Shortcut|Command|Note|
|-|-|-|-|
|Go to Declaration|gD|-|-|
|Go to Definition|gd|-|-|
|hover|K|-|-|
|implementation|gi|-|-|
|signature help|Ctrl+k|-|-|
|buff type definition|space+D|-|-|
|buf rename|space+rn|-|-|
|buf code action|space+ca|-|-|
|buf references|gr|-|-|
|next diagnostic|]d|-|-|
|prev diagnostic|[d|-|-|
|diagnostic setloclist|space+q|-|-|
|buf formating|space+f|-|-|

### Git
|Action|Shortcut|Command|Note|
|-|-|-|-|
|Next Hunk|]c|:GitSigns next_hunk|Hunk it's small part of changed line|
|Previous Hunk|[c|:GitSigns prev_hunk|-|
|Reset Hunk to original change|[,hr|:GitSigns reset_hunk|-|
|Add Hunk to Stage|,hs|:GitSigns stage_hunk|-|
|Undo Staged Hunk|,hu|:GitSigns undo_stage_hunk|-|
|Preview Diff Hunk|,hp|:GitSigns undo_stage_hunk|can be combine with next&previous hunk|
|Git Status|,gs|:Neogit|Git status and git operation (stage, unstage, diff, commit, push, pull, etc)|
|Current File Git History|,gh|:DiffviewFileHistory|-|
|Open Diff Window with Active files|,gdo|:DiffviewOpen|-|
|Close Diff Window|,gdc|:DiffviewClose|-|
|Refresh Active files on Diff Window|,gdr|:DiffviewRefresh|-|

### Github
|Action|Shortcut|Command|Note|
|-|-|-|-|

### Tab Navigation
|Action|Shortcut|Command|
|-|-|-|
|Next Tab|]]|:BufferNext|
|Previous Tab|[[|:BufferPrevious|
|Move Tab to ->|}}|:BufferMoveNext|
|Move Tab to <-|{{|:BufferMovePrevious|
|Close Current Tab|Alt+w|:BufferClose|

### Fuzzy Search(Telescope)
|Action|Shortcut|Command|
|-|-|-|
|Open File|Ctrl+p|:Telescope find_files|
|Find Text in File|fif|:Telescope live_grep|
|Git Status|gs|:Telescope git_status|
|Find Active Tab|ft|:Telescope buffers|
|Find Nvim Help|fh|:Telescope help_tags|

### File Explorer(Nvim-Tree)
|Action|Shortcut|Command|
|-|-|-|
|Toggle File Explorer|Ctrl+e|:NvimTreeToggle|
|Add File or Folder|a|-|
|Rename File|r|-|
|Delete File|d|-|
|Prefiew File|tab|-|

### Split Window Navigation
|Action|Shortcut|Command|
|-|-|-|
|Move left|Ctrl+h|-|
|Move down|Ctrl+h|-|
|Move up|Ctrl+k|-|
|Move right|Ctrl+l|-|

### Packer
|Action|Shortcut|Command|
|-|-|-|
|Compile|,pc|:PackerCompile|
|Update Plugin and Compile|,psy|:PackerSync|
|Status|,ps|:PackerStatus|
|Profiler|,ps|:PackerProfile|

