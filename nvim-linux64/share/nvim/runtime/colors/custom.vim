let colors_name = "custom"
hi clear
if exists("syntax_on")
	syntax reset
endif

set bg=dark

hi Normal       guibg=#333333
hi Comment 		ctermfg=gray 		guifg=#e4a762 
hi Constant 	ctermfg=gray 		guifg=#7680a8
hi Special		ctermfg=blue 	    guifg=#4b80e5
hi Identifier	ctermfg=cyan		guifg=#4baee5
hi Statement	ctermfg=blue		guifg=#906db7
hi PreProc		ctermfg=magenta		guifg=#8430e0
hi type			ctermfg=darkblue	guifg=#4255aa 	
hi Underlined	cterm=underline		term=underline
hi Pmenu        guifg=#e4a762       guibg=#292929
hi PmenuSel     guifg=#e4a762       guibg=#4d4d4d
hi LineNr       guifg=#e4a762   
hi NonText      guifg=#4d4d4d
hi EndOfBuffer  guifg=#4d4d4d
hi Search       guifg=#e4a762       guibg=#4d4d4d
hi IncSearch    guifg=#e4a762       guibg=#4d4d4d
