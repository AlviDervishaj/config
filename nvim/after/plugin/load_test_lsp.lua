local client = vim.lsp.start_client {
  -- Load custom made lsp server.
  cmd = { "/home/alvi/projects/side/terminal/LSP/go/go_lsp/main" },
  name = "go_lsp_alvi"
}

if not client then
  vim.notify "Hey ! No Client detected ! Make sure to build your LSP !!"
  return
end

-- Connect for something
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.lsp.buf_attach_client(0, client)
  end,
})
