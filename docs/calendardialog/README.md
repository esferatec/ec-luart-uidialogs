# calendardialog

Displays a dialog that shows a month calendar to choose a date. Returns the selected date. 

![calendardialog](/docs/calendardialog/calendardialog01.png)

## Function

Shows a new calendar dialog window.

```Lua
uidialogs.calendardialog(parent, title, message, [select], [width], [height])
```

Parameter | Type | Description
---|---|---
parent | object | Sets the parent window.
title | string | Sets title of the dialog.
message | string | Sets message to show on the dialog.
select | datetime | Sets the current selected date.
width | number | Sets the width of the dialog. The default is 246.
height | number | Sets the height of the dialog. The default is 260.

Returns the date and time that the user has seleced if the user has pressed OK, or nil if the user has seleced nothing or has pressed Cancel.

## Example

```Lua
local ui = require("ui")
local uidia = require("ecluart.uidialogs")

local win = ui.Window("Calendar Dialog", "fixed", 320, 250)
local lbl = ui.Label(win, "", 20, 60, 280, 30)
local btn = ui.Button(win, "Open Dialog", 130, 80)

function btn:onClick()
  local choice = uidia.calendardialog(win, "Calendar Dialog", "Select a date:")

  if choice ~= nil then
    lbl.text = tostring(choice)
  end
end

btn:center()
win:center()
ui.run(win):wait()
```

![calendardialog](/docs/calendardialog/calendardialog01.png)
