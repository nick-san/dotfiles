-- lazy.nvim のパス
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- lazy.nvim が存在しない場合 clone
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    lazypath,
  })
end

-- runtimepath に追加
vim.opt.rtp:prepend(lazypath)

-- プラグイン一覧
require("lazy").setup({
  -- ここに使いたいプラグインを書く
  "nvim-lualine/lualine.nvim",         -- ステータスライン
  "nvim-treesitter/nvim-treesitter",   -- 高速構文解析
  "nvim-telescope/telescope.nvim",     -- Fuzzy Finder
  "neovim/nvim-lspconfig",             -- LSP
  "Mofiqul/dracula.nvim",
})

-- シンタックスハイライトをオンにする
vim.cmd('syntax on')

-- カラースキーム
-- vim.cmd('colorscheme dracula')
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
