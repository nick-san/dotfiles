return {
  'ojroques/nvim-osc52',
  config = function()
    local osc52 = require('osc52')

    -- Visualモードでyankしたときにもコピー
    vim.api.nvim_set_keymap('v', 'y', [[:lua require('osc52').copy_visual()<CR>]], {noremap = true, silent = true})

    -- 自動でyankした内容をクリップボード送信
    vim.api.nvim_create_autocmd("TextYankPost", {
      callback = function()
        if vim.v.event.operator == 'y' and vim.v.event.regname == '' then
          require('osc52').copy_register('"')
        end
      end,
    })
  end,
}

