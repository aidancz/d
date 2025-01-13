require("mini.deps").add({
	source = "hedyhli/outline.nvim",
	depends = {
		{
			source = "epheien/outline-treesitter-provider.nvim",
		},
	},
})

require("outline").setup({
	providers = {
		priority = {
			"lsp",
			-- "markdown",
			"treesitter",
		},
		markdown = {
			filetypes = {
				"text",
			},
		},
	},
	guides = {
		enabled = false,
	},
	symbol_folding = {
		autofold_depth = false,
		markers = {"●", "○"},
	},
	outline_window = {
		jump_highlight_duration = false,
	},
	outline_items = {
		-- show_symbol_lineno = true,
		highlight_hovered_item = false,
		auto_set_cursor = true,
	},
	symbols = {
		icon_fetcher = function() return "" end,
		icon_source = nil,
		icons = nil,
	},
	keymaps = {
		show_help        = {"<c-h>"},
		close            = {},
		goto_location    = {"o"},
		peek_location    = {"i"},
		goto_and_close   = {},
		restore_location = {"r"},
		hover_symbol     = {},
		toggle_preview   = {},
		rename_symbol    = {},
		code_actions     = {},
		fold             = {"zc"},
		unfold           = {"zo"},
		fold_toggle      = {"za"},
		fold_toggle_all  = {},
		fold_all         = {"zm"},
		unfold_all       = {"zr"},
		fold_reset       = {"zx"},
		down_and_jump    = {},
		up_and_jump      = {},
	},
})

-- pcall(function()
-- require("nofrils").clear({"^Outline"})
-- end)
-- vim.api.nvim_set_hl(0, "OutlineCurrent", {link = "nofrils-red-bg"})

vim.keymap.set("n", "<f3>", "<cmd>Outline<cr>")
