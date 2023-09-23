# choiceindexdialog

Displays a dialog that shows a list of choices, and allows the user to select one. Returns the index of selected choice.

![choiceindexdialog](/docs/choiceindexdialog/choiceindexdialog01.png)

## Function

Shows a new choice index dialog window.

```Lua
uidialogs.choiceindexdialog(parent, title, message, choices, [width], [height])
```

Parameter | Type | Description
---|---|---
parent | object | Sets the parent window.
title | string | Sets title of the dialog.
message | string | Sets message to show on the dialog.
choices | table | Sets the list, containing the choices.
width | number | Sets the width of the dialog. The default is 300.
height | number | Sets the height of the dialog. The default is 200.

Returns the index that the user has seleced if the user has pressed OK, or nil if the user has seleced nothing or has pressed Cancel.

## Example

```Lua
local ui = require("ui")
local uidia = require("ecluart.uidialogs")

local win = ui.Window("Choice Index Dialog", "fixed", 320, 250)
local lbl = ui.Label(win, "", 20, 60, 280, 30)
local btn = ui.Button(win, "Open Dialog", 130, 80)

function btn:onClick()
    local choice = uidia.choiceindexdialog(win, "Choice Index Dialog", "Select an item:",
        { "Item 1", "Item 2", "Item 3", "Item 4", "Item 5", "Item 6" })

    if choice ~= nil then
        lbl.text = tostring(choice)
    end
end

btn:center()
win:center()
ui.run(win):wait()
```

![linklabel](/docs/choiceindexdialog/choiceindexdialog01.png)
