return {
  "windwp/nvim-ts-autotag",
  ft = { "html", "javascript", "typescript", "tsx", "jsx", "vue", "svelte", "xml" },
  config = function()
    require("nvim-ts-autotag").setup()
  end,
}

