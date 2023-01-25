<div align="center">
  <h1> nvide </h1>
</div>
<div align="center">

![GitHub top language](https://img.shields.io/github/languages/top/dark-Jedi2108/nvide?color=6d92bf&style=for-the-badge)
![Cool](https://img.shields.io/badge/Cool-Affirmative-da696f?style=for-the-badge)
![Bloat](https://img.shields.io/badge/Bloat-None-c585cf?style=for-the-badge)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/dark-Jedi2108/nvide?color=e1b56a&style=for-the-badge)
![GitHub Repo stars](https://img.shields.io/github/stars/dark-Jedi2108/nvide?color=74be88&style=for-the-badge)

</div>


![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/h1.png)


A neovim configuration that looks good and is fast (startuptime < 0.5s).

<div align="center">

```txt
Tested on a pretty low end laptop
On Power                              : 0.020s - 0.025s
On Battery                            : 0.025s - 0.045s
On Power (with firefox and discord)   : 0.020s - 0.035s
On Battery (with firefox and discord) : 0.025s - 0.050s
```

</div>

Has something like 30 plugins and but is still fast becuase of holy lazy loading.


## Plugins And Features
+ Lazy loading done most of the time to get blazingly moderate startup times.
+ A Minimal and Stylish bufferline with [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
+ Cool Looking Custom [Statusline](https://github.com/dark-Jedi2108/nvide/tree/main/lua/staline)
+ Parsing with [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
+ A File Tree with [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
+ Fast file finding and more with [telescope](https://github.com/nvim-telescope/telescope.nvim/)
+ Dope dashboard with [alpha-nvim](https://github.com/goolord/alpha-nvim/)
+ Snippets with [LuaSnip](https://github.com/L3MON4D3/LuaSnip)
+ Toggle-able Terminals with [toggleterm](https://github.com/akinsho/toggleterm.nvim)
+ Color Hightlighting with [nvim-colorizer](https://github.com/norcalli/nvim-colorizer.lua)
+ Popup mappings keysheet [whichkey.nvim](https://github.com/folke/which-key.nvim)
+ Lsp Management with [Mason](https://github.com/williamboman/mason.nvim/)
+ Easy Package Managing with [Packer](https://github.com/wbthomason/packer.nvim)
+ Auto Formatting with inbuilt LSP (no plugin! , requires installing the lsp client)
+ Quick Commenting with [comment-nvim](https://github.com/terrortylor/nvim-comment)
+ Telescope file previews with [telecope-media (dharmx rewrite)](https://github.com/dharmx/telescope-media.nvim)
+ [Indentlines](https://github.com/lukas-reineke/indent-blankline.nvim) to help you code better

## Requirements
+ Neovim >= v0.8
+ ripgrep (optional)
+ nodejs and npm
+ a brain (mandatory)
+ some xp with lua and neovim
+ ueberzug for image previews

## Installation

It's really easy , just a simple one liner with git!
```bash
~ $ git clone --depth 1 https://github.com/dark-Jedi2108/nvide ~/.config/nvim
~ $ nvim +PackerSync
```

## Adding mason to path
Add this to your shell config
```zsh
# this is for zsh
export PATH=$PATH:~/.local/share/nvim/mason/bin
```
```zsh
~ $ source ~/.zshrc
```

## Custom Colorschemes
I know it sucks but you will have to do it manually
+ Make a new color scheme  `/lua/themes/colorschemes/scheme.lua` (copy the default colorscheme and change the colors) 
+ Make a colors file for it `/colors/scheme.lua`

```lua
-- /colors/scheme.lua
require("themes").setup({
  theme = "scheme",
  transparent_background = false
})
```

+ Set the color scheme in `init.lua`

```lua
vim.cmd.colorscheme("scheme")
```

+ Reload Neovim

## Statusline Styles 
**Warning:** This section contains the worst ever code written
There are three prebuilt styles
+ To change the style edit `/lua/core/options.lua`
+ Set the style in `DEFAULT_STATUS_STYLE` variable in line 65

```lua
local DEFAULT_STATUS_STYLE = 'minimal' -- minimal | fancy | monochrome
```
+ Reload Neovim

## Some Points To be Noted
+ This is meant to be a simple base config which can be extended and customised very easily.
+ THIS IS NOT A "DISTRO", just my personal dotfiles that i wanted to share with you guys!
+ This is not for beginners, you need to have some experience wihth lua and neovim.

## Screenshots

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/n1.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/n2.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/n3.png)

![Screenshot1](https://raw.githubusercontent.com/dark-Jedi2108/nvide/main/.github/screenshots/n4.png)



## Todo
- [x]  ~~better screenshots~~
- [ ]  more, MORE fast `how do i do it pls help uwu`
- [x]  ~~custom statusline~~ (i am proud)
- [x]  ~~learn markdown bcoz i suck at it~~
- [x]  ~~fix autoformatting on save~~
- [ ] add some more themes
- [ ] make more status styles

## Special Thanks 
This config wouldn't have been possible without these chads!
+ [dharmx](https://github.com/dharmx/KrakeNvim/)
+ [siduck](https://github.com/NvChad/NvChad)

