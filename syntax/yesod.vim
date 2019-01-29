" Vim syntax file
" Language:             Haskell Yesod web framework
" Maintainer:           Benjamin Kovach <bkovach13@gmail.com>
" License:              Vim (see :h license)
" Repository:           https://github.com/5outh/vim-yesod

if version < 600
  syn clear
elseif exists("b:current_syntax")
  finish
endif


" Routes
syn keyword yesodRoutesMethod DELETE GET PATCH POST PUT
syn match yesodRoutesRoutePiece "\C\v[A-Za-z0-9-.*_]*"
syn match yesodRoutesResource "[A-Z]\C\v[A-Z]{1}.* "
syn match yesodRoutesGroup "\C\v[A-Z]{1}.*P:"
syn match yesodRoutesParameter "/#\C\v[A-Z]{1}"
syn match yesodRoutesComment "--.*"

highlight def link yesodRoutesMethod Label
highlight def link yesodRoutesRoutePiece String
highlight def link yesodRoutesResource Type
highlight def link yesodRoutesGroup Constant
highlight def link yesodRoutesParameter Identifier
highlight def link yesodRoutesComment Comment

let b:current_syntax = "yesod"
