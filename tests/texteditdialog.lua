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
win:show()
win:center()
waitall()
