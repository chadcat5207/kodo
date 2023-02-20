local M = {}
M.bufilter = function()
  local bufs = vim.api.nvim_list_bufs() or nil

  if not bufs then
    return {}
  end

  for i = #bufs, 1, -1 do
    if not vim.api.nvim_buf_is_valid(bufs[i]) or not vim.bo[bufs[i]].buflisted or not vim.api.nvim_buf_is_loaded(bufs[i]) then
      table.remove(bufs, i)
    end
  end

  return bufs
end
M.tabuflinePrev = function()
  local bufs = M.bufilter()
  for i, v in ipairs(bufs) do
    if vim.api.nvim_get_current_buf() == v then
      vim.cmd(i == 1 and "b" .. bufs[#bufs] or "b" .. bufs[i - 1])
      break
    end
  end
end
M.tabuflineNext = function()
  local bufs = M.bufilter()

  for i, v in ipairs(bufs) do
    if vim.api.nvim_get_current_buf() == v then
      vim.cmd(i == #bufs and "b" .. bufs[1] or "b" .. bufs[i + 1])
      break
    end
  end
end


M.close_buffer = function(bufnr)
  if vim.bo.buftype == "terminal" then
    vim.cmd(vim.bo.buflisted and "set nobl | enew" or "hide")
  else
    bufnr = bufnr or vim.api.nvim_get_current_buf()
    require("ui.buff.fn").tabuflinePrev()
    vim.cmd("confirm bd" .. bufnr)
  end
end

return M
