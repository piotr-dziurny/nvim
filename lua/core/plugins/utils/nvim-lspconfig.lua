return {
  "neovim/nvim-lspconfig",
  config = function()
    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    -- local function get_python_path()
    --   local python_version_file = vim.fn.getcwd() .. "/.python-version"
    --   if vim.fn.filereadable(python_version_file) == 1 then
    --     local version = vim.fn.readfile(python_version_file)[1]
    --     local python_path = vim.fn.expand("~/.pyenv/versions/" .. version .. "/bin/python")
    --     if vim.fn.executable(python_path) == 1 then
    --       return python_path
    --     end
    --   end
    --   return nil -- pyright will detect python's standard venv from the shell (if activated)
    -- end

    -- python 
    vim.lsp.config("pyright", {
      capabilities = capabilities,
      settings = {
        python = {
          -- pythonPath = get_python_path(),
          analysis = { typeCheckingMode = "on" },
        },
      },
      on_new_config = function(new_config, new_root_dir)
        new_config.settings.python.pythonPath = get_python_path()
      end,
    })
    vim.lsp.enable("pyright")

    -- go
    vim.lsp.config("gopls", {
      capabilities = capabilities,
      settings = {
        gopls = {
          analyses = { unusedparams = true },
          staticcheck = true,
          gofumpt = true,
        },
      },
    })
    vim.lsp.enable("gopls")
  end,
}
