" Copyright 2015 The Chromium Authors. All rights reserved.
" Use of this source code is governed by a BSD-style license that can be
" found in the LICENSE file.
" Vim syntax file " Language: Mojom
" To get syntax highlighting for .fidl files, add the following to your .vimrc
" file:
"     set runtimepath^=/path/to/src/tools/vim/fidl
syn case match

syntax region fidlFold start="{" end="}" transparent fold

" keyword definitions
syntax keyword fidlType        bool int8 int16 int32 int64 uint8 uint16 uint32 uint64 float double array
syntax keyword fidlType        handle map string
syntax match fidlImport        "^\(import\)\s"
syntax keyword fidlKeyword     const module interface enum struct union
syntax match fidlOperator      /=>/
syntax match fidlOperator      /?/

" Comments
syntax keyword fidlTodo           contained TODO FIXME XXX
syntax region  fidlComment        start="/\*"  end="\*/" contains=fidlTodo,fidlDocLink,@Spell
syntax match   fidlLineComment    "//.*" contains=fidlTodo,@Spell
syntax match   fidlLineDocComment "///.*" contains=fidlTodo,fidlDocLink,@Spell
syntax region  fidlDocLink        contained start=+\[+ end=+\]+

" Strings
syn region fidlString start=+L\="+ skip=+\\\\\|\\"+ end=+"+ contains=@Spell
hi def link fidlString            String

" Numbers
syntax match fidlFloat     '-\?\d*\.\d\+\>'
syntax match fidlHex       '\<0x[0-9a-fA-F]\+\>'
syntax match fidlInt       '-\?\<\(0\>\|[1-9]\d*\)'

" syntax match fidlNumber '\<0\>'

" Literals
syntax keyword fidlLiteral true false
syntax keyword fidlLiteral float.INFINITY float.NEGATIVE_INFINITY float.NAN
syntax keyword fidlLiteral double.INFINITY double.NEGATIVE_INFINITY double.NAN

" The default highlighting.
highlight default link fidlTodo            Todo
highlight default link fidlComment         Comment
highlight default link fidlLineComment     Comment
highlight default link fidlLineDocComment  Comment
highlight default link fidlDocLink         SpecialComment
highlight default link fidlType            Type
highlight default link fidlImport          Include
highlight default link fidlKeyword         Keyword
highlight default link fidlOperator        Operator
highlight default link fidlLiteral         Constant
highlight default link fidlFloat           Float
highlight default link fidlHex             Number
highlight default link fidlInt             Number


let b:current_syntax = "fidl"
let b:spell_options = "contained"

syn sync minlines=500

let b:current_syntax = "fidl"
