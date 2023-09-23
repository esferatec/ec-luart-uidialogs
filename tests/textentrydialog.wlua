local ui = require("ui")
local uidia = require("ecluart.uidialogs")

local win = ui.Window("Text Entry Dialog", "fixed", 320, 250)
local lbl = ui.Label(win, "", 20, 60, 280, 30)
local btn = ui.Button(win, "Open Dialog", 130, 80)

function btn:onClick()
    local name = uidia.textentrydialog(win, "Text Entry Dialog", "Enter your first name:")

    if name ~= nil then
        lbl.text = tostring(name)
    end
end

btn:center()
win:center()
ui.run(win):wait()