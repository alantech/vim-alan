" Vim syntax file
" Language:   Alan--
" Maintainer: Alan Technologies, Inc
" URL: https://github.com/alantech/vim-alan

if exists("b:current_syntax")
  finish
endif

syntax keyword ammKeywords  fn event on const let return emit
syntax match   ammSymbols   "[,\{\}\(\)<>\[\]\.=@:]"
syntax match   ammConstants "true"
syntax match   ammConstants "false"
syntax region  ammConstants start=+\z(["']\)+ skip=+\\\%(\z1\|$\)+ end=+\z1+ end=+$+
syntax match   ammConstants /\c\<\%(\d\+\%(e[+-]\=\d\+\)\=\|0b[01]\+\|0o\o\+\|0x\x\+\)\>/
syntax region  ammComment   start="//" end="$" contains=@Spell
syntax region  ammComment   start="/\*" end="\*/" contains=@Spell fold

hi def link ammKeywords  Statement
hi def link ammComment   Comment
hi def link ammSymbols   Type
hi def link ammConstants Constant

let b:current_syntax = "alan--"