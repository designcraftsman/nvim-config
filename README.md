# Neovim Configuration

This is my custom Neovim configuration designed to enhance development productivity. It includes plugins for debugging, language server support, autocompletion, and file navigation, all managed using `packer.nvim`.

## Features

### Plugin Management
- **Packer.nvim**: Manages all plugins, including LSP, debugging tools, and themes.
- **Kanagawa Theme**: Provides a visually appealing color scheme.
- **Telescope**: Enables fuzzy file searching and string grepping.

### Language Server Protocol (LSP)
- **Mason.nvim**: Installs and manages LSP servers.
- **nvim-lspconfig**: Configures LSP servers for languages like C++ and TypeScript.
- **Autocompletion**: Powered by `nvim-cmp` and `cmp-nvim-lsp`.

### Debugging
- **nvim-dap**: Provides debugging capabilities for C and C++.
- **nvim-dap-ui**: Adds a user interface for debugging.
- **nvim-dap-virtual-text**: Displays variable values inline during debugging.

### Keybindings
- **Telescope**: Keybindings for file searching (`<leader>pf`, `<C-p>`) and string grepping (`<leader>ps`).
- **LSP**: Keybindings for navigation (`gd`), hover (`K`), and renaming (`<leader>rn`).
- **Debugger**: Keybindings for launching and interacting with the debugger.

### Customizations
- **Colors**: Configured using `colors.lua` for a transparent background.
- **Remapping**: Custom keybindings defined in `remap.lua`.
- **Editor Settings**: Includes line numbers, relative numbers, tab settings, and smart indentation.

## Technologies Used

- **Lua**: Configuration language for Neovim.
- **Packer.nvim**: Plugin manager.
- **DAP**: Debug Adapter Protocol for debugging.
- **LSP**: Language Server Protocol for code intelligence.

## Project Structure

```
nvim-config/
├── init.lua
├── main.cpp
├── after/
│   └── plugin/
│       ├── colors.lua
│       ├── debugger.lua
│       ├── lsp.lua
│       ├── telescope.lua
├── lua/
│   └── oussama/
│       ├── init.lua
│       ├── packer.lua
│       ├── remap.lua
├── plugin/
│   └── packer_compiled.lua
```

### Key Files
- **`init.lua`**: Main entry point for the configuration.
- **`lua/oussama/packer.lua`**: Plugin definitions and setup.
- **`after/plugin/colors.lua`**: Theme configuration.
- **`after/plugin/debugger.lua`**: Debugging setup.
- **`after/plugin/lsp.lua`**: Language server configuration.
- **`after/plugin/telescope.lua`**: Telescope keybindings and setup.

## How to Use

1. Clone the repository:
   ```bash
   git clone <repository-url> ~/.config/nvim
   ```
2. Install `packer.nvim`:
   ```bash
   git clone --depth 1 https://github.com/wbthomason/packer.nvim \
   ~/.local/share/nvim/site/pack/packer/start/packer.nvim
   ```
3. Open Neovim and run:
   ```vim
   :PackerSync
   ```
4. Install LSP servers using Mason:
   ```vim
   :Mason
   ```
5. Start coding with enhanced features!

## Notes
- Debugging requires `gdb` installed on your system.
- Ensure `clangd` and `vtsls` are installed for LSP support.
- Customize keybindings in `lua/oussama/remap.lua`.

