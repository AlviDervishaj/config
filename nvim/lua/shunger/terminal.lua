local cmd = vim.cmd
local api = vim.api
local opt = vim.opt
-- Terminal
api.nvim_create_autocmd('TermOpen', {
  group = api.nvim_create_augroup('custom-term-open-shunger', { clear = true }),
  callback = function()
    opt.number = false
    opt.relativenumber = false
  end,
})

-- Job id needed to send commands to terminal
local job_id = 0

-- Open Small Terminal ( Hence the shortcut `st` )
vim.keymap.set("n", "<leader>st", function()
  -- new window
  cmd.vnew()
  -- new terminal
  cmd.term()
  -- set height to 15
  api.nvim_win_set_width(0, 50)
  -- assign job id to channel
  job_id = vim.bo.channel
end)


-- Custom command to run when you run a command :Mindblown
vim.keymap.set("n", "<leader>hi", function()
  vim.fn.chansend(job_id, { 'echo "Hello, world!"\n' })
end)
