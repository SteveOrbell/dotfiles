" my filetype file
	if exists("did_load_filetypes")
	  finish
	endif
	augroup filetypedetect
	  au! BufRead,BufNewFile *.lad		setfiletype ladder
	  au! BufRead,BufNewFile *.fld		setfiletype ipsfold
	augroup END
