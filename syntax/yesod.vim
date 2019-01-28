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
syn match yesodRoutesRoute "\C\v\/[A-Za-z0-9#*+/.-]*"
syn match yesodRoutesResource "\C\v[A-Z]{1}.*R "
syn match yesodRoutesGroup "\C\v[A-Z]{1}.*P:"

highlight def link yesodRoutesMethod Keyword
highlight def link yesodRoutesRoute String
highlight def link yesodRoutesResource Identifier
highlight def link yesodRoutesGroup Function

let b:current_syntax = "yesod"
