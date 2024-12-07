return {
  "L3MON4D3/LuaSnip",
  dependencies = { "rafamadriz/friendly-snippets" },
  config = function()
    local ls = require("luasnip")

    -- Load VS Code-style snippets from friendly-snippets
    require("luasnip.loaders.from_vscode").lazy_load()

    -- Keybindings for expanding and jumping
    vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
      if ls.expand_or_jumpable() then
        ls.expand_or_jump()
      end
    end, { silent = true })

--    vim.keymap.set({ "i", "s" }, "<S-Tab>", function()
--      if ls.jumpable(-1) then
--        ls.jump(-1)
--      end
--    end, { silent = true })
  end,
}

