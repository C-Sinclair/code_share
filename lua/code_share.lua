-- main module file
local module = require("code_share.module")

local M = {}

M.config = {
	upload_url = "https://code.sinclair.software/upload",
}

--[[
-- Initialises the plugin.
--]]
M.setup = function(args)
	M.config = vim.tbl_deep_extend("keep", args, M.config)
end

--[[
-- Share a given snippet of code
-- @param name -- string name of the snippet
-- @param code -- string code to share
--]]
M.share = function(name, code)
	module.upload(name, code)
end

return M
