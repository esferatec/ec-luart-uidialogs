# texteditdialog

Displays a dialog that requests a text input (multiple lines) from the user. Returns the entered text

![texteditdialog](/docs/texteditdialog/texteditdialog01.png)

## Function

Shows a new text edit dialog window.

```Lua
uidialogs.texteditdialog(parent, title, message, [text], [width], [height])
```

Parameter | Type | Description
---|---|---
parent | object | Sets the parent window.
title | string | Sets title of the dialog.
message | string | Sets message to show on the dialog.
text | string | Sets content text to show on the dialog.
width | number | Sets the width of the dialog. The default is 300.
height | number | Sets the height of the dialog. The default is 125.

Returns the text that the user has entered if the user has pressed OK, or nil if the user has entered nothing or has pressed Cancel.

## Example

```Lua
local ui = require("ui")
local uidia = require("ecluart.uidialogs")

local win = ui.Window("Text Edit Dialog", "fixed", 320, 250)
local lbl = ui.Label(win, "", 20, 60, 280, 30)
local btn = ui.Button(win, "Open Dialog", 130, 80)

function btn:onClick()
    local name = uidia.texteditdialog(win, "Text Edit Dialog", "Enter your first name:")

    if name ~= nil then
        lbl.text = tostring(name)
    end
end

btn:center()
win:center()
ui.run(win):wait()
```

![texteditdialog](/docs/texteditdialog/texteditdialog01.png)
