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

" Comment
syn match       bayesComment /\#.*/ 
syn region      bayesComment start=/#/ end=/$/ contains=bayesTodo display oneline
syn keyword     bayesTodo FIXME NOTE TODO contained

" Blocks
syn keyword bayesBlock Data Likelihood Prior Proposal Init Options

" Keywords

" Parameters
syn match 

hi def link bayesComment  Comment
hi def link bayesTodo     Todo
hi def link bayesBlock    Type

let b:current_syntax="bayes"
