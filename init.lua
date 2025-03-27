require("oussama")

set scrolloff=8
set number
set relativenumber
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent




set termguicolors     " enable true colors support
let ayucolor="dark"
colorscheme ayu

let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <leader><CR> :so C:\Users\fayzo\AppData\Local\nvim\init.vim<CR>
nnoremap <C-p> :GFILES<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j>pf :cnext<CR>
nnoremap <C-k>pf :cprev<CR>

vim.opt.number = true
vim.opt.relativenumber = true

