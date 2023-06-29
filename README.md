# nvim-rspec

This plugin enables running RSpec tests within NeoVim using the built-in functions. It provides a convenient way to interact with RSpec directly from your Vim environment.

## Features

•	Run RSpec tests from within NeoVim.
•	Display test results and errors in the quickfix or location list window.
•	Navigate between failing tests and their respective error locations.
•	Set custom RSpec options.

## Requirements

•	NeoVim (version 0.5+) installed and working properly.
•	RSpec installed in your project (refer to your project's gemfile or use `gem install rspec`).

## Installation

Use your favorite plugin manager to install this plugin. For example, using packer:

1.	Add the following to your plugins file:
```lua
use("rafaellima/nvim-rspec")
```
2.	Reload the configuration file or restart NeoVim.
3.	Run ﻿:PackerInstall command within NeoVim to install the plugin.

## Usage

To run RSpec tests, use the following commands:

•	Run all tests:
`:lua require('nvim-rspec').run_all()`
•	Run current test file:
`:lua require('nvim-rspec').run_spec()`
•	Run nearest to the cursor test in the current open file: 
`:lua require('nvim-rspec').run_nearest_spec()`

## Keymaps

Configure keymaps to trigger the functions:

```lua
keymap.set("n", "<leader>,f", ":lua require('nvim-rspec').run_spec()<CR>") -- run spec for the current file
keymap.set("n", "<leader>,s", ":lua require('nvim-rspec').run_nearest_spec()<CR>") -- run nearest spec based on the current file and line
```
