lua <<EOF
require'nvim-treesitter.configs'.setup {
  -- One of "all", "maintained" (parsers with maintainers), or a list of languages
  ensure_installed = "maintained",
  -- Install languages synchronously (only applied to `ensure_installed`)
  sync_install = false,

  highlight = {
    -- `false` will disable the whole extension
    enable = true,
    disable = {"vim"},
    -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
    -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
    -- Using this option may slow down your editor, and you may see some duplicate highlights.
    -- Instead of true it can also be a list of languages
    additional_vim_regex_highlighting = true,
  },
  indent = { enable = true, diable = { "yaml" }},
  incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn",
    },
  },
  context_commentstring = {
      enable = true,
      enable_autocmd = false,
  },
}
EOF

"set foldmethod=expr
"set foldexpr=nvim_treesitter#foldexpr()
