# ec-luart-uidialogs

This project provides common dialog ui functions for [LuaRT](https://www.luart.org/).
It has been designed to simplify and improve the creation of graphical user interfaces with the LuaRT ui module.

![examples](/readme.png)

[![Lua 5.4.6](https://badgen.net/badge/Lua/5.4.6/yellow)](https://github.com/lua/lua)
[![LuaRT 1.6.0](https://badgen.net/badge/LuaRT/1.6.0/blue)](https://github.com/samyeyo/LuaRT)
[![LuaCheck 1.1.1](https://badgen.net/badge/LuaCheck/1.1.1/green)](https://github.com/lunarmodules/luacheck)

## Features

The module provides the following dialog functions:

| Name | Description | Module |
| --- | --- | --- |
| textentrydialog | Displays a dialog that requests a text input from the user. Returns the entered text. | uidialogs.lua
| numberentrydialog | Displays a dialog that requests a number input from the user. Returns the entered number. | uidialogs.lua
| passwordentrydialog | Displays a dialog that requests a password input from the user. Returns the entered password. | uidialogs.lua
| choiceindexdialog | Displays a dialog that shows a list of choices, and allows the user to select one. Returns the index of selected choice. | uidialogs.lua
| choicetextdialog | Displays a dialog that shows a list of choices, and allows the user to select one. Returns the text of selected choice. | uidialogs.lua

More detailed descriptions and usage examples can be found in the docs folder.

## Installation

1. Create a folder called "ecluart" in your application.
2. Copy the "uidialogs.lua" file into this folder.

```text
[programm]
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
