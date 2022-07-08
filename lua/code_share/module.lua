local M = {}

--[[
-- Uploads a given code snippet
--]]
M.upload = function(name, code)
	local config = vim.g.code_share_config or {}
	local language = vim.bo.filetype

	local command = "echo '"
		.. code
		.. "' | silicon --output ~/Pictures/"
		.. name
		.. ".png "
		.. "--theme "
		.. config.theme
		.. " --language "
		.. language

	os.execute(command)
end

return M
