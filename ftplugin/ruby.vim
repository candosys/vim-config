" don't automatically comment the next/previous line after hitting 'o' or 'O'
setlocal formatoptions-=o

" highlight ruby whitespace errors
let ruby_space_errors = 1
let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1

" set the 'foldmethod' option to 'syntax' and allow folding of
" classes, modules, methods, code blocks, heredocs and comments.
let ruby_fold = 1

" Gary Bernhardt's hashrocket
inoremap <buffer> <c-l> <space>=><space>

" Use v or # to get a variable interpolation (inside of a string)}
" ysiw#   Wrap the token under the cursor in #{}
" v...s#  Wrap the selection in #{}
let b:surround_118 = "#{ \r }"    " v
let b:surround_35  = "#{ \r }"    " #

" Select text in an ERb file with visual mode and then press s- or s=
" Or yss- to do entire line.
let b:surround_45 = "<% \r -%>"   " -
let b:surround_61 = "<%= \r %>"   " =

" The compiler plugins contain instructions which allow Vim to run the
" specified source file with an appropriate executable, parse any errors, and
" jump to the corresponding error location if required.
compiler ruby

" From https://github.com/bbatsov/ruby-style-guide#comment-annotations
inoreabbrev <buffer> todo TODO:
inoreabbrev <buffer> fixme FIXME:
inoreabbrev <buffer> optimize OPTIMIZE:
inoreabbrev <buffer> hack HACK:
inoreabbrev <buffer> review REVIEW:
