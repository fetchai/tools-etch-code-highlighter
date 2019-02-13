" Vim syntax file
" Language: Etch, a Fetch language
" Maintainer: Nathan Hutton
" Latest Revision: 12 Feb 2019

echom("adfadsf")

if exists("b:current_syntax")
  finish
endif

syn match fetch_fn_name '\w\+' contained

syn keyword fetch_basicLanguageKeywords_1 function nextgroup=fetch_fn_name skipwhite

syn keyword fetch_basicLanguageKeywords_2 endfunction print Print

syn keyword fetch_TODOs contained todo TODO

syn match fetch_comment "//.*$" contains=TODOs

syn region fetch_strings start='"' end='"' contained

syn region fetch_DescBlock start="(" end=")" fold transparent contains=fetch_strings

syn match fetch_function '\d[[:digit:]]*\.\d*[eE][\-+]\=\d\+'

let b:current_syntax = "etch"

hi def link fetch_basicLanguageKeywords_1        Statement
hi def link fetch_basicLanguageKeywords_2        Statement
hi def link fetch_TODOs        Todo
hi def link fetch_comment        Comment
hi def link fetch_strings      Constant
hi def link fetch_fn_name      Function

" Some highlighting options
" Comment
" Delimiter
" Error
" Function
" Identifier
" Number
" Operator
" PreProc
" Special
" SpecialChar
" Statement
" String
" Type
