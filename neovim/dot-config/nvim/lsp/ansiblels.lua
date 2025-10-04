return {
  cmd = { "ansible-language-server", "--stdio" },
  filetypes = { "yaml" },
  root_markers = {
    "ansible.cfg",
    ".ansible-lint",
  },
  telemetry = { enabled = false },
  settings = {
    ansible = {
      path = "ansible",
    },
    executionEnvironment = {
      enabled = false,
    },
    python = {
      interpreterPath = "python",
    },
    validation = {
      enabled = true,
      lint = {
        enabled = true,
        path = "ansible-lint",
      },
    },
  },
}
