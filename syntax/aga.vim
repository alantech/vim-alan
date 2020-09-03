" Vim syntax file
" Language:   Alan Graphcode Assembler
" Maintainer: Alan Technologies, Inc
" URL: https://github.com/alantech/vim-alan

if exists("b:current_syntax")
  finish
endif

syntax match   agaHeader    "Alan Graphcode Assembler v0.0.1"
syntax keyword agaKeywords  globalMem customEvents handler closure for with size
syntax match   agaSymbols   "[=:\(\)\[\]]"
syntax match   agaSymbols   "<-"
syntax match   agaConstants "true"
syntax match   agaConstants "false"
syntax region  agaConstants start=+\z(["']\)+ skip=+\\\%(\z1\|$\)+ end=+\z1+ end=+$+
syntax match   agaConstants /-*\c\<\%(\d\+\%(e[+-]\=\d\+\)\=\([fi]64\)*\|0b[01]\+\([fi]64\)*\|0o\o\+\([fi]64\)*\|0x\x\+\([fi]64\)*\)\>/
syntax match   agaAddress   /@-*[0-9]*/
syntax match   agaLineNo    /\#[0-9]*/

hi def link agaHeader    Comment
hi def link agaLineNo    Tag
hi def link agaAddress   PreProc
hi def link agaKeywords  Statement
hi def link agaSymbols   Type
hi def link agaConstants Constant

let b:current_syntax = "aga"