-- lua/plugins/treesitter.lua

return {
  'nvim-treesitter/nvim-treesitter',
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup({
      -- ハイライトを有効にする
      highlight = {
        enable = true,
        -- 特定のファイルタイプでハイライトを無効にする (ファイルサイズが大きい場合など)
        -- disable = { 'c', 'rust' },
      },
      -- インデントを有効にする
      indent = {
        enable = true,
      },
      -- インストールするパーサーのリスト
      -- 'all' を指定するとサポートされている全てのパーサーをインストールします
      -- もしくは、以下のように必要な言語を指定します
      ensure_installed = {
        'c',
        'cpp',
        'go',
        'lua',
        'python',
        'rust',
        'typescript',
        'javascript',
        'vim',
        'vimdoc',
        'query',
        'bash',
        'markdown',
        'html',
        'css',
      },
      -- インストーラーが git や curl などの外部コマンドを使用することを許可する
      sync_install = false,

      -- nvim-treesitter が起動時にパーサーを自動でインストールするようにする
      auto_install = true,
    })
  end,
}
