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