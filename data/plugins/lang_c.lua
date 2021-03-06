local syntax = require('core.syntax')

syntax.add({

    lang  = "c",
    files = {"%.c$", "%.h$", "%.inl$", "%.cpp$", "%.hpp$"},
    comment = "//",

    patterns = {
        {pattern = "//.-\n"              , type = "comment" },
        {pattern = { "/%*", "%*/" }      , type = "comment" },

        {pattern = {'"', '"', '\\'}      , type = "string"  },
        {pattern = {"'", "'", '\\'}      , type = "string"  },
        {pattern = "%<%s-[^ ]+%s-%>"     , type = "string"  },

        {pattern = "-?0x%x+"             , type = "number"  },
        {pattern = '-?0b%x+'             , type = "number"  },
        {pattern = "-?%d+[%d%.eE]*f?"    , type = "number"  },
        {pattern = "-?%.?%d+f?"          , type = "number"  },

        {pattern = "[%+%-=/%*%^%%<>!~|&]", type = "operator"},
        {pattern = "[%a_][%w_]*%f[(]"    , type = "function"},
        {pattern = "[%a_][%w_]*"         , type = "symbol"  },

        {pattern = {"#", "[ \n]", " "}   , type = "keyword" },
    },

    symbols = {
        ["if"]       = "keyword" ,
        ["else"]     = "keyword" ,
        ["while"]    = "keyword" ,
        ["for"]      = "keyword" ,
        ["break"]    = "keyword" ,
        ["continue"] = "keyword" ,
        ["return"]   = "keyword" ,
        ["goto"]     = "keyword" ,
        ["struct"]   = "keyword" ,
        ["union"]    = "keyword" ,
        ["typedef"]  = "keyword" ,
        ["enum"]     = "keyword" ,
        ["extern"]   = "keyword" ,
        ["static"]   = "keyword" ,
        ["volatile"] = "keyword" ,
        ["inline"]   = "keyword" ,
        ["switch"]   = "keyword" ,
        ["case"]     = "keyword" ,
        ["default"]  = "keyword" ,
        ["auto"]     = "keyword" ,
        ["const"]    = "keyword" ,
        ["void"]     = "keyword2",
        ["int"]      = "keyword2",
        ["short"]    = "keyword2",
        ["long"]     = "keyword2",
        ["float"]    = "keyword2",
        ["double"]   = "keyword2",
        ["char"]     = "keyword2",
        ["unsigned"] = "keyword2",
        ["bool"]     = "keyword2",
        ["true"]     = "literal" ,
        ["false"]    = "literal" ,
        ["NULL"]     = "literal" ,
    }
})
