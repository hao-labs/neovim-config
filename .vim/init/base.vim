if !has('gui_running')
  set t_Co=256 " terminal 256 color
endif

set ai " auto indent on new line
set list " show indentation
set listchars=tab:\|\ ,trail:~,extends:>,precedes:<
set showmatch " show matching bracket after last closing
set incsearch " incremental search
set ignorecase " ignore case on search
set vb " set visual bells
set noerrorbells " set no error bells
set showcmd " show command
set ruler
set history=1000
set undolevels=100 " remember last 100 undo history
set hidden " it hide buffer instead of closing it
set laststatus=2
set showtabline=2

"----------[encoding]--------
set encoding=utf-8 " set vim's encoding
set fileformat=unix " use <NL> (new line) for EOL
set fileencoding=utf-8 " write file as utf-8
set backupdir=~/.local/share/nvim/backup " set backup folder

"----------[tabs]--------
set tabstop=4 " number of spaces that a <Tab> in the file counts for
set shiftwidth=4 " number of spaces to use for each step of (auto)indent
set softtabstop=4 " same as tabstop, but its for editing operation
set expandtab " set whitespace as tab

"----------[number]--------
set number " show line number
let g:toggle_line_number = "On"

"----------[max line indicator]--------
highlight ColorColumn ctermbg=black
call matchadd('ColorColumn', '\%81v', 100)
set colorcolumn=81

" Toggle switch automatically line number
function! ToggleLineNumber()
    if g:toggle_line_number == "On"
		let g:toggle_line_number = "Off"
		set norelativenumber
    else
		let g:toggle_line_number = "On"
		set relativenumber
    endif
endfunction

" Using some autocommands, Vim can switch between line number modes automatically.
if !&diff && g:toggle_line_number == "On"
    augroup numbertoggle
      autocmd!
      autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
      autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
    augroup END
endif
