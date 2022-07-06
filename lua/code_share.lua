-- main module file
local module = require("code_share.module")

local M = {}

M.config = {
	upload_url = "https://code.sinclair.software/upload",
	line_numbers = true,
	round_corners = true,
	window_controls = false,
	tab_width = 2,
	theme = "TwoDark",
}

--[[
-- Initialises the plugin.
-- @param config.upload_url -- url to POST to when code is shared
-- @param config.line_numbers -- display line numbers
-- @param config.round_corners -- display rounded corners
-- @param config.window_controls -- display window controls
-- @param config.background -- hex colour for background
-- @param config.background_image -- path of image to use as background
-- @param config.font -- font to use for text
-- @param config.line_pad -- padding between lines of code
-- @param config.output_dir -- directory to save code to
-- @param config.pad_x -- padding on the x axis
-- @param config.pad_y -- padding on the y axis
-- @param config.shadow_blur_radius -- blur radius for shadow
-- @param config.shadow_colour -- hex colour for shadow
-- @param config.shadow_offset_x -- x offset for shadow
-- @param config.shadow_offset_y -- y offset for shadow
-- @param config.tab_width -- width of tabs
-- @param config.theme -- theme to use for the code image
--                        run `silicon --list-themes` to see available themes
--]]
M.setup = function(config)
	M.config = vim.tbl_deep_extend("keep", config, M.config)
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
