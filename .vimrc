


"==================== STYLE ====================
" all the color, none of the noise
syntax on
set belloff=all
set t_Co=256
set bg=dark

let g:gruvbox_contrast_dark = 'hard'
colors gruvbox



"==================== FORMATTING ====================

" I use file-specific indentation sometimes
set modelines=5

" yats needs this
set re=0
set sw=4
set expandtab
set smartindent
set nofixendofline



"==================== SEARCH & SHORTCUTS ====================

" e.g.
" set path=~/project/src/**/
" set path+=~/otherproject/src/**/

noremap <nowait> <Bslash> :find 
noremap <nowait> <C-B>    :!git blame --color-lines <C-R>%



"==================== C ====================

" I work with C more than C++
autocmd BufRead,BufNewFile *.h set filetype=c

" I like having my personal C vector types highlighted
augroup highlight_f2
  autocmd!
  autocmd FileType c syntax match HighlightF2 /\<f2\>/
  autocmd FileType c highlight link HighlightF2 cType

  autocmd FileType c syntax match HighlightF3 /\<f3\>/
  autocmd FileType c highlight link HighlightF3 cType

  autocmd FileType c syntax match HighlightF4 /\<f4\>/
  autocmd FileType c highlight link HighlightF4 cType

  autocmd FileType c syntax match HighlightF4x4 /\<f4x4\>/
  autocmd FileType c highlight link HighlightF4x4 cType
augroup END
