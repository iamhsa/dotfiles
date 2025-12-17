return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "main",
    dependencies = {
      { "github/copilot.vim" },
      { "nvim-lua/plenary.nvim" },
    },
    build = "make tiktoken",
    opts = {
      debug = false,
      model = "claude-sonnet-4.5",
      window = {
        layout = "vertical",
        width = 0.4,
      },
    },
  },
}
