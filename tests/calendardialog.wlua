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
