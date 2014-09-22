" Read the HTML syntax to start with
if version < 600
  so <sfile>:p:h/html.vim
else
  runtime! syntax/html.vim
  unlet b:current_syntax
endif

if version < 600
  syntax clear
elseif exists("b:current_syntax")
  finish
endif

" Standard HiLink will not work with included syntax files
if version < 508
  command! -nargs=+ HtmlHiLink hi link <args>
else
  command! -nargs=+ HtmlHiLink hi def link <args>
endif

" syntax match mustacheError '}}}\?'
" syntax match mustacheInsideError '{{[{#<>=!\/]\?' containedin=@mustacheInside
syntax region mustacheVariable matchgroup=mustacheMarker start=/{{/ end=/}}/ containedin=@htmlMustacheContainer 
" syntax region mustacheVariableUnescape matchgroup=mustacheMarker start=/{{{/ end=/}}}/ containedin=@htmlMustacheContainer
" syntax region mustacheSection matchgroup=mustacheMarker start='{{[#/]' end=/}}/ containedin=@htmlMustacheContainer
" syntax region mustachePartial matchgroup=mustacheMarker start=/{{[<>]/ end=/}}/
" syntax region mustacheMarkerSet matchgroup=mustacheMarker start=/{{=/ end=/=}}/
" syntax region mustacheComment start=/{{!/ end=/}}/ contains=Todo containedin=htmlHead
syntax region mustacheComment start=/{{\/\// end=/$/ contains=Todo containedin=htmlHead
syntax region mustacheComment start=/\/\// end=/$/ contains=Todo containedin=htmlHead
" syntax match mustacheComment "{{//.*$"


" Clustering
syntax cluster mustacheInside add=mustacheVariable,mustacheVariableUnescape,mustacheSection,mustachePartial,mustacheMarkerSet
syntax cluster htmlMustacheContainer add=htmlHead,htmlTitle,htmlString,htmlH1,htmlH2,htmlH3,htmlH4,htmlH5,htmlH6


" Hilighting
" mustacheInside hilighted as Number, which is rarely used in html
" you might like change it to Function or Identifier
HtmlHiLink mustacheVariable Number
HtmlHiLink mustacheVariableUnescape Number
HtmlHiLink mustachePartial Number
HtmlHiLink mustacheSection Number
HtmlHiLink mustacheMarkerSet Number

HtmlHiLink mustacheComment Comment
HtmlHiLink mustacheMarker Identifier
HtmlHiLink mustacheError Error
HtmlHiLink mustacheInsideError Error

syn region mustacheScriptTemplate start=+<script [^>]*type *=[^>]*text/mustache[^>]*>+
\                       end=+</script>+me=s-1 keepend
\                       contains=mustacheError,mustacheInsideError,mustacheVariable,mustacheVariableUnescape,mustacheSection,mustachePartial,mustacheMarkerSet,mustacheComment,htmlHead,htmlTitle,htmlString,htmlH1,htmlH2,htmlH3,htmlH4,htmlH5,htmlH6,htmlTag,htmlEndTag,htmlTagName,htmlSpecialChar,htmlLink

let b:current_syntax = "mustache"
delcommand HtmlHiLink
