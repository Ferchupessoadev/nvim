# My nvim configuration

## Screenshot

![config de nvim](./.screenshot/nvim.png)

# How to install

Clone the repository in the folder .config/

```bash
git clone https://github.com/Ferchupessoadev/nvim.git ~/.config/nvim
```

Run nvim

```bash
nvim
```

## Plugins

- ### UI

  - [notify](https://github.com/rcarriga/nvim-notify)
  - [Devicons](https://github.com/nvim-tree/nvim-web-devicons)
  - [Lualine](https://github.com/nvim-lualine/lualine.nvim)
  - [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter)
  - [Alpha](https://goolord/alpha-nvim)
  - [Treesitter textobjects](https://github.com/nvim-treesitter/nvim-treesitter-textobjects)
  - [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
  - [Autopairs](https://github.com/windwp/nvim-autopairs)
  - [Colorizer](https://github.com/norcalli/nvim-colorizer.lua)

- ### LSP integrations and autocompletion

  - [Cmp](https://github.com/hrsh7th/nvim-cmp)
  - [LSP](https://github.com/neovim/nvim-lspconfig)
  - [Luasnip](https://github.com/L3MON4D3/LuaSnip)
  - [Codeium](https://github.com/Exafunction/codeium.vim)

- [Comment](https://github.com/numToStr/Comment.nvim)

- ### Formatting and linting

  - [Formatting](https://github.com/stevearc/conform.nvim)
  - [linting](https://github.com/mfussenegger/nvim-lint)

- ### Git integrations

  - [fugitive](https://github.com/tpope/vim-fugitive)
  - [gitsigns](https://github.com/lewis6991/gitsigns.nvim)

- ### Functionality

  - [Telescope](https://github.com/nvim-telescope/telescope.nvim)
  - [Toggleterm](https://github.com/akinsho/toggleterm.nvim)
  - [nvim-tree](https://github.com/nvim-tree/nvim-tree.lua)
  - [mason](https://github.com/williamboman/mason.nvim)

## Commands

| command         | Action                    |
| --------------- | ------------------------- |
| Ctrl + s        | save the file             |
| Ctrl + q        | quit the current file     |
| Ctrl + n        | open nerd tree            |
| Space + b + b   | open telescope find files |
| Space + p + p   | open telescope git files  |
| Space + p + e   | open telescope buffers    |
| Tab             | next buffer               |
| Shift + Tab     | previous buffer           |
| Alt + {h,j,k,l} | move in mode insert       |
