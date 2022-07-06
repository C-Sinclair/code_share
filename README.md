# Code Share

> A library for sharing code images and text

## Install

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
