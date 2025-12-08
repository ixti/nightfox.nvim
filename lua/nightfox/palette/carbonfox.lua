local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "carbonfox",
  light = false,
}

-- Carbon Colors: https://github.com/carbon-design-system/carbon/blob/23b45775a598847baaea6fccc0c57cd770c1081c/packages/colors/src/colors.js

local bg = C("#171414") -- warmGray100
local fg = C("#cac5c4") -- warmGray30

-- stylua: ignore
local palette = {
  black   = Shade.new("#3c3838", "#565151", "#272525"), -- warmGray 80, 70, 90
  red     = Shade.new("#da1e28", "#fa4d56", "#a2191f"), -- red      60, 50, 70
  green   = Shade.new("#24a148", "#6fdc8c", "#0e6027"), -- green    50, 40, 70
  yellow  = Shade.new("#b28600", "#f1c21b", "#684e00"), -- yellow   40, 30, 70
  blue    = Shade.new("#4589ff", "#78a9ff", "#0043ce"), -- blue     50, 40, 70
  magenta = Shade.new("#a56eff", "#be95ff", "#6929c4"), -- purple   50, 40, 70
  cyan    = Shade.new("#009d9a", "#08bdba", "#005d5d"), -- teal     50, 40, 70
  white   = Shade.new("#cac5c4", "#f7f3f2", "#8f8b8b"), -- warmGray 30, 10, 50
  orange  = Shade.new("#eb6200", "#ff832b", "#8a3800"), -- orange   50, 40, 70
  pink    = Shade.new("#ee5396", "#ff7eb6", "#9f1853"), -- magenta  50, 40, 70

  comment = bg:blend(fg, 0.4):to_css(),

  bg0     = bg:brighten(-4):to_css(), -- Dark bg (status line and float)
  bg1     = bg:to_css(), -- Default bg
  bg2     = bg:brighten(6):to_css(), -- Lighter bg (colorcolm folds)
  bg3     = bg:brighten(12):to_css(), -- Lighter bg (cursor line)
  bg4     = bg:brighten(24):to_css(), -- Conceal, border fg

  fg0     = fg:brighten(6):to_css(), -- Lighter fg
  fg1     = fg:to_css(), -- Default fg
  fg2     = fg:brighten(-24):to_css(), -- Darker fg (status line)
  fg3     = fg:brighten(-48):to_css(), -- Darker fg (line numbers, fold colums)

  sel0    = "#262626", -- gray90 -- Popup bg, visual selection bg
  sel1    = "#393939", -- gray80 -- Popup sel bg, search bg
}

-- palette.sel0 = bg:blend(C(palette.white.base), 0.1):to_css()
-- palette.sel1 = bg:blend(C(palette.white.base), 0.3):to_css()

local function generate_spec(pal)
  -- stylua: ignore start
  local spec = {
    bg0  = pal.bg0,  -- Dark bg (status line and float)
    bg1  = pal.bg1,  -- Default bg
    bg2  = pal.bg2,  -- Lighter bg (colorcolm folds)
    bg3  = pal.bg3,  -- Lighter bg (cursor line)
    bg4  = pal.bg4,  -- Conceal, border fg

    fg0  = pal.fg0,  -- Lighter fg
    fg1  = pal.fg1,  -- Default fg
    fg2  = pal.fg2,  -- Darker fg (status line)
    fg3  = pal.fg3,  -- Darker fg (line numbers, fold colums)

    sel0 = pal.sel0, -- Popup bg, visual selection bg
    sel1 = pal.sel1, -- Popup sel bg, search bg
  }

  spec.syntax = {
    bracket     = spec.fg2,           -- Brackets and Punctuation
    builtin0    = pal.red.base,       -- Builtin variable
    builtin1    = pal.cyan.bright,    -- Builtin type
    builtin2    = pal.orange.bright,  -- Builtin const
    builtin3    = pal.red.bright,     -- Not used
    comment     = pal.comment,        -- Comment
    conditional = pal.magenta.bright, -- Conditional and loop
    const       = pal.orange.bright,  -- Constants, imports and booleans
    dep         = spec.fg3,           -- Deprecated
    field       = pal.blue.base,      -- Field
    func        = pal.blue.bright,    -- Functions and Titles
    ident       = pal.cyan.base,      -- Identifiers
    keyword     = pal.magenta.base,   -- Keywords
    number      = pal.orange.base,    -- Numbers
    operator    = spec.fg2,           -- Operators
    preproc     = pal.pink.bright,    -- PreProc
    regex       = pal.yellow.bright,  -- Regex
    statement   = pal.magenta.base,   -- Statements
    string      = pal.green.base,     -- Strings
    type        = pal.yellow.base,    -- Types
    variable    = pal.white.base,     -- Variables
  }

  spec.diag = {
    error = pal.red.base,
    warn  = pal.magenta.base,
    info  = pal.blue.base,
    hint  = pal.orange.base,
    ok    = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.15):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.15):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.15):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.15):to_css(),
    ok    = C(spec.bg1):blend(C(spec.diag.ok), 0.15):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.dim), 0.15):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.dim), 0.15):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.dim), 0.15):to_css(),
    text   = C(spec.bg1):blend(C(pal.cyan.dim), 0.3):to_css(),
  }

  spec.git = {
    add      = pal.green.base,
    removed  = pal.red.base,
    changed  = pal.yellow.base,
    conflict = pal.orange.base,
    ignored  = pal.comment,
  }

  -- stylua: ignore stop

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
