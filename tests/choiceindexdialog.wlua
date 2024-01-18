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
