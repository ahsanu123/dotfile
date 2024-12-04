## 🚧 Introduction 

Use multiple in neovim and alias config in bash.

### Switching configs using alias, select or fzf

```shell
// file structure
~/.config
├── nvim-astrovim
│   └── init.lua
├── nvim-kickstart
│   ├── init.lua
│   └── lua
│       ├── custom
│       └── kickstart
├── nvim-lazyvim
│   ├── init.lua
│   └── lua
│       ├── config
│       └── plugins
├── nvim-lunarvim
│   └── config.lua
└── nvim-nvchad
│   ├── init.lua
│   └── lua
│       ├── core
│       ├── custom
│       └── plugins
└── nvim
```

```shell
//.zshrc
alias v='nvim' # default Neovim config
alias vz='NVIM_APPNAME=nvim-lazyvim nvim' # LazyVim
alias vc='NVIM_APPNAME=nvim-nvchad nvim' # NvChad
alias vk='NVIM_APPNAME=nvim-kickstart nvim' # Kickstart
alias va='NVIM_APPNAME=nvim-astrovim nvim' # AstroVim
alias vl='NVIM_APPNAME=nvim-lunarvim nvim' # LunarVim
```

## 🥗 Reference 

- [neovim-switch-config](https://michaeluloth.com/neovim-switch-configs/)
- [NVIM_APPNAME](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME)
