" Vim syntax file
" Language:             Haskell Persistent Database Framework
" Maintainer:           Benjamin Kovach <bkovach13@gmail.com>
" License:              Vim (see :h license)
" Repository:           https://github.com/5outh/yesod-routes.vim

if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

" Models
syn keyword yesodModelsKeywords json deriving
syn keyword yesodModelsTypes Text ByteString Int64 Double Rational Bool Day
syn keyword yesodModelsTypes TimeOfDay UTCTime Maybe Int Integer String Textarea
syn keyword yesodModelsTypes Typeable Generic Eq Show Read Enum
syn match yesodModelsTypes "\C\v[A-Z]+[a-zA-Z]*Id"
syn match yesodModelsEntity "\C\v^[A-Z]\S*"
syn match yesodModelsField "\C\v^\s+\zs[a-z][a-zA-Z]\S*\ze"
syn match yesodModelsFieldUnique "\C\v^\s+\zsUnique[A-Z]{1}[a-z]+[a-zA-Z]\S*\ze"

highlight def link yesodModelsKeywords Keyword
highlight def link yesodModelsTypes Type
highlight def link yesodModelsEntity Macro
highlight def link yesodModelsField Identifier
highlight def link yesodModelsFieldUnique Conditional

let b:current_syntax = "persistent"
