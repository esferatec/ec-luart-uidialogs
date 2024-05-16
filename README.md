# ec-luart-uidialogs

This project provides common dialog ui functions for [LuaRT](https://www.luart.org/).
It has been designed to simplify and improve the creation of graphical user interfaces with the LuaRT ui module.

![examples](/readme.png)

[![LuaRT 1.8.0](https://badgen.net/badge/LuaRT/1.8.0/blue)](https://github.com/samyeyo/LuaRT)

## Features

The module provides the following dialog functions:

| Name | Description | Module |
| --- | --- | --- |
| choiceindexdialog | Displays a dialog that shows a list of choices, and allows the user to select one. Returns the index of selected choice. | uidialogs.lua
| choicetextdialog | Displays a dialog that shows a list of choices, and allows the user to select one. Returns the text of selected choice. | uidialogs.lua
| numberentrydialog | Displays a dialog that requests a number input from the user. Returns the entered number. | uidialogs.lua
| passwordentrydialog | Displays a dialog that requests a password input from the user. Returns the entered password. | uidialogs.lua
| texteditdialog | Displays a dialog that requests a text input (multiple lines) from the user. Returns the entered text. | uidialogs.lua
| textentrydialog | Displays a dialog that requests a text input (single line) from the user. Returns the entered text. | uidialogs.lua
| calendardialog | Displays a dialog that shows a month calendar to choose a date. Returns the selected date. | uidialogs.lua

More detailed descriptions and usage examples can be found in the docs folder.

## Installation

1. Create a folder called "ecluart" in your application.
2. Copy the "uidialogs.lua" file into this folder.

```text
[application]
|
|----ecluart
|   |
|   |----uidialogs.lua
|   |----...
|
|----app.wlua
```

## Usage

The dialog module can be loaded using the function *require()*:

```lua
local uidialogs = require("ecluart.uidialogs") 
```

## License

Copyright (c) 2023 by esferatec.
It is open source, released under the MIT License.
See full copyright notice in the LICENSE.md file.
