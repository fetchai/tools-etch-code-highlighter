" Vim syntax file
" Language: Etch Fetch.AI
" Maintainers: LR, NH
" Latest Revision: 4 October 2019

if exists("b:current_syntax")
  finish
endif

" from https://docs.fetch.ai/etch-language/syntax/#keywords
syn keyword basicLanguageKeywords  
  \var if endif else for endfor while endwhile 
  \function endfunction break continue return 
  \persistent sharded use as any 
  \null 
syn match annotations "[@](init|action|query|problem|objective|work|clear)"

" from https://docs.fetch.ai/etch-language/variables/
syn keyword primitiveTypes 
  \Int8 Int16 Int32 Int64 Int256 UInt8 UInt16 UInt32 UInt64 UInt256 
  \Float32 Float64 Fixed32 Fixed64 
  \Bool String Buffer Address SHA256  
syn keyword containerTypes 
  \Array Map StructuredData  
  \State ShardedState 

" from https://docs.fetch.ai/etch-language/functions/#utility-functions
syn keyword utilities 
  \printLn System.Argc System.Argv 
  \toString 
  \toInt8 toInt16 toInt32 toInt64 toUInt8 toUInt16 toUInt32 toUInt64 
  \toFloat32 toFloat64 toFixed32 toFixed64

" from https://docs.fetch.ai/etch-language/maths-functions/
syn keyword utilitiesMath 
  \abs exp pow rand sqrt 
  \sin cos tan asin acos atan sinh cosh tanh asinh acosh atanh

" from https://docs.fetch.ai/etch-language/graph/
syn keyword utilitiesML 
  \Tensor Graph 

" from https://docs.fetch.ai/etch-language/syntax/#comments
syn region singleLineComment start="\/\/" end="$" oneline
syn region multiLineComment  start="\/\*" end="\*\/"

syntax region strings start=/"/ skip=/\\"/ end=/"/ oneline
syntax match numbers "\v<\d+>"
syntax match numbers "\v<\d+[iu](8|16|32|64)>"
syntax match numbers "\v<\d+\.\d+>"
syntax match numbers "\v<\d+\.\d+f>"
syntax match numbers "\v<\d+\.\d+fp(32|64)>"
syntax match numbers "\v<\d*\.?\d+([Ee]-?)?\d+>"
syntax keyword booleans true false

let b:current_syntax = "etch"

highlight default link basicLanguageKeywords Keyword
highlight default link annotations           Keyword
highlight default link primitiveTypes   Type
highlight default link containerTypes   Structure
highlight default link singleLineComment Comment
highlight default link multiLineComment  Comment
highlight default link utilities       Function
highlight default link utilitiesMath   Macro
highlight default link utilitiesML     Macro
highlight default link strings  String
highlight default link numbers  Number
highlight default link booleans Boolean

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

