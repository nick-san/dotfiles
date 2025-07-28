-- 1. Neovimの基本設定 (エラー回避のため最初に設定)
----------------------------------------------------------------------

-- 文字コード
vim.opt.fenc = 'utf-8'
vim.opt.fileencodings = 'utf-8,cp932,euc-jp,sjis'

-- ファイルの挙動
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.autoread = true
vim.opt.hidden = true
vim.opt.clipboard = 'unnamed,unnamedplus'

-- UI/見た目 (グローバルな設定)
vim.opt.showcmd = true
vim.opt.laststatus = 2
vim.opt.virtualedit = 'onemore'
vim.opt.smartindent = true
vim.opt.showmatch = true
vim.opt.wildmode = 'list:longest'
-- vim.cmd('syntax enable')

-- Tab
vim.opt.list = true
vim.opt.listchars = 'tab:▸-'
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2

-- 検索
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.incsearch = true
vim.opt.wrapscan = true
vim.opt.hlsearch = true

-- キーマップ
vim.keymap.set('n', '<Esc><Esc>', ':nohlsearch<CR><Esc>', { noremap = true, silent = true })
vim.keymap.set('n', '<C-n>', ':Neotree filesystem reveal left<CR>')

-- 2. ウィンドウ毎の設定 (autocmdで安全に適用)
----------------------------------------------------------------------
-- lazy.nvimのUIなど、特殊なバッファでエラーを起こさないようにautocmdを使う
local visual_settings_group = vim.api.nvim_create_augroup('MyVisualSettings', { clear = true })
vim.api.nvim_create_autocmd('BufEnter', {
  group = visual_settings_group,
  pattern = '*', -- すべてのファイルタイプで実行
  callback = function()
    -- 編集するファイルにのみ適用したいオプション
    vim.opt_local.number = true
    vim.opt_local.cursorline = true
    vim.opt_local.cursorcolumn = true
  end,
})

-- 3. プラグインマネージャー (lazy.nvim) の設定
----------------------------------------------------------------------
vim.loader.enable()
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup("plugins")

-- 4. 配色設定 (プラグイン読み込み後に設定)
----------------------------------------------------------------------
vim.cmd('colorscheme molokai')
