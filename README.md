# Code Share

> A library for sharing code images and text

## Install

To output images of the code, you'll need the Silicon CLI. Follow instructions for install in their README.md

<https://github.com/Aloxaf/silicon>

Installation with Packer is super simple:

```lua
use {
  "C-Sinclair/code_share",
  config = function()
    require"code_share".setup {
      -- all keys are optional

      -- url to upload image to
      upload_url = "https://share.foo.bar"
    }
  end
}
```

## Usage

```lua
local code = require "code_share"

-- share the current visual block
code.share()
-- The link to the publicly accessible share is copied to system clipboard
```
