return {
  "lucidph3nx/nvim-sops",
  event = { "BufEnter" },
  opts = {
    enabled = true,
    debug = true,
    binPath = "sops", -- assumes its on $PATH
    -- defaults = { -- overriding any env vars as needed
    --   awsProfile = "default",
    --   --   ageKeyFile = "SOPS_AGE_KEY_FILE",
    --   --   gcpCredentialsPath = "GOOGLE_APPLICATION_CREDENTIALS",
    -- },
  },
  keys = {
    { "<leader>ef", vim.cmd.SopsEncrypt, desc = "[E]ncrypt [F]ile" },
    { "<leader>df", vim.cmd.SopsDecrypt, desc = "[D]ecrypt [F]ile" },
  },
}
