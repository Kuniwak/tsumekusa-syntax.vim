" Tsumekusa document syntax file
" Language:	Tsumekusa
" Maintainer:   Orga Chem <orga.chem.job@gmail.com>

"if exists("b:current_syntax")
"  finish
"endif

let s:save_cpo = &cpo
set cpo&vim

if has("conceal")
  syn region tsumekusaLink       start="\[" end="\]" concealends
  syn region tsumekusaInlineCode start="`" end="`" concealends
else
  syn region tsumekusaLink       start="\[" end="\]"
  syn region tsumekusaInlineCode start="`" end="`"
endif

hi def link tsumekusaLink       Special
hi def link tsumekusaInlineCode Statement

let b:current_syntax = "tsumekusa"

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: ts=8
