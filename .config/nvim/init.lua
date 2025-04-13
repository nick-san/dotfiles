-- シンタックスハイライトをオンにする
vim.cmd('syntax on')

-- カラースキーム
-- vim.cmd('colorscheme molokai')
vim.o.termguicolors = true -- これで t_Co=256 は不要

-- 基本設定
vim.o.fileencoding = 'utf-8'
vim.o.backup = false
vim.o.swapfile = false
vim.o.autoread = true
vim.o.hidden = true
vim.o.showcmd = true

-- 見た目
vim.wo.number = true
vim.wo.cursorline = true
vim.wo.cursorcolumn = true
vim.o.virtualedit = 'onemore'
vim.o.smartindent = true
vim.o.showmatch = true
vim.o.laststatus = 2
vim.o.wildmode = 'list:longest'

-- 折り返し時の移動
vim.api.nvim_set_keymap('n', 'j', 'gj', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'k', 'gk', { noremap = true, silent = true })

-- タブ系
vim.o.list = true
vim.o.listchars = 'tab:▸-'
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2

-- 検索
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.incsearch = true
vim.o.wrapscan = true
vim.o.hlsearch = true

-- ESC連打でハイライト解除
vim.api.nvim_set_keymap('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })
