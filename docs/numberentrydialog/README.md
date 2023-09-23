# numberentrydialog

Displays a dialog that requests a number input from the user. Returns the entered number.

![numberentrydialog](/docs/numberentrydialog/numberentrydialog01.png)

## Function

Shows a new number entry dialog window.

```Lua
uidialogs.numberentrydialog(parent, title, message, [width], [height])
```

Parameter | Type | Description
---|---|---
parent | object | Sets the parent window.
title | string | Sets title of the dialog.
message | string | Sets message to show on the dialog.
width | number | Sets the width of the dialog. The default is 300.
height | number | Sets the height of the dialog. The default is 125.

Returns the number that the user has entered if the user has pressed OK, or nil if the user has entered nothing or has pressed Cancel.

## Example

```Lua
local ui = require("ui")
local uidia = require("ecluart.uidialogs")

local win = ui.Window("Number Entry Dialog", "fixed", 320, 250)
local lbl = ui.Label(win, "", 20, 60, 280, 30)
local btn = ui.Button(win, "Open Dialog", 130, 80)

function btn:onClick()
    local number = uidia.numberentrydialog(win, "Number Entry Dialog", "Enter your zip code:")

    if number ~= nil then
        lbl.text = tostring(number)
    end
end

btn:center()
win:center()
ui.run(win):wait()
```

![linklabel](/docs/numberentrydialog/numberentrydialog01.png)
