return {
  cmd = { "pyright-langserver", "--stdio" },
  filetypes = { "python" },
  root_markers = {
    "pyproject.toml",
    "setup.py",
    "requirements.txt",
    ".venv",
  },
  telemetry = { enabled = false },
  settings = {},
}
