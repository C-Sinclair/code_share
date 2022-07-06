local code = require("code_share")

describe("setup", function()
	it("works with custom upload url", function()
		local upload_url = "http://example.com/upload"
		code.setup({ upload_url = upload_url })
		assert("upload_url is respected", code.config.upload_url == upload_url)
	end)
end)
