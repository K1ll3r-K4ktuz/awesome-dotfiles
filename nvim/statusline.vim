hi Base guibg=#212933 guifg=#174f47
hi Mode guibg=#f2a05a guifg=#5d4b09 gui=bold
hi Git guibg=#f9c8cc guifg=#000033
hi Filetype guibg=#f2a05a guifg=#000000
hi LineCol guibg=#f9c8cc guifg=#212933 gui=bold

let g:currentmode={
	\'n' : 'Normal ',
	\'no' : 'N.Operator Pending ',
	\'v' : 'Visual ',
	\'V' : 'V.Line ',
	\'^V' : 'V.Block ',
	\'s' : 'Select ',
	\'S' : 'S.Line ',
	\'^S' : 'S.Block ',
	\'i' : 'Insert ',
	\'R' : 'Replace ',
	\'Rv' : 'V.Replace ',
	\'c' : 'Command ',
	\'cv' : 'Vim Ex ',
	\'ce' : 'Ex ',
	\'r' : 'Prompt ',
	\'rm' : 'More ',
	\'r?' : 'Confirm ',
	\'!' : 'Shell ',
	\'t' : 'Terminal '
	\}

" Get current mode
function! ModeCurrent() abort
	let l:modecurrent = mode()
	let l:modelist = toupper(get(g:currentmode, l:modecurrent, 'V.Block '))
	let l:current_status_mode = l:modelist
	return l:current_status_mode
endfunction

" Get branch
function! GitBranch(git)
	if a:git == ""
		return '-'
	else
		return a:git
	endif
endfunction

" File and file status
function! CheckMod(modi)
	if a:modi == 1
		hi Modi guifg=#212933 guibg=#f9c8cc gui=bold
		hi Filename guifg=#efefef guibg=#f9c8cc
		return expand('%:t').'*'
	else
		hi Modi guifg=#212933 guibg=#f9c8cc
		hi Filename guifg=#929dcb guibg=#f9c8cc
		return expand('%:t')
	endif
endfunction

" Current filetype
function! CheckFT(filetype)
	if a:filetype == ''
		return '-'
	else
		return tolower(a:filetype)
	endif
endfunction

" Active statusline

function! ActiveLine()
	let statusline = ""
	let statusline .= "%#Base#"

	" Current mode
	let statusline .= "%#Mode# %{ModeCurrent()}"

	" Current branch
	let statusline .= "%#Git# %{GitBranch(fugitive#head())} %}"

	let statusline .= "%#Base#"
	
	" Right side
	let statusline .= "%="
	
	" File and status
	let statusline .= "%#Modi# %{CheckMod(&modified)} "
	
	" Filetype
	let statusline .= "%#Filetype# %{CheckFT(&filetype)} "
	
	" Line and  Column
	let statusline .= "%#LineCol# %l/%c "

	return statusline
endfunction

" Inactive statusline

function! InactiveLine()
	let statusline = ""
	let statusline = "%#Base#"

	" Path of file
	let statusline .= "%#LineCol# %F "
	return statusline
endfunction

" Change statusline automatically
augroup Statusline
  autocmd!
  autocmd WinEnter,BufEnter * setlocal statusline=%!ActiveLine()
  autocmd WinLeave,BufLeave * setlocal statusline=%!InactiveLine()
  autocmd FileType nerdtree setlocal statusline=%!NERDLine()
augroup END

