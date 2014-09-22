" This scheme was created by CSApproxSnapshot
" on Fri, 02 Sep 2011

hi clear
if exists("syntax_on")
    syntax reset
endif

if v:version < 700
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" substitute(substitute(<q-args>, "undercurl", "underline", "g"), "guisp\\S\\+", "", "g")
else
    let g:colors_name = expand("<sfile>:t:r")
    command! -nargs=+ CSAHi exe "hi" <q-args>
endif

function! s:old_kde()
  " Konsole only used its own palette up til KDE 4.2.0
  if executable('kde4-config') && system('kde4-config --kde-version') =~ '^4.[10].'
    return 1
  elseif executable('kde-config') && system('kde-config --version') =~# 'KDE: 3.'
    return 1
  else
    return 0
  endif
endfunction

if 0
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_konsole") && g:CSApprox_konsole) || (&term =~? "^konsole" && s:old_kde())
    CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=254 gui=NONE guibg=#232323 guifg=#e0e0e0
    CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=235 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=reverse cterm=undercurl ctermbg=bg ctermfg=210 gui=undercurl guibg=bg guifg=fg guisp=#FF6C60
    CSAHi Todo term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8f8f8f
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=156 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=213 gui=NONE guibg=bg guifg=#FF73FD
    CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#FFD2A7
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#6699CC
    CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=59 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080
    CSAHi NonText term=bold cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#232323 guifg=#232323
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=Cyan
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=210 ctermfg=231 gui=bold guibg=#FF6C60 guifg=white
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=149 ctermfg=235 gui=NONE guibg=#99dd22 guifg=#232323
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    " CSAHi ModeMsg term=bold cterm=bold ctermbg=118 ctermfg=16 gui=bold guibg=#C6C5FE guifg=black
    CSAHi ModeMsg term=bold cterm=bold ctermbg=220 ctermfg=16 gui=bold guibg=#C6C5FE guifg=black
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=246 gui=NONE guibg=#232323 guifg=#919191
    CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi rubyRegexp term=NONE cterm=NONE ctermbg=bg ctermfg=143 gui=NONE guibg=bg guifg=#B18A3D
    CSAHi rubyRegexpDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#FF8000
    CSAHi rubyEscape term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=white
    CSAHi rubyInterpolationDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#00A0A0
    CSAHi rubyControl term=NONE cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#6699CC
    CSAHi rubyStringDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=65 gui=NONE guibg=bg guifg=#336633
    CSAHi vimHiClear term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#f6f3e8
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=193 ctermfg=16 gui=NONE guibg=#cae682 guifg=#000000
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=white guifg=black
    CSAHi PmenuThumb term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=DarkGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=231 gui=NONE guibg=darkred guifg=white
    "CSAHi CursorLine term=underline cterm=NONE ctermbg=124 ctermfg=231 gui=NONE guibg=darkred guifg=white
    CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi LongLineWarning term=NONE cterm=underline ctermbg=59 ctermfg=fg gui=underline guibg=#371F1C guifg=fg
    CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi VimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=white
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#96CBFE
    CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=white guifg=black
    CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=Green
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=238 ctermfg=188 gui=italic guibg=#404040 guifg=#CCCCCC
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=238 ctermfg=16 gui=NONE guibg=#404040 guifg=black
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#404040
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#323848 guifg=fg
    CSAHi VisualNOS term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=210 ctermfg=231 gui=bold guibg=#FF6C60 guifg=white
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=46 gui=NONE guibg=yellow guifg=green
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=145 gui=NONE guibg=#384048 guifg=#a0a8b0
    CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=DarkRed guifg=fg
    CSAHi MatchParen term=reverse cterm=bold ctermbg=138 ctermfg=231 gui=bold guibg=#857b6f guifg=#f6f3e8
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=151 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=180 gui=NONE guibg=bg guifg=#E18964
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#C6C5FE
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=110 gui=NONE guibg=bg guifg=#6699CC
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=153 gui=NONE guibg=bg guifg=#96CBFE
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#FFFFB6
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=147 gui=underline guibg=bg guifg=#80a0ff
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi javaDocSeeTag term=NONE cterm=NONE ctermbg=bg ctermfg=188 gui=NONE guibg=bg guifg=#CCCCCC
    CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFBVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimGroupName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#00A0A0
    CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=DarkCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
elseif has("gui_running") || (&t_Co == 256 && (&term ==# "xterm" || &term =~# "^screen") && exists("g:CSApprox_eterm") && g:CSApprox_eterm) || &term =~? "^eterm"
    CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=254 gui=NONE guibg=#232323 guifg=#e0e0e0
    CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=235 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=reverse cterm=undercurl ctermbg=bg ctermfg=216 gui=undercurl guibg=bg guifg=fg guisp=#FF6C60
    CSAHi Todo term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8f8f8f
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=192 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=219 gui=NONE guibg=bg guifg=#FF73FD
    CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#FFD2A7
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#6699CC
    CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=236 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080
    CSAHi NonText term=bold cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#232323 guifg=#232323
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=Cyan
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=216 ctermfg=255 gui=bold guibg=#FF6C60 guifg=white
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=191 ctermfg=235 gui=NONE guibg=#99dd22 guifg=#232323
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=72 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=231 ctermfg=16 gui=bold guibg=#C6C5FE guifg=black
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=246 gui=NONE guibg=#232323 guifg=#919191
    CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi rubyRegexp term=NONE cterm=NONE ctermbg=bg ctermfg=179 gui=NONE guibg=bg guifg=#B18A3D
    CSAHi rubyRegexpDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=214 gui=NONE guibg=bg guifg=#FF8000
    CSAHi rubyEscape term=NONE cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=white
    CSAHi rubyInterpolationDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=44 gui=NONE guibg=bg guifg=#00A0A0
    CSAHi rubyControl term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#6699CC
    CSAHi rubyStringDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=65 gui=NONE guibg=bg guifg=#336633
    CSAHi vimHiClear term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=238 ctermfg=231 gui=NONE guibg=#444444 guifg=#f6f3e8
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=229 ctermfg=16 gui=NONE guibg=#cae682 guifg=#000000
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=white guifg=black
    CSAHi PmenuThumb term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=DarkGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=255 gui=NONE guibg=darkred guifg=white
    "CSAHi CursorLine term=underline cterm=NONE ctermbg=124 ctermfg=255 gui=NONE guibg=darkred guifg=white
    CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi LongLineWarning term=NONE cterm=underline ctermbg=59 ctermfg=fg gui=underline guibg=#371F1C guifg=fg
    CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi VimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=255 gui=NONE guibg=bg guifg=white
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=195 gui=NONE guibg=bg guifg=#96CBFE
    CSAHi Cursor term=NONE cterm=NONE ctermbg=255 ctermfg=16 gui=NONE guibg=white guifg=black
    CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=Green
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=238 ctermfg=252 gui=italic guibg=#404040 guifg=#CCCCCC
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=238 ctermfg=16 gui=NONE guibg=#404040 guifg=black
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#404040
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=231 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=60 ctermfg=fg gui=NONE guibg=#323848 guifg=fg
    CSAHi VisualNOS term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=216 ctermfg=255 gui=bold guibg=#FF6C60 guifg=white
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=46 gui=NONE guibg=yellow guifg=green
    CSAHi Folded term=NONE cterm=NONE ctermbg=66 ctermfg=188 gui=NONE guibg=#384048 guifg=#a0a8b0
    CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=124 ctermfg=fg gui=NONE guibg=DarkRed guifg=fg
    CSAHi MatchParen term=reverse cterm=bold ctermbg=145 ctermfg=231 gui=bold guibg=#857b6f guifg=#f6f3e8
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=145 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=194 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=216 gui=NONE guibg=bg guifg=#E18964
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=#C6C5FE
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#6699CC
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=195 gui=NONE guibg=bg guifg=#96CBFE
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=230 gui=NONE guibg=bg guifg=#FFFFB6
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=153 gui=underline guibg=bg guifg=#80a0ff
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi javaDocSeeTag term=NONE cterm=NONE ctermbg=bg ctermfg=252 gui=NONE guibg=bg guifg=#CCCCCC
    CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFBVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimGroupName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=44 gui=NONE guibg=bg guifg=#00A0A0
    CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=DarkCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=231 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
elseif has("gui_running") || &t_Co == 256
    CSAHi Normal term=NONE cterm=NONE ctermbg=235 ctermfg=254 gui=NONE guibg=#232323 guifg=#e0e0e0
    CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=235 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=reverse cterm=undercurl ctermbg=bg ctermfg=203 gui=undercurl guibg=bg guifg=fg guisp=#FF6C60
    CSAHi Todo term=NONE cterm=NONE ctermbg=bg ctermfg=245 gui=NONE guibg=bg guifg=#8f8f8f
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=155 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=207 gui=NONE guibg=bg guifg=#FF73FD
    CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=223 gui=NONE guibg=bg guifg=#FFD2A7
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#6699CC
    CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=236 ctermfg=244 gui=NONE guibg=#343434 guifg=#808080
    CSAHi NonText term=bold cterm=NONE ctermbg=235 ctermfg=235 gui=NONE guibg=#232323 guifg=#232323
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=51 gui=NONE guibg=bg guifg=Cyan
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=203 ctermfg=231 gui=bold guibg=#FF6C60 guifg=white
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=112 ctermfg=235 gui=NONE guibg=#99dd22 guifg=#232323
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=29 gui=bold guibg=bg guifg=SeaGreen
    " CSAHi ModeMsg term=bold cterm=bold ctermbg=118 ctermfg=16 gui=bold guibg=#C6C5FE guifg=black
    CSAHi ModeMsg term=bold cterm=bold ctermbg=NONE ctermfg=220 gui=bold guibg=#C6C5FE guifg=black
    CSAHi LineNr term=underline cterm=NONE ctermbg=235 ctermfg=246 gui=NONE guibg=#232323 guifg=#919191
    CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi rubyRegexp term=NONE cterm=NONE ctermbg=bg ctermfg=137 gui=NONE guibg=bg guifg=#B18A3D
    CSAHi rubyRegexpDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=208 gui=NONE guibg=bg guifg=#FF8000
    CSAHi rubyEscape term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=white
    CSAHi rubyInterpolationDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#00A0A0
    CSAHi rubyControl term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#6699CC
    CSAHi rubyStringDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#336633
    CSAHi vimHiClear term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=51 gui=undercurl guibg=bg guifg=fg guisp=Cyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=238 ctermfg=230 gui=NONE guibg=#444444 guifg=#f6f3e8
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=186 ctermfg=16 gui=NONE guibg=#cae682 guifg=#000000
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=white guifg=black
    CSAHi PmenuThumb term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=248 ctermfg=fg gui=underline guibg=DarkGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=231 gui=NONE guibg=darkred guifg=white
    "CSAHi CursorLine term=underline cterm=NONE ctermbg=88 ctermfg=231 gui=NONE guibg=darkred guifg=white
    CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi LongLineWarning term=NONE cterm=underline ctermbg=52 ctermfg=fg gui=underline guibg=#371F1C guifg=fg
    CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi VimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=231 gui=NONE guibg=bg guifg=white
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#96CBFE
    CSAHi Cursor term=NONE cterm=NONE ctermbg=231 ctermfg=16 gui=NONE guibg=white guifg=black
    CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=46 gui=bold guibg=bg guifg=Green
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=238 ctermfg=252 gui=italic guibg=#404040 guifg=#CCCCCC
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=238 ctermfg=16 gui=NONE guibg=#404040 guifg=black
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=238 ctermfg=238 gui=NONE guibg=#404040 guifg=#404040
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=230 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=59 ctermfg=fg gui=NONE guibg=#323848 guifg=fg
    CSAHi VisualNOS term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=203 ctermfg=231 gui=bold guibg=#FF6C60 guifg=white
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=226 ctermfg=46 gui=NONE guibg=yellow guifg=green
    CSAHi Folded term=NONE cterm=NONE ctermbg=59 ctermfg=145 gui=NONE guibg=#384048 guifg=#a0a8b0
    CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=88 ctermfg=fg gui=NONE guibg=DarkRed guifg=fg
    CSAHi MatchParen term=reverse cterm=bold ctermbg=101 ctermfg=230 gui=bold guibg=#857b6f guifg=#f6f3e8
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=244 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=114 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=173 gui=NONE guibg=bg guifg=#E18964
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=189 gui=NONE guibg=bg guifg=#C6C5FE
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#6699CC
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=117 gui=NONE guibg=bg guifg=#96CBFE
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=229 gui=NONE guibg=bg guifg=#FFFFB6
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=111 gui=underline guibg=bg guifg=#80a0ff
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi javaDocSeeTag term=NONE cterm=NONE ctermbg=bg ctermfg=252 gui=NONE guibg=bg guifg=#CCCCCC
    CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFBVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimGroupName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=37 gui=NONE guibg=bg guifg=#00A0A0
    CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=18 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=90 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=30 ctermfg=21 gui=bold guibg=DarkCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=250 ctermfg=51 gui=NONE guibg=Grey guifg=Cyan
    CSAHi Conceal term=NONE cterm=NONE ctermbg=248 ctermfg=252 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=196 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=21 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=201 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
elseif has("gui_running") || &t_Co == 88
    CSAHi Normal term=NONE cterm=NONE ctermbg=80 ctermfg=87 gui=NONE guibg=#232323 guifg=#e0e0e0
    CSAHi vimMenuRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimEcho term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimExecute term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCollection term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimGroupList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiTermcap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Ignore term=NONE cterm=NONE ctermbg=bg ctermfg=80 gui=NONE guibg=bg guifg=bg
    CSAHi Error term=reverse cterm=undercurl ctermbg=bg ctermfg=69 gui=undercurl guibg=bg guifg=fg guisp=#FF6C60
    CSAHi Todo term=NONE cterm=NONE ctermbg=bg ctermfg=83 gui=NONE guibg=bg guifg=#8f8f8f
    CSAHi String term=NONE cterm=NONE ctermbg=bg ctermfg=45 gui=NONE guibg=bg guifg=#A8FF60
    CSAHi Number term=NONE cterm=NONE ctermbg=bg ctermfg=71 gui=NONE guibg=bg guifg=#FF73FD
    CSAHi vimClusterName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Function term=NONE cterm=NONE ctermbg=bg ctermfg=73 gui=NONE guibg=bg guifg=#FFD2A7
    CSAHi Conditional term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6699CC
    CSAHi vimHiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi pythonSync term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSubstRep4 term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimPythonRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroupSyncA term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpecialKey term=bold cterm=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=#343434 guifg=#808080
    CSAHi NonText term=bold cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#232323 guifg=#232323
    CSAHi Directory term=bold cterm=NONE ctermbg=bg ctermfg=31 gui=NONE guibg=bg guifg=Cyan
    CSAHi ErrorMsg term=NONE cterm=bold ctermbg=69 ctermfg=79 gui=bold guibg=#FF6C60 guifg=white
    CSAHi IncSearch term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi Search term=reverse cterm=NONE ctermbg=40 ctermfg=80 gui=NONE guibg=#99dd22 guifg=#232323
    CSAHi MoreMsg term=bold cterm=bold ctermbg=bg ctermfg=21 gui=bold guibg=bg guifg=SeaGreen
    CSAHi ModeMsg term=bold cterm=bold ctermbg=59 ctermfg=16 gui=bold guibg=#C6C5FE guifg=black
    CSAHi LineNr term=underline cterm=NONE ctermbg=80 ctermfg=83 gui=NONE guibg=#232323 guifg=#919191
    CSAHi vimPatRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFunction term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimOperParen term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncLinebreak term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncLinecont term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi rubyRegexp term=NONE cterm=NONE ctermbg=bg ctermfg=52 gui=NONE guibg=bg guifg=#B18A3D
    CSAHi rubyRegexpDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=68 gui=NONE guibg=bg guifg=#FF8000
    CSAHi rubyEscape term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=white
    CSAHi rubyInterpolationDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#00A0A0
    CSAHi rubyControl term=NONE cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6699CC
    CSAHi rubyStringDelimiter term=NONE cterm=NONE ctermbg=bg ctermfg=20 gui=NONE guibg=bg guifg=#336633
    CSAHi vimHiClear term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi SpellLocal term=underline cterm=undercurl ctermbg=bg ctermfg=31 gui=undercurl guibg=bg guifg=fg guisp=Cyan
    CSAHi Pmenu term=NONE cterm=NONE ctermbg=80 ctermfg=79 gui=NONE guibg=#444444 guifg=#f6f3e8
    CSAHi PmenuSel term=NONE cterm=NONE ctermbg=57 ctermfg=16 gui=NONE guibg=#cae682 guifg=#000000
    CSAHi PmenuSbar term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=white guifg=black
    CSAHi PmenuThumb term=NONE cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi TabLine term=underline cterm=underline ctermbg=84 ctermfg=fg gui=underline guibg=DarkGrey guifg=fg
    CSAHi TabLineSel term=bold cterm=bold ctermbg=bg ctermfg=fg gui=bold guibg=bg guifg=fg
    CSAHi TabLineFill term=reverse cterm=reverse ctermbg=bg ctermfg=fg gui=reverse guibg=bg guifg=fg
    CSAHi CursorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=79 gui=NONE guibg=darkred guifg=white
    "CSAHi CursorLine term=underline cterm=NONE ctermbg=32 ctermfg=79 gui=NONE guibg=darkred guifg=white
    CSAHi vimCommentTitleLeader term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi LongLineWarning term=NONE cterm=underline ctermbg=80 ctermfg=fg gui=underline guibg=#371F1C guifg=fg
    CSAHi vimGlobal term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi VimSynMtchCchar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimIf term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFuncBody term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFuncBlank term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimExtCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFilter term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimEscapeBrace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSubstRep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSet term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimUserCmd term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCmdSep term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimIsCommand term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynKeyRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Operator term=NONE cterm=NONE ctermbg=bg ctermfg=79 gui=NONE guibg=bg guifg=white
    CSAHi Keyword term=NONE cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#96CBFE
    CSAHi Cursor term=NONE cterm=NONE ctermbg=79 ctermfg=16 gui=NONE guibg=white guifg=black
    CSAHi vimSubstPat term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Question term=NONE cterm=bold ctermbg=bg ctermfg=28 gui=bold guibg=bg guifg=Green
    CSAHi StatusLine term=bold,reverse cterm=NONE ctermbg=80 ctermfg=58 gui=italic guibg=#404040 guifg=#CCCCCC
    CSAHi StatusLineNC term=reverse cterm=NONE ctermbg=80 ctermfg=16 gui=NONE guibg=#404040 guifg=black
    CSAHi VertSplit term=reverse cterm=NONE ctermbg=80 ctermfg=80 gui=NONE guibg=#404040 guifg=#404040
    CSAHi Title term=bold cterm=bold ctermbg=bg ctermfg=79 gui=bold guibg=bg guifg=#f6f3e8
    CSAHi Visual term=reverse cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=#323848 guifg=fg
    CSAHi VisualNOS term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi WarningMsg term=NONE cterm=bold ctermbg=69 ctermfg=79 gui=bold guibg=#FF6C60 guifg=white
    CSAHi WildMenu term=NONE cterm=NONE ctermbg=76 ctermfg=28 gui=NONE guibg=yellow guifg=green
    CSAHi Folded term=NONE cterm=NONE ctermbg=17 ctermfg=38 gui=NONE guibg=#384048 guifg=#a0a8b0
    CSAHi vimMapLhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoCmdSpace term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimNormCmds term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoEventList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAutoCmdSfxList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMenuBang term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynLine term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynMatchRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimCollClass term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAuSyntax term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroup term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimAugroupError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiCtermColor term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiGuiFontname term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMenuMap term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi ColorColumn term=reverse cterm=NONE ctermbg=32 ctermfg=fg gui=NONE guibg=DarkRed guifg=fg
    CSAHi MatchParen term=reverse cterm=bold ctermbg=37 ctermfg=79 gui=bold guibg=#857b6f guifg=#f6f3e8
    CSAHi Comment term=bold cterm=NONE ctermbg=bg ctermfg=82 gui=NONE guibg=bg guifg=#7C7C7C
    CSAHi Constant term=underline cterm=NONE ctermbg=bg ctermfg=41 gui=NONE guibg=bg guifg=#99CC99
    CSAHi Special term=bold cterm=NONE ctermbg=bg ctermfg=53 gui=NONE guibg=bg guifg=#E18964
    CSAHi Identifier term=underline cterm=NONE ctermbg=bg ctermfg=59 gui=NONE guibg=bg guifg=#C6C5FE
    CSAHi Statement term=bold cterm=NONE ctermbg=bg ctermfg=38 gui=NONE guibg=bg guifg=#6699CC
    CSAHi PreProc term=underline cterm=NONE ctermbg=bg ctermfg=43 gui=NONE guibg=bg guifg=#96CBFE
    CSAHi Type term=underline cterm=NONE ctermbg=bg ctermfg=78 gui=NONE guibg=bg guifg=#FFFFB6
    CSAHi Underlined term=underline cterm=underline ctermbg=bg ctermfg=39 gui=underline guibg=bg guifg=#80a0ff
    CSAHi pythonSpaceError term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMapRhsExtend term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiLink term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSetEqual term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi javaDocSeeTag term=NONE cterm=NONE ctermbg=bg ctermfg=58 gui=NONE guibg=bg guifg=#CCCCCC
    CSAHi vimSubstRange term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFBVar term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimMapRhs term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimFiletype term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimGroupName term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynRegion term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSynPatMod term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi Delimiter term=NONE cterm=NONE ctermbg=bg ctermfg=21 gui=NONE guibg=bg guifg=#00A0A0
    CSAHi vimSyncLines term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimSyncMatch term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi FoldColumn term=NONE cterm=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=Grey guifg=Cyan
    CSAHi DiffAdd term=bold cterm=NONE ctermbg=17 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
    CSAHi DiffChange term=bold cterm=NONE ctermbg=33 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
    CSAHi DiffDelete term=bold cterm=bold ctermbg=21 ctermfg=19 gui=bold guibg=DarkCyan guifg=Blue
    CSAHi DiffText term=reverse cterm=bold ctermbg=64 ctermfg=fg gui=bold guibg=Red guifg=fg
    CSAHi SignColumn term=NONE cterm=NONE ctermbg=85 ctermfg=31 gui=NONE guibg=Grey guifg=Cyan
    CSAHi Conceal term=NONE cterm=NONE ctermbg=84 ctermfg=86 gui=NONE guibg=DarkGrey guifg=LightGrey
    CSAHi SpellBad term=reverse cterm=undercurl ctermbg=bg ctermfg=64 gui=undercurl guibg=bg guifg=fg guisp=Red
    CSAHi SpellCap term=reverse cterm=undercurl ctermbg=bg ctermfg=19 gui=undercurl guibg=bg guifg=fg guisp=Blue
    CSAHi SpellRare term=reverse cterm=undercurl ctermbg=bg ctermfg=67 gui=undercurl guibg=bg guifg=fg guisp=Magenta
    CSAHi vimMenuPriority term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
    CSAHi vimHiKeyList term=NONE cterm=NONE ctermbg=bg ctermfg=fg gui=NONE guibg=bg guifg=fg
endif

" CSAHi DiffAdd term=bold cterm=NONE ctermbg=19 ctermfg=fg gui=NONE guibg=DarkBlue guifg=fg
" CSAHi DiffChange term=bold cterm=NONE ctermbg=127 ctermfg=fg gui=NONE guibg=DarkMagenta guifg=fg
" CSAHi DiffDelete term=bold cterm=bold ctermbg=37 ctermfg=21 gui=bold guibg=DarkCyan guifg=Blue
" CSAHi DiffText term=reverse cterm=bold ctermbg=196 ctermfg=fg gui=bold guibg=Red guifg=fg
CSAHi   DiffAdd      term=bold      cterm=NONE   ctermbg=NONE  ctermfg=118
CSAHi   DiffDelete   term=bold      cterm=bold   ctermbg=NONE  ctermfg=88

" Text differences in lines that have changed
CSAHi   DiffText     term=reverse   cterm=bold   ctermbg=NONE  ctermfg=214

" Text that stays the same in lines that have changed
CSAHi   DiffChange   term=bold      cterm=NONE   ctermbg=NONE  ctermfg=242

if 1
    delcommand CSAHi
endif
