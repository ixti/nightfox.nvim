-- Nightfox with flexoki inky palette
-- https://stephango.com/flexoki

local C = require("nightfox.lib.color")
local Shade = require("nightfox.lib.shade")

local meta = {
  name = "flexoki-darkfox",
  light = false,
}

-- stylua: ignore
local palette = {
  black   = Shade.new("#343331", "#575653", "#1C1B1A"), -- base     850,700,950
  red     = Shade.new("#AF3029", "#D14D41", "#6C201C"), -- red      600,400,800
  green   = Shade.new("#66800B", "#879A39", "#3D4C07"), -- green    600,400,800
  yellow  = Shade.new("#AD8301", "#D0A215", "#664D01"), -- yellow   600,400,800
  blue    = Shade.new("#205EA6", "#4385BE", "#163B66"), -- blue     600,400,800
  magenta = Shade.new("#5E409D", "#8B7EC8", "#3C2A62"), -- purple   600,400,800
  cyan    = Shade.new("#24837B", "#3AA99F", "#164F4A"), -- cyan     600,400,800
  white   = Shade.new("#CECDC3", "#F2F0E5", "#6F6E69"), -- base     200,50,600
  orange  = Shade.new("#BC5215", "#DA702C", "#71320D"), -- orange   600,400,800
  pink    = Shade.new("#A02F6F", "#CE5D97", "#641F46"), -- magenta  600,400,800

  comment = "#6F6E69", -- base-600

  bg0     = "#000000", -- Pitch-black (status line and float)
  bg1     = "#100F0F", -- black Default bg
  bg2     = "#1C1B1A", -- base-950 Lighter bg (colorcolm folds)
  bg3     = "#282726", -- base-900 Lighter bg (cursor line)
  bg4     = "#343331", -- base-850 Conceal, border fg

  fg0     = "#DAD8CE", -- base-150 Lighter fg
  fg1     = "#CECDC3", -- base-200 Default fg
  fg2     = "#B7B5AC", -- base-300 Darker fg (status line)
  fg3     = "#878580", -- base-500 Darker fg (line numbers, fold colums)

  sel0    = "#282726", -- base-900 Popup bg, visual selection bg
  sel1    = "#403E3C", -- base-800 Popup sel bg, search bg
}

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
    warn  = pal.yellow.base,
    info  = pal.blue.base,
    hint  = pal.green.base,
    ok    = pal.green.base,
  }

  spec.diag_bg = {
    error = C(spec.bg1):blend(C(spec.diag.error), 0.2):to_css(),
    warn  = C(spec.bg1):blend(C(spec.diag.warn), 0.2):to_css(),
    info  = C(spec.bg1):blend(C(spec.diag.info), 0.2):to_css(),
    hint  = C(spec.bg1):blend(C(spec.diag.hint), 0.2):to_css(),
    ok    = C(spec.bg1):blend(C(spec.diag.ok), 0.2):to_css(),
  }

  spec.diff = {
    add    = C(spec.bg1):blend(C(pal.green.dim), 0.15):to_css(),
    delete = C(spec.bg1):blend(C(pal.red.dim), 0.15):to_css(),
    change = C(spec.bg1):blend(C(pal.blue.dim), 0.15):to_css(),
    text   = C(spec.bg1):blend(C(pal.cyan.dim), 0.2):to_css(),
  }

  spec.git = {
    add      = pal.green.base,
    removed  = pal.red.base,
    changed  = pal.yellow.base,
    conflict = pal.orange.base,
    ignored  = pal.comment,
  }

  -- stylua: ignore start

  return spec
end

return { meta = meta, palette = palette, generate_spec = generate_spec }
