local opt = vim.opt
local keymap = vim.api.nvim_set_keymap

-- Github = "https://github.com/tomasr/molokai"
-- colorscheme molokai
opt.t_Co=256

-- setting
opt.langmenu=ja

--文字コードをUFT-8に設定
opt.fenc=utf-8
opt.fileencodings=utf-8,cp932,euc-jp,sjis

-- バックアップファイルを作らない
opt.nobackup = true
-- スワップファイルを作らない
opt.noswapfile = true
-- 編集中のファイルが変更されたら自動で読み直す
opt.autoread = true
-- バッファが編集中でもその他のファイルを開けるように
opt.hidden = true
-- 入力中のコマンドをステータスに表示する
opt.showcmd = true
-- clipboardをシステムと共有
opt.clipboard=unnamed,unnamedplus


-- 見た目系
-- 行番号を表示
opt.number = true
-- 現在の行を強調表示
opt.cursorline = true
-- 現在の行を強調表示（縦）
opt.cursorcolumn = true
-- 行末の1文字先までカーソルを移動できるように
opt.virtualedit = onemore
-- インデントはスマートインデント
opt.smartindent = true
-- 括弧入力時の対応する括弧を表示
opt.showmatch = true
-- ステータスラインを常に表示
opt.laststatus=2
-- コマンドラインの補完
opt.wildmode=list:longest
-- 折り返し時に表示行単位での移動できるようにする
-- vim.o.wrap = true
-- vim.o.linebreak = true
keymap('n', '<Down>', 'g<Down>', { noremap = true, silent = true })
keymap('n', '<Up>', 'g<Up>', { noremap = true, silent = true })
keymap('n', '<Left>', 'g<Left>', { noremap = true, silent = true })
keymap('n', '<Right>', 'g<Right>', { noremap = true, silent = true })



opt.visualbell

syntax enable


-- Tab系
-- 不可視文字を可視化(タブが「▸-」と表示される)
opt.list listchars=tab:\▸\-
-- Tab文字を半角スペースにする
opt.expandtab = true
-- 行頭以外のTab文字の表示幅（スペースいくつ分）
opt.tabstop=2
-- 行頭でのTab文字の表示幅
opt.shiftwidth=2


-- 検索系
-- 検索文字列が小文字の場合は大文字小文字を区別なく検索する
opt.ignorecase = true
-- 検索文字列に大文字が含まれている場合は区別して検索する
opt.smartcase = true
-- 検索文字列入力時に順次対象文字列にヒットさせる
opt.incsearch = true
-- 検索時に最後まで行ったら最初に戻る
opt.wrapscan = true
-- 検索語をハイライト表示
opt.hlsearch = true
-- ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR><Esc>

inoremap jj <Esc>

-- opt.clipboard+=unnamedplus
