-- Deal with filetype
vim.filetype.add({
  filename = {
    ["Jenkinsfile"] = "groovy",
    [os.getenv("HOME") .. "/.kube/config"] = "yaml",
  },
  pattern = {
    [".*.yaml.dec"] = "yaml",
  },
})

-- Gruvbox theme
return {
  -- add gruvbox
  { "ellisonleao/gruvbox.nvim" },

  -- Configure LazyVim to load gruvbox
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
