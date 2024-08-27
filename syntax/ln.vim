" Vim syntax file
" Language:   Alan
" Maintainer: Alan Language Contributors
" URL: https://github.com/alantech/vim-alan

if exists("b:current_syntax")
  finish
endif

syntax keyword importKeywords import from export as
syntax keyword normalKeywords type ctype fn event on const let return emit prefix infix postfix precedence if else new interface
syntax match   lnOperators   "[@+\-/*^.~`!@#$%&|:;<>?=][+\-/*^.~`!@#$%&|:;<>?=]*"
syntax match   lnSymbols     "[,\{\}\(\)\[\]\.=:]"
syntax match   lnConstants   "true"
syntax match   lnConstants   "false"
syntax region  lnConstants   start=+\z(["']\)+ skip=+\\\%(\z1\)+ end=+\z1+
syntax match   lnConstants   /\c\<\%(\(\d\|_\)\+\%(e[+-]\=\(\d\|_\)\+\)\=\|0b[01_]\+\|0o\(\o\|_\)\+\|0x\(\x\|_\)\+\)\>/
syntax region  lnComment     start="//" end="$" contains=@Spell
syntax region  lnComment     start="/\*" end="\*/" contains=@Spell fold

hi def link importKeywords PreProc
hi def link normalKeywords Statement
hi def link lnComment      Comment
hi def link lnOperators    Operator
hi def link lnSymbols      Type
hi def link lnConstants    Constant

let b:current_syntax = "alan"