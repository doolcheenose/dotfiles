return {
  cmd = { "terraform-ls", "serve" },
  filetypes = { "terraform", "terraform-vars", "hcl" },
  root_markers = {
    ".terraform",
    ".git",
  },
  telemetry = { enabled = false },
  settings = {},
}
