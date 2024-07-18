function MoveSelectedLineDown()
  local start = vim.fn.line("'<")
  local _end = vim.fn.line("'>")
  local last = vim.fn.line('$')

  if _end < last then
    vim.cmd(string.format("%d,%dmove '>+1", start, _end))
    vim.cmd('normal! gv')
  end
end

function MoveSelectedLineUp()
  local start = vim.fn.line("'<")
  local _end = vim.fn.line("'>")

  if start > 1 then
    vim.cmd(string.format("%d,%dmove '<-2", start, _end))
    vim.cmd('normal! gv')
  end
end

