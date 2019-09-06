" ===============================================================
" Two2TangoNext
" Author: Mike Hartington
" ===============================================================

" {{{ Setup
  set background=dark
  hi clear
  if exists("syntax_on")
    syntax reset
  endif
  let g:colors_name="Two2TangoNext"
" }}}
" {{{ Italics
  let g:two2tango_next_terminal_italic = get(g:, 'two2tango_next_terminal_italic', 0)
  let s:italic = ""
  if g:two2tango_next_terminal_italic == 1
    let s:italic = "italic"
  endif
"}}}
" {{{ Bold
  let g:two2tango_next_terminal_bold = get(g:, 'two2tango_next_terminal_bold', 0)
  let s:bold = ""
  if g:two2tango_next_terminal_bold == 1
   let s:bold = "bold"
  endif
"}}}
" {{{ Colors
  "Tango palette
  "http://tango.freedesktop.org/Tango_Icon_Theme_Guidelines
  " {{{
  let s:Butter0	        = ['#fce94f', '221']
  let s:Butter1	        = ['#edd400', '220']
  let s:Butter2    		= ['#c4a000', '178']
  let s:Chameleon0  	= ['#8ae234', '113']
  let s:Chameleon1  	= ['#73d216', '112']
  let s:Chameleon2  	= ['#4e9a06', '64']
  let s:Orange0	        = ['#fcaf3e', '215']
  let s:Orange1	        = ['#f57900', '208']
  let s:Orange2	    	= ['#ce5c00', '166']
  let s:SkyBlue0		= ['#99bfe7', '110']
  let s:SkyBlue1		= ['#729fcf', '74']
  let s:SkyBlue2		= ['#3465a4', '61']
  let s:SkyBlue3		= ['#204a87', '24']
  let s:Plum0	       	= ['#ad7fa8', '139']
  let s:Plum1	       	= ['#75507b', '243']
  let s:Plum2	       	= ['#5c3566', '59']
  let s:Chocolate0  	= ['#e9b96e', '179']
  let s:Chocolate1  	= ['#c17d11', '136']
  let s:Chocolate2  	= ['#8f5902', '94']
  let s:ScarletRed0    	= ['#ef2929', '196']
  let s:ScarletRed1	    = ['#cc0000', '160']
  let s:ScarletRed2	    = ['#a40000', '124']
  let s:Aluminium0  	= ['#eeeeec', '255']
  let s:Aluminium1  	= ['#d3d7cf', '252']
  let s:Aluminium2  	= ['#babdb6', '250']
  let s:Aluminium3  	= ['#888a85', '102']
  let s:Aluminium4  	= ['#555753', '240']
  let s:Aluminium5  	= ['#2e3436', '236']
  "This color isn't part of the Tango Palette; I use it because there
  "isn't a Tango color that provides enough contrast
  let s:hMarkers    = ['#212628', '235']
  let s:vMarkers    = ['#2a3033', '235']
  let s:vMarkersLt  = ['#313739', '235']
  "  Aluminium[4] is too dark for the Ford office but Aluminium[3] is to light
  "  #6e706b is 50% btwn them and 61635f is 75%
  let s:Comments    = ['#61635f', '241']

  let s:base00=s:Aluminium5
  let s:base01=['#343d46', '237']
  let s:base02=['#4f5b66', '240']
  let s:base03=['#65737e', '243']
  let s:base04=['#a7adba', '145']
  let s:base05=['#c0c5ce', '251']
  let s:base06=['#cdd3de', '252']
  let s:base07=s:Aluminium0
  let s:base08=s:ScarletRed2
  let s:base09=['#f99157', '209']
  let s:base0A=['#fac863', '221']
  let s:base0B=['#99c794', '114']
  let s:base0C=['#62b3b2', '73']
  let s:base0D=['#6699cc', '68']
  let s:base0E=['#c594c5', '176']
  let s:base0F=['#ab7967', '137']
  let s:base10=['#ffffff', '15']
  let s:none=['NONE', 'NONE']

  " let s:base00=['#1b2b34', '235']
  " let s:base01=['#343d46', '237']
  " let s:base02=['#4f5b66', '240']
  " let s:base03=['#65737e', '243']
  " let s:base04=['#a7adba', '145']
  " let s:base05=['#c0c5ce', '251']
  " let s:base06=['#cdd3de', '252']
  " let s:base07=['#d8dee9', '253']
  " let s:base08=['#ec5f67', '203']
  " let s:base09=['#f99157', '209']
  " let s:base0A=['#fac863', '221']
  " let s:base0B=['#99c794', '114']
  " let s:base0C=['#62b3b2', '73']
  " let s:base0D=['#6699cc', '68']
  " let s:base0E=['#c594c5', '176']
  " let s:base0F=['#ab7967', '137']
  " let s:base10=['#ffffff', '15']
  " let s:none=['NONE', 'NONE']

" }}}
" {{{ Highlight function
function! <sid>hi(group, fg, bg, attr, attrsp)
  " fg, bg, attr, attrsp
  if !empty(a:fg)
    exec "hi " . a:group . " guifg=" .  a:fg[0]
    exec "hi " . a:group . " ctermfg=" . a:fg[1]
  endif
  if !empty(a:bg)
    exec "hi " . a:group . " guibg=" .  a:bg[0]
    exec "hi " . a:group . " ctermbg=" . a:bg[1]
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" .   a:attr
    exec "hi " . a:group . " cterm=" . a:attr
  endif
  if !empty(a:attrsp)
    exec "hi " . a:group . " guisp=" . a:attrsp[0]
  endif
endfunction
" }}}
" {{{ call <sid>:hi(group, fg, bg, gui, guisp)
" call <sid>hi('Bold',                       '',         '',       'bold',      '')
" call <sid>hi('Debug',                      s:base08,   '',       '',          '')
call <sid>hi('Directory',                  s:SkyBlue0,   '',       '',          '')
call <sid>hi('ErrorMsg',                   s:Aluminium0, s:ScarletRed2, '',   '')
" call <sid>hi('Exception',                  s:base08,   '',       '',          '')
call <sid>hi('FoldColumn',                 s:Aluminium4, s:Aluminium5, '',    '')
call <sid>hi('Folded',                     s:Aluminium2, s:Aluminium4, s:italic,    '')
call <sid>hi('IncSearch',                  s:Butter2,    s:Butter0, '',      'none')
call <sid>hi('Italic',                     '',           '',       s:italic,      '')
                                                    
" call <sid>hi('Macro',                      s:base08,    '',       '',          '')
call <sid>hi('MatchParen',                 s:Aluminium5, s:Aluminium2, '',    '')
call <sid>hi('ModeMsg',                    s:Orange2,    '',        '',          '')
call <sid>hi('MoreMsg',                    s:Orange2,    '',        '',          '')
call <sid>hi('Question',                   s:Plum0,      '',          '',          '')
call <sid>hi('Search',                     s:Butter2,    s:Butter0, '',          '')
call <sid>hi('SpecialKey',                 s:Orange0,    '',        '',          '')
" call <sid>hi('TooLong',                    s:base08,    '',       '',          '')
call <sid>hi('Underlined',                 s:SkyBlue0,    '',       'underline', '')
call <sid>hi('Visual',                     s:Orange2,     s:Orange0,'',          '')
call <sid>hi('VisualNOS',                  '',            s:hMarkers, '',    'none')
call <sid>hi('WarningMsg',                 s:Orange2,    '',        '',          '')
call <sid>hi('WildMenu',                   s:Butter2,    s:Butter0, '',      '')
call <sid>hi('Title',                      s:Aluminium0, '',     '',          '')
" call <sid>hi('Conceal',                    s:base0D, s:base00, '',          '')
call <sid>hi('Cursor',                     s:Aluminium5, s:Butter0,  'none',  '')
call <sid>hi('iCursor',                    s:Aluminium5, s:ScarletRed0,  'none',   '')
" call <sid>hi('NonText',                    s:base03, '',       '',          '')
call <sid>hi('Normal',                     s:Aluminium1, s:Aluminium5, '',    '')
" call <sid>hi('EndOfBuffer',                s:base05, s:base00, '',          '')
call <sid>hi('StatusLine',                 s:Aluminium0, s:Orange2,'none','none')
call <sid>hi('LineNr',                     s:Aluminium4, s:vMarkersLt, '',    '')
call <sid>hi('SignColumn',                 '', s:vMarkersLt, '',    '')
call <sid>hi('StatusLineNC',               s:Aluminium5, s:Aluminium3, '','none')
call <sid>hi('VertSplit',                  s:Aluminium5, s:Aluminium3, '','none')
call <sid>hi('ColorColumn',                '',           s:vMarkers, '',      '')
call <sid>hi('CursorColumn',               '',           s:hMarkers, '',      '')
call <sid>hi('CursorLine',                 '',           s:hMarkers, '',      '')
call <sid>hi('CursorLineNr',               '',           s:hMarkers, '',      '')
call <sid>hi('PMenu',                      s:Aluminium4, s:Aluminium2, '',    '')
call <sid>hi('PMenuSel',                   s:Aluminium5, s:Aluminium0, '',    '')
" call <sid>hi('PmenuSbar',                  '',       s:base02, '',          '')
" call <sid>hi('PmenuThumb',                 '',       s:base07, '',          '')
call <sid>hi('TabLine',                    s:Aluminium0, s:Aluminium3, '',    '')
call <sid>hi('TabLineFill',                '',           s:Aluminium0, '',    '')
call <sid>hi('TabLineSel',                 s:Aluminium0, s:Aluminium5, '',    '')
" call <sid>hi('helpExample',                s:base0A, '',       '',          '')
" call <sid>hi('helpCommand',                s:base0A, '',       '',          '')
"
" " Standard syntax highlighting
" call <sid>hi('Boolean',                    s:base09, '',       '',          '')
" call <sid>hi('Character',                  s:base08, '',       '',          '')
call <sid>hi('Comment',                    s:Comments, '',       s:italic,    '')
call <sid>hi('Conditional',                s:Butter2, '',       s:bold,       '')
call <sid>hi('Constant',                   s:Chocolate1, '',       '',        '')
" call <sid>hi('Define',                     s:base0E, '',       '',          '')
call <sid>hi('Delimiter',                  s:Chocolate1, '',       '',        '')
" call <sid>hi('Float',                      s:base09, '',       '',          '')
" call <sid>hi('Function',                   s:base0D, '',       '',          '')
call <sid>hi('Identifier',                 s:Orange2,  '',       '',          '')
call <sid>hi('Include',                    s:Orange2,  '',       'bold',      '')
call <sid>hi('Keyword',                    s:Aluminium3, '',     'bold',      '')
" call <sid>hi('Label',                      s:base0A, '',       '',          '')
" call <sid>hi('Number',                     s:base09, '',       '',          '')
call <sid>hi('Operator',                   s:Butter1,  '',       '',          '')
call <sid>hi('PreProc',                    s:Chocolate0, '',     '',          '')
call <sid>hi('Repeat',                     s:Butter2, '',       'bold',       '')
call <sid>hi('Special',                    s:SkyBlue1, '',       '',          '')
" call <sid>hi('SpecialChar',                s:base0F,0'',       '',          '')
call <sid>hi('Statement',                  s:Aluminium3, '',       '',        '')
" call <sid>hi('StorageClass',               s:base0A, '',       '',          '')
call <sid>hi('String',                     s:SkyBlue0, '',       '',          '')
call <sid>hi('Structure',                  s:Orange2, '',       'bold',       '')
" call <sid>hi('Tag',                        s:base0A, '',       '',          '')
call <sid>hi('Todo',                       s:Aluminium0, s:Orange2,'bold','none')
call <sid>hi('Type',                       s:Chocolate0, '',       'none',    '')
" call <sid>hi('Typedef',                    s:base0A, '',       '',          '')
"
" call <sid>hi('SpellBad',                   '',       '',       'undercurl', '')
" call <sid>hi('SpellLocal',                 '',       '',       'undercurl', '')
" call <sid>hi('SpellCap',                   '',       '',       'undercurl', '')
" call <sid>hi('SpellRare',                  '',       '',       'undercurl', '')
"
" call <sid>hi('csClass',                    s:base0A, '',       '',          '')
" call <sid>hi('csAttribute',                s:base0A, '',       '',          '')
" call <sid>hi('csModifier',                 s:base0E, '',       '',          '')
" call <sid>hi('csType',                     s:base08, '',       '',          '')
" call <sid>hi('csUnspecifiedStatement',     s:base0D, '',       '',          '')
" call <sid>hi('csContextualStatement',      s:base0E, '',       '',          '')
" call <sid>hi('csNewDecleration',           s:base08, '',       '',          '')
" call <sid>hi('cOperator',                  s:base0C, '',       '',          '')
" call <sid>hi('cPreCondit',                 s:base0E, '',       '',          '')
"
" call <sid>hi('cssColor',                   s:base0C, '',       '',          '')
" call <sid>hi('cssBraces',                  s:base05, '',       '',          '')
" call <sid>hi('cssClassName',               s:base0E, '',       '',          '')
"
"
call <sid>hi('DiffAdd',                    s:Aluminium1, s:Chameleon2, '',    '')
call <sid>hi('DiffChange',                 s:Aluminium1, s:SkyBlue3, '',      '')
call <sid>hi('DiffDelete',                 s:Aluminium5, s:Orange1, '',       '')
call <sid>hi('DiffText',                   '',           s:SkyBlue2, '',      '')
" call <sid>hi('DiffAdded',                  s:base10, s:base0B, '',          '')
" call <sid>hi('DiffFile',                   s:base08, s:base00, '',          '')
" call <sid>hi('DiffNewFile',                s:base0B, s:base00, '',          '')
" call <sid>hi('DiffLine',                   s:base0D, s:base00, '',          '')
" call <sid>hi('DiffRemoved',                s:base10, s:base08, '',          '')
call <sid>hi('Error',                      s:Aluminium0, s:ScarletRed2,   '', '')
" " call <sid>hi('NvimInternalError',          s:base08, s:none,   '',        '')
" " call <sid>hi('NvimInternalError',          s:base08, s:none,   '',        '')
" call <sid>hi('gitCommitOverflow',          s:base08, '',       '',          '')
" call <sid>hi('gitCommitSummary',           s:base0B, '',       '',          '')
"
" call <sid>hi('htmlBold',                   s:base0A, '',       '',          '')
" call <sid>hi('htmlItalic',                 s:base0E, '',       '',          '')
" call <sid>hi('htmlTag',                    s:base0C, '',       '',          '')
" call <sid>hi('htmlEndTag',                 s:base0C, '',       '',          '')
" call <sid>hi('htmlArg',                    s:base0A, '',       '',          '')
" call <sid>hi('htmlTagName',                s:base07, '',       '',          '')
"
" call <sid>hi('javaScript',                 s:base05, '',       '',          '')
" call <sid>hi('javaScriptNumber',           s:base09, '',       '',          '')
" call <sid>hi('javaScriptBraces',           s:base05, '',       '',          '')
"
" call <sid>hi('markdownCode',               s:base0B, '',       '',          '')
" call <sid>hi('markdownCodeBlock',          s:base0B, '',       '',          '')
" call <sid>hi('markdownHeadingDelimiter',   s:base0D, '',       '',          '')
" call <sid>hi('markdownItalic',             s:base0E, '',       s:italic,    '')
" call <sid>hi('markdownBold',               s:base0A, '',       s:bold,      '')
" call <sid>hi('markdownCodeDelimiter',      s:base0F, '',       s:italic,    '')
" call <sid>hi('markdownError',              s:base05, s:base00, '',          '')
"
" call <sid>hi('NeomakeErrorSign',           s:base08, s:base00, '',          '')
" call <sid>hi('NeomakeWarningSign',         s:base0A, s:base00, '',          '')
" call <sid>hi('NeomakeInfoSign',            s:base10, s:base00, '',          '')
" call <sid>hi('NeomakeError',               s:base08, '',       'undercurl', s:base08)
" call <sid>hi('NeomakeWarning',             s:base08, '',       'undercurl', s:base08)
"
" call <sid>hi('ALEErrorSign',               s:base08, s:base00, s:bold,      '')
" call <sid>hi('ALEWarningSign',             s:base0A, s:base00, s:bold,      '')
" call <sid>hi('ALEInfoSign',                s:base10, s:base00, s:bold,      '')
"
" call <sid>hi('NERDTreeExecFile',           s:base05, '',       '',          '')
" call <sid>hi('NERDTreeDirSlash',           s:base0D, '',       '',          '')
" call <sid>hi('NERDTreeOpenable',           s:base0D, '',       '',          '')
" call <sid>hi('NERDTreeFile',               '',       s:none,   '',          '')
" call <sid>hi('NERDTreeFlags',              s:base0D, '',       '',          '')
"
" call <sid>hi('phpComparison',              s:base05, '',       '',          '')
" call <sid>hi('phpParent',                  s:base05, '',       '',          '')
" call <sid>hi('phpMemberSelector',          s:base05, '',       '',          '')

" call <sid>hi('pythonRepeat',               s:base0E, '',       '',          '')
" call <sid>hi('pythonOperator',             s:base0E, '',       '',          '')

" call <sid>hi('rubyConstant',               s:base0A, '',       '',          '')
" call <sid>hi('rubySymbol',                 s:base0B, '',       '',          '')
" call <sid>hi('rubyAttribute',              s:base0D, '',       '',          '')
" call <sid>hi('rubyInterpolation',          s:base0B, '',       '',          '')
" call <sid>hi('rubyInterpolationDelimiter', s:base0F, '',       '',          '')
" call <sid>hi('rubyStringDelimiter',        s:base0B, '',       '',          '')
" call <sid>hi('rubyRegexp',                 s:base0C, '',       '',          '')

" call <sid>hi('sassidChar',                 s:base08, '',       '',          '')
" call <sid>hi('sassClassChar',              s:base09, '',       '',          '')
" call <sid>hi('sassInclude',                s:base0E, '',       '',          '')
" call <sid>hi('sassMixing',                 s:base0E, '',       '',          '')
" call <sid>hi('sassMixinName',              s:base0D, '',       '',          '')

" call <sid>hi('vimfilerLeaf',               s:base05, '',       '',          '')
" call <sid>hi('vimfilerNormalFile',         s:base05, s:base00, '',          '')
" call <sid>hi('vimfilerOpenedFile',         s:base0D, '',       '',          '')
" call <sid>hi('vimfilerClosedFile',         s:base0D, '',       '',          '')

call <sid>hi('GitGutterAdd',               s:Comments, s:vMarkersLt, s:bold,   '')
call <sid>hi('GitGutterChange',            s:Comments, s:vMarkersLt, s:bold,   '')
call <sid>hi('GitGutterDelete',            s:Comments, s:vMarkersLt, s:bold,   '')
call <sid>hi('GitGutterChangeDelete',      s:Comments, s:vMarkersLt, s:bold,   '')

" call <sid>hi('SignifySignAdd',             s:base0B, s:base00, s:bold,      '')
" call <sid>hi('SignifySignChange',          s:base0D, s:base00, s:bold,      '')
" call <sid>hi('SignifySignDelete',          s:base08, s:base00, s:bold,      '')
" call <sid>hi('SignifySignChangeDelete',    s:base0E, s:base00, s:bold,      '')
" call <sid>hi('SignifySignDeleteFirstLine', s:base08, s:base00, s:bold,      '')

" call <sid>hi('xmlTag',                     s:base0C, '',       '',          '')
" call <sid>hi('xmlTagName',                 s:base05, '',       '',          '')
" call <sid>hi('xmlEndTag',                  s:base0C, '',       '',          '')

call <sid>hi('CocErrorSign',                 s:ScarletRed0, s:vMarkersLt, '', '')
call <sid>hi('CocWarningSign',               s:Butter1,     '',   '', '')
call <sid>hi('CocInfoSign',                  s:Chocolate0,  '',   '', '')
call <sid>hi('CocHintSign',                  s:Chocolate1,  '',   '', '')
" }}}

let g:terminal_color_0=s:base00[0]
let g:terminal_color_8=s:base00[0]

let g:terminal_color_1=s:base08[0]
let g:terminal_color_9=s:base08[0]

let g:terminal_color_2=s:base0B[0]
let g:terminal_color_10=s:base0B[0]

let g:terminal_color_3=s:base0A[0]
let g:terminal_color_11=s:base0A[0]

let g:terminal_color_4=s:base0D[0]
let g:terminal_color_12=s:base0D[0]

let g:terminal_color_5=s:base0E[0]
let g:terminal_color_13=s:base0E[0]

let g:terminal_color_6=s:base0C[0]
let g:terminal_color_14=s:base0C[0]

let g:terminal_color_7=s:base05[0]
let g:terminal_color_15=s:base05[0]

let g:terminal_color_background=s:base00[0]
let g:terminal_color_foreground=s:base10[0]

