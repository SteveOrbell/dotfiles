" Syntax highlighting for folding IPS trace files 

syn match foldComment /\/\/[^{]*/
syn match foldMsgId /\$\d\{8}/
syn match messageName /<.*>/ contained
syn match processKey /|.*|/ contained

" Now make them appear:
hi link foldComment Comment
hi link foldMsgId Identifier
hi link messageName Special
hi link processKey Comment
" Possible values Todo, Keyworkd

syn region messageLine start=/\$\d\{8}/ end=/;/ contains=foldMsgId,processKey,messageName,foldComment
syn region myFold start="{" end="}" transparent fold 

hi Folded     guibg=#EEEEEE guifg=black
hi Normal     guibg=white   guifg=black
hi Special    guibg=#FFFF44 guifg=black
hi Comment    guibg=white
hi Identifier guibg=white

