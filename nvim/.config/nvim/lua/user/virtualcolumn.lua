local status_ok, virtualcolumn = pcall(require, "virtual-column")
if not status_ok then
  return
end

virtualcolumn.init({
  column_number = 80,
  overlay = false,
  vert_char = "▏",
  enabled = true,

  -- do not show column on this buffers and types
  buftype_exclude = {},
  filetype_exclude = {'lua', 'toggleterm', 'NvimTree'},
})

vim.cmd [[highlight VirtualColumn guifg=#555555 gui=nocombine]]

