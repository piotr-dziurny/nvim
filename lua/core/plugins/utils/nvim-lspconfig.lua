return {
  "neovim/nvim-lspconfig",
  config = function()
    local lspconfig = require("lspconfig")
    local capabilities = require("cmp_nvim_lsp").default_capabilities()
   
    -- pyenv venv support
    local function get_python_path()
      local python_version_file = vim.fn.getcwd() .. "/.python-version"
      if vim.fn.filereadable(python_version_file) == 1 then
        local version = vim.fn.readfile(python_version_file)[1]
        local python_path = vim.fn.expand("~/.pyenv/versions/" .. version .. "/bin/python")
        if vim.fn.executable(python_path) == 1 then
          return python_path
        end
      end
      return nil -- pyright will detect python's standard venv from the shell (if activated)
    end

    -- python
    lspconfig.pyright.setup({
      capabilities = capabilities,
      settings = {
        python = {
          pythonPath = get_python_path(),
          analysis = {
            typeCheckingMode = "on",
          }
        }
      },
      on_new_config = function(new_config, new_root_dir)
        new_config.settings.python.pythonPath = get_python_path()
      end,
    })
    
    -- go
    lspconfig.gopls.setup({
      capabilities = capabilities,
      settings = {
        gopls = {
          analyses = {
            unusedparams = true
          },
          staticcheck = true,
          gofumpt = true, -- code formatter
        },
      },
    })
  end,
}

