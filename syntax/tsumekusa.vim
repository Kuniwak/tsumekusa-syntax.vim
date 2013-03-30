" Tsumekusa document syntax file
" Language:	Tsumekusa
" Maintainer:   Orga Chem <orga.chem.job@gmail.com>

if exists("b:current_syntax")
  finish
endif

let s:save_cpo = &cpo
set cpo&vim

syn match tsumekusaLink       "\[[^\]]*\]" contains=tsumekusaLinkSquareBracket
syn match tsumekusaInlineCode "`[^`]*`" contains=tsumekusaInlineCodeBackQuote
syn match tsumekusaStrong     "#[^#]*#" contains=tsumekusaStrongSharp

if has("conceal")
  syn match tsumekusaLinkSquareBracket   contained "[\[\]]" conceal
  syn match tsumekusaInlineCodeBackQuote contained "`" conceal
  syn match tsumekusaStrongSharp         contained "#" conceal
else
  syn match tsumekusaLinkSquareBracket   contained "[\[\]]"
  syn match tsumekusaInlineCodeBackQuote contained "`"
  syn match tsumekusaStrongSharp         contained "#"
endif

hi def link tsumekusaLink                Special
hi def link tsumekusaInlineCode          Statement
hi def link tsumekusaStrong              Constant
hi def link tsumekusaLinkSquareBracket   Ignore
hi def link tsumekusaInlineCodeBackQuote Ignore
hi def link tsumekusaStrongSharp         Ignore

let b:current_syntax = "tsumekusa"

let &cpo = s:save_cpo
unlet s:save_cpo

" vim: ts=8
