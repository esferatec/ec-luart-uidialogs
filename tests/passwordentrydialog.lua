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
win:show()
win:center()
waitall()
