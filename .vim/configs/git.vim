"==========[ CONFIGURATIONS ]==========
"----------[blamer.nvim configs]--------
let g:blamer_enabled = 1
"==========[ KEY-MAPPINGS ]==========
"----------[Git mapping]--------
" (gs) git status
map gs :GFiles?<CR>
nmap gw :Gwrite<CR>
nmap gcom :AsyncRun -mode=term git commit<CR>

command! -bang -nargs=* -complete=file Make AsyncRun -mode=term -program=make @ <args>
nnoremap <silent> <C-a>M :call fzf#run({'source': GetMappings(),'options': '-m'} )<CR>
function! MinExec(cmd)
	redir @a
	exec printf('silent %s',a:cmd)
	redir END
	return @a
endfunction
function! GetMappings()
	let lines=MinExec('map')
	let lines=split(lines,'\n')
	return lines
endfunction
