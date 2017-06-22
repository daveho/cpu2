" Vim syntax for cpu2 microcode assembly

if exists("b:current_syntax")
  finish
endif

syn keyword ucodeKeyword def signal default template ins pattern start stop

syn keyword ucodeTodo contained TODO FIXME XXX NOTE
syn match ucodeComment "#.*$" contains=ucodeTodo

let b:current_syntax = "ucode"

hi def link ucodeKeyword    Keyword
hi def link ucodeTodo       Todo
hi def link ucodeComment    Comment
