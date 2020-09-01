" Vim syntax file
" Language:   Alan
" Maintainer: Alan Technologies, Inc
" URL: https://github.com/alantech/vim-alan

if exists("b:current_syntax")
  finish
endif

syntax keyword importKeywords import from export as
syntax keyword normalKeywords type fn event on const let return emit prefix infix precedence if else new interface
syntax region  lnComment     start=+//+ end=/$/
syntax region  lnComment     start=+/\*+ end=+\*/+
syntax match   lnOperators   "[+\-/*^.~`!@#$%&|:;<?=][+\-/*^.~`!@#$%&|:;<>?=]*"
syntax match   lnSymbols     "[,\{\}\(\)<>\[\]\.=@\/\|:]"
syntax match   lnConstants   "true"
syntax match   lnConstants   "false"
syntax region  lnConstants   start=+\z(["']\)+ skip=+\\\%(\z1\|$\)+ end=+\z1+ end=+$+
syntax match   lnConstants   /\c\<\%(\d\+\%(e[+-]\=\d\+\)\=\|0b[01]\+\|0o\o\+\|0x\x\+\)\>/

hi def link importKeywords PreProc
hi def link normalKeywords Type
hi def link lnComment   Comment
hi def link lnOperators Operator
hi def link lnSymbols   Noise
hi def link lnConstants Constant

let b:current_syntax = "alan"