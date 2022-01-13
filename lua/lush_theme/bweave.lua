local lush = require('lush')
local hsl = lush.hsl

-- Colors based on Panda Syntax palette
local black = hsl("#27282B")
local white = hsl("#EFEFEF")
local purple = hsl("#B084EB")
local blue = hsl("#7DC1FF")
local orange = hsl("#FFB86C")
local red = hsl("#EC2864")
local pink = hsl("#FF90D0")
local green = hsl("#35FFDC")

-- Call lush with our lush-spec.
local theme = lush(function()
  return {
    Normal { bg = black, fg = white }, -- normal text
    CursorLine { bg = Normal.bg.lighten(10) }, -- Screen-line at the cursor, when 'cursorline' is set.  Low-priority if foreground (ctermfg OR guifg) is not set.
    Visual { bg = pink, fg = Normal.bg },
    Whitespace { fg = Normal.bg.desaturate(25).lighten(25) },
    Comment { Whitespace, gui="italic" },
    LineNr       { bg = Normal.bg, fg = Comment.fg }, -- Line number for ":number" and ":#" commands, and when 'number' or 'relativenumber' option is set.
    CursorLineNr { bg = CursorLine.bg, fg = pink }, -- Like LineNr when 'cursorline' or 'relativenumber' is set for the cursor line.
    ColorColumn { CursorLine },
    search_base { bg = orange, fg = black },
    Search       { search_base },
    IncSearch    { bg = search_base.bg.ro(-20), fg = search_base.fg.da(90) },
    VertSplit { bg = black, fg = blue },
    MatchParen { fg = pink },
    Pmenu { bg = black.li(5), fg = orange },
    PmenuSel { bg = Pmenu.fg, fg = Pmenu.bg },
    Directory { fg = green },
    DiffAdd { fg = green },
    DiffChange { fg = orange },
    DiffDelete { fg = red },
    DiffText { Normal },
    ErrorMsg { fg = red },
    Float { fg = orange },
    Folded { fg = green },
    Boolean { fg = white },
    Character { fg = red },
    Conditional { fg = pink },
    Constant { fg = green },
    Define { fg = pink },
    Function { fg = blue },
    Identifier { fg = white },
    Keyword { fg = orange },
    Label { Normal },
    NonText { Normal },
    Number { fg = orange },
    Operator { fg = Normal.fg },
    PreProc { fg = blue },
    SignColumn { LineNr },
    Special { fg = green },
    SpecialKey { fg = red },
    Statement { fg = purple },
    -- StatusLine { bg = red },
    -- StatusLineNC { bg = red },
    TabLine { bg = Normal.bg.da(10), fg = Normal.fg },
    TabLineFill { bg = TabLine.bg },
    TabLineSel { bg = Normal.bg , fg = green },
    StorageClass { fg = orange },
    String { fg = green },
    Tag { fg = pink },
    Title { Normal },
    Todo { fg = orange },
    Type { fg = white },
    Underlined { fg = red },

    multiple_cursors_cursor { Visual },
    multiple_cursors_visual { Visual },

    jsBooleanTrue { fg = orange },
    jsBooleanFalse { fg = orange },
    jsConditional { fg = pink },
    jsDestructuringBlock { fg = pink },
    jsDestructuringPropertyValue { fg = pink },
    jsLabel { fg = pink },
    jsFuncArgs { fg = Normal.fg.da(10) },
    jsFuncBlock { fg = pink },
    jsFunction { fg = orange },
    jsGlobalObjects { fg = orange },
    jsModuleAs { fg = pink },
    jsModuleAsterisk { fg = orange },
    jsExport { fg = purple },
    jsFrom { fg = pink },
    jsImport { fg = pink },
    jsNull { fg = orange },
    jsNumber { fg = orange },
    jsStatement { fg = pink },
    jsVariableDef { fg = blue },
    jsObjectKey { fg = Normal.fg },

    jsxAttrib { fg = orange },
    jsxComponentName { fg = pink },
    jsxTagName { fg = red },

    rubyConstant { fg = orange },
    rubyControl { fg = pink },
    rubyPseudoVariable { fg = orange },
    rubySymbol { fg = orange },

    erubyBlock { fg = blue },
    erubyDelimiter { fg = Normal.fg },
    erubyExpression { fg = blue },

    htmlArg { fg = orange },
    htmlTag { fg = orange },
    htmlEndTag { fg = orange },
    htmlTagName { fg = red },

    yamlBlockMappingKey { fg = pink },
    yamlBool { fg = orange },

    GitGutterAdd { fg = green },
    GitGutterChange { fg = orange },
    GitGutterDelete { fg = red },

    diffRemoved { fg = red.de(40) },
    diffAdded { fg = green.de(40) },
    gitCommitSummary { fg = blue },
  }
end)

return theme
