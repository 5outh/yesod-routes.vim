" Vim syntax file
" Language:             Haskell Yesod web framework
" Maintainer:           Benjamin Kovach <bkovach13@gmail.com>
" License:              Vim (see :h license)
" Repository:           https://github.com/5outh/yesod-routes.vim

if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif

syn match yesodRoutesRoutePiece "\/\C\v[A-Za-z0-9-.*_]*"
syn match yesodRoutesResource "\s[A-Z][A-Za-z0-9_]*\s"
syn match yesodRoutesGroup "\C\v[A-Z]{1}.*P:"
syn match yesodRoutesParameter "#[A-Z][A-Za-z0-9_]*"
syn match yesodRoutesComment "--.*"
syn keyword yesodRoutesMethod DELETE GET PATCH POST PUT

highlight def link yesodRoutesRoutePiece String
highlight def link yesodRoutesResource Type
highlight def link yesodRoutesGroup Constant
highlight def link yesodRoutesParameter Identifier
highlight def link yesodRoutesComment Comment
highlight def link yesodRoutesMethod Label

let b:current_syntax = "yesod"
