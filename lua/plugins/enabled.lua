return {
  {
    "andymass/vim-matchup",
    event = "BufReadPost",
    config = function()
      -- Make matchup work
      vim.cmd([[
        let g:matchup_matchparen_offscreen = {'method': 'scrolloff'}
        map <silent> ; %
        " map <leader>; v;zf<esc>j
      ]])
    end,
  },
  {
    "stevearc/oil.nvim",
    opts = {},
    dependencies = { "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
    config = function()
      require("oil").setup({
        columns = { "icon" },
        keymaps = {
          ["<CR>"] = "actions.select",
          ["<leader>r"] = "actions.refresh",
          ["<leader>p"] = "actions.preview",
          ["<leader>o"] = "actions.open_external",
        },
        use_default_keymaps = false,
        view_options = {
          show_hidden = false,
        },
      })
      vim.keymap.set("n", "<BS>", "<CMD>Oil<CR>", { desc = "Open parent directory" })
      vim.keymap.set("n", "<leader>h", require("oil").toggle_hidden)
    end,
  },
  {
    "othree/eregex.vim",
  },
  {
    "nvim-telescope/telescope.nvim",
    keys = {
      {
        "<leader><space>",
        "<cmd>Telescope buffers sort_mru=true sort_lastused=true<cr>",
        desc = "Switch Buffer",
      },
    },
  },
}
