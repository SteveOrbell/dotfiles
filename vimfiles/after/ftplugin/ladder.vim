" Syntax highlighting for ladder files
:syn match ladderComment /\/\/.*/
:syn match ladderMsgId /\$\d\{8}/
":syn match leftMessage /^.*<--[^$\/]*/
":syn match rightMessage /^.*-->[^$\/]*/
syn region leftLine start=/^.*<--/ end=/$/ contains=ladderComment, ladderMsgId
syn region rightLine start=/^.*-->/ end=/$/ contains=ladderMsgId, ladderComment

" Now make them appear:
" The primary highlighting groups are Comment, Constant, Identifier,
" Statement, PreProc, Type, Special, Underlined, Error
hi Normal gui=none guifg=#000000 guibg=#FFFFFF
hi Right gui=none guifg=#000000 guibg=#EEEEEE
hi Left  gui=none guifg=#444444 guibg=#FFFFFF

hi MyComment  gui=none guifg=#4444CC
hi MyIdentifier  gui=none guifg=#448844

hi link ladderComment MyComment
hi link rightLine Right
"hi link rightMessage Right
hi link leftLine Left
"hi link leftMessage Left
hi link ladderMsgId MyIdentifier
