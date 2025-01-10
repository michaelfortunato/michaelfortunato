vim.keymap.set(
	{ "n", "v" },
	"<leader>r",
	"<Cmd>OverseerRunCmd make refresh<CR>",
	{ desc = "Build And Preview Resume.tex" }
)
return {}
