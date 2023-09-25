local ui = require("ui")

-- Provides common dialog ui functions.
local uidialogs = {}

uidialogs.cancelcaption = "Cancel"
uidialogs.conformcaption = "OK"

--#region dialog

-- Creates a new dialog object.
local Dialog = Object(ui.Window)

-- Overrides the default window constructor.
function Dialog:constructor(title, width, height)
    super(self).constructor(self, title or self.parent.title, "fixed", width, height)

    local buttonCancel = ui.Button(self, uidialogs.cancelcaption)
    buttonCancel.width = 100
    buttonCancel.x = (self.width - 110)
    buttonCancel.y = (self.height - buttonCancel.height - 10)

    local buttonConfirm = ui.Button(self, uidialogs.conformcaption)
    buttonConfirm.width = 100
    buttonConfirm.x = (self.width - buttonCancel.width - buttonConfirm.width - 20)
    buttonConfirm.y = buttonCancel.y

    local isConfirmed = false

    function buttonCancel:onClick()
        isConfirmed = false
        self.parent:hide()
    end

    function buttonConfirm:onClick()
        isConfirmed = true
        self.parent:hide()
    end

    function self:isconfirmed()
        return isConfirmed
    end
end

-- Initializes a new dialog instance.
function uidialogs.Dialog(title, width, height)
    return Dialog(title, width, height)
end

--#endregion

--#region textentrydialog

-- Displays a dialog that requests a text input from the user. 
function uidialogs.textentrydialog(parent, title, message, width, height)
    local result

    local windowDialog = uidialogs.Dialog(title, width or 300, height or 125)
    local labelMessage = ui.Label(windowDialog, message, 10, 10, (windowDialog.width - 20), 30)
    local entryValue = ui.Entry(windowDialog, "", 10, 50, (windowDialog.width - 20))

    parent:showmodal(windowDialog)
    entryValue:show()

    repeat
        ui.update()
        windowDialog:center()
        windowDialog:tofront()

        if windowDialog:isconfirmed() then
            result = #entryValue.text > 0 and tostring(entryValue.text) or nil
        else
            result = nil
        end
    until not windowDialog.visible

    return result
end

--#endregion

--#region numberentrydialog

-- Displays a dialog that requests a number input from the user.
function uidialogs.numberentrydialog(parent, title, message, width, height)
    local result

    local windowDialog = uidialogs.Dialog(title, width or 300, height or 125)
    local labelMessage = ui.Label(windowDialog, message, 10, 10, (windowDialog.width - 20), 30)
    local entryValue = ui.Entry(windowDialog, "", 10, 50, (windowDialog.width - 20))

    function entryValue:onChange()
        if #self.text > 0 and tonumber(self.text) == nil then
            self.text = string.gsub(self.text, "%D", "")
        end
    end

    parent:showmodal(windowDialog)
    entryValue:show()

    repeat
        ui.update()
        windowDialog:center()
        windowDialog:tofront()

        if windowDialog:isconfirmed() then
            result = #entryValue.text > 0 and tonumber(entryValue.text) or nil
        else
            result = nil
        end
    until not windowDialog.visible

    return result
end

--#endregion

--#region passwordentrydialog

-- Displays a dialog that requests a password input from the user.
function uidialogs.passwordentrydialog(parent, title, message, width, height)
    local result

    local windowDialog = uidialogs.Dialog(title, width or 300, height or 125)
    local labelMessage = ui.Label(windowDialog, message, 10, 10, (windowDialog.width - 20), 30)
    local entryValue = ui.Entry(windowDialog, "", 10, 50, (windowDialog.width - 20))
    entryValue.masked = true

    parent:showmodal(windowDialog)
    entryValue:show()

    repeat
        ui.update()
        windowDialog:center()
        windowDialog:tofront()

        if windowDialog:isconfirmed() then
            result = #entryValue.text > 0 and tostring(entryValue.text) or nil
        else
            result = nil
        end
    until not windowDialog.visible

    return result
end

--#endregion

--#region choicetextdialog

-- Displays a dialog that shows a list of choices, and allows the user to select one.
function uidialogs.choicetextdialog(parent, title, message, choices, width, height)
    local result

    local windowDialog = uidialogs.Dialog(title, width or 300, height or 200)
    local labelMessage = ui.Label(windowDialog, message, 10, 10, (windowDialog.width - 20), 30)
    local listChoices = ui.List(windowDialog, choices, 10, 50, (windowDialog.width - 20), (windowDialog.height - 40 - 60))

    parent:showmodal(windowDialog)
    listChoices.selected = listChoices.items[1]

    repeat
        ui.update()
        windowDialog:center()
        windowDialog:tofront()

        if windowDialog:isconfirmed() then
            result = listChoices.selected and listChoices.selected.text or nil
        else
            result = nil
        end
    until not windowDialog.visible

    return result
end

--#endregion

--#region choiceindexdialog

-- Displays a dialog that shows a list of choices, and allows the user to select one.
function uidialogs.choiceindexdialog(parent, title, message, choices, width, height)
    local result

    local windowDialog = uidialogs.Dialog(title, width or 300, height or 200)
    local labelMessage = ui.Label(windowDialog, message, 10, 10, (windowDialog.width - 20), 30)
    local listChoices = ui.List(windowDialog, choices, 10, 50, (windowDialog.width - 20), (windowDialog.height - 40 - 60))

    parent:showmodal(windowDialog)
    listChoices.selected = listChoices.items[1]

    repeat
        ui.update()
        windowDialog:center()
        windowDialog:tofront()

        if windowDialog:isconfirmed() then
            result = listChoices.selected and listChoices.selected.index or nil
        else
            result = nil
        end
    until not windowDialog.visible

    return result
end

--#endregion

return uidialogs
