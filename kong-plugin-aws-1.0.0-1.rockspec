package = "kong-plugin-aws"
version = "1.0.0-1"

supported_platforms = {"linux", "macosx"}
source = {
  url = "git://github.com/articulate/kong-plugin-aws",
  tag = "1.0.0"
}

description = {
  summary = "A Kong plugin for signing incoming requests with Amazon Web Services (AWS) authentication headers.",
  license = "Apache 2.0"
}

dependencies = {
  "lua-resty-http == 0.08",
  "luacrypto == 0.3.2",
  "penlight == 1.5.4-1",
}

local pluginName = "aws"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "kong/plugins/"..pluginName.."/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "kong/plugins/"..pluginName.."/schema.lua",
    ["kong.plugins."..pluginName..".v4"] = "kong/plugins/"..pluginName.."/v4.lua",
  }
}
