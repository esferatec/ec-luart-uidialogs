# passwordentrydialog

Displays a dialog that requests a password input from the user. Returns the entered password.

![passwordentrydialog](/docs/passwordentrydialog/passwordentrydialog01.png)

## Function

Shows a new password entry dialog window.

```Lua
uidialogs.passwordentrydialog(parent, title, message, [width], [height])
```

Parameter | Type | Description
---|---|---
parent | object | Sets the parent window.
title | string | Sets title of the dialog.
message | string | Sets message to show on the dialog.
width | number | Sets the width of the dialog. The default is 300.
height | number | Sets the height of the dialog. The default is 125.

Returns the password that the user has entered if the user has pressed OK, or nil if the user has entered nothing or has pressed Cancel.

## Example

```Lua
local ui = require("ui")
local uidia = require("ecluart.uidialogs")

local win = ui.Window("Password Entry Dialog", "fixed", 320, 250)
local lbl = ui.Label(win, "", 20, 60, 280, 30)
local btn = ui.Button(win, "Open Dialog", 130, 80)

function btn:onClick()
    local password = uidia.passwordentrydialog(win, "Password Entry Dialog", "Enter your password:")

    if password ~= nil then
        lbl.text = tostring(password)
    end
end

btn:center()
win:center()
ui.run(win):wait()
```

![passwordentrydialog](/docs/passwordentrydialog/passwordentrydialog01.png)
