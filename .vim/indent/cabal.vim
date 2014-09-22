" https://github.com/dowlare/vim-filetypes-addenda/blob/master/indent/cabal.vim
" Tab specific option
" http://www.haskell.org/haskellwiki/Vim#Indentation
setlocal tabstop=8                   "A tab is 8 spaces
setlocal expandtab                   "Always uses spaces instead of tabs
setlocal softtabstop=4               "Insert 4 spaces when tab is pressed
setlocal shiftwidth=4                "An indent is 4 spaces
setlocal smarttab                    "Indent instead of tab at start of line
setlocal shiftround                  "Round spaces to nearest shiftwidth multiple
setlocal nojoinspaces                "Don't convert spaces to tabs

setlocal autoindent
