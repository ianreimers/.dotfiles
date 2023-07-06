local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then
  print("Issue with nvim-treesitter")
  return
end

ts.setup {
  auto_install = true,
  highlight = {
    enable = true,
  },
  indent = {
    enable = true,
  },
  autotag = {
    enable = true,
  }
}
