" Vim syntax file
" Language:	bayes
" Maintainer:	Arthur Lui <luiarthur.ucsc.edu>
" Last Change:  Aug 7 2016
" Filenames:	*.bayes
" URL:		

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif


" Match case. (i.e. Upper/lower case matters.)
syn case match

syn match       bayesComment /\#.*/ 
syn region      bayesComment start=/#/ end=/$/ contains=bayesTodo display oneline
syn keyword     bayesTodo FIXME NOTE TODO contained

syn keyword bayesBlock    Data Likelihood Prior Proposal Init Options
syn keyword bayesKeyword  let assert def val new
syn keyword bayesType     Vector Matrix Array
syn keyword bayesType     Int Double
syn keyword bayesFunction log sqrt mean sum exp

" Numbers
syn match bayesNumber /\<0\>/ " Just a bare 0
syn match bayesNumber /\<[1-9]\d*\>/  " A multi-digit number
syn match bayesNumber /\%(\<\d\+\.\d*\|\.\d\+\)\%([eE][-+]\=\d\+\)\=[fFdD]\=/ " exponential notation 1
syn match bayesNumber /\<\d\+[eE][-+]\=\d\+[fFdD]\=\>/ " exponential notation 2
syn match bayesNumber /\<\d\+\%([eE][-+]\=\d\+\)\=[fFdD]\>/ " exponential notation 3

" Strings
syn match  bayesStringEmbeddedQuote /\\"/ contained
syn region bayesString start=/"/ end=/"/ contains=bayesStringEmbeddedQuote
hi link bayesString String
hi link bayesStringEmbeddedQuote String

hi link bayesComment  Comment
hi link bayesTodo     Todo
hi link bayesBlock    Include   
hi link bayesKeyword  Keyword
hi link bayesType     Type
hi link bayesNumber   Number
hi link bayesFunction Function

let b:current_syntax="bayes"
