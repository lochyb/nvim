require('telescope').setup {
	defaults = {
		-- Default configuration for telescope goes here:
		initial_mode = "normal",
		-- layout_config = {
		-- 	height = 0.95,
		-- 	preview_width = 0.55, width = 0.75,
		-- },
		prompt_prefix = "❯ ",
		selection_caret = "❯ ",
		sorting_strategy = "ascending",
		layout_config = {
			horizontal = {
				width_padding = 0.04,
				height_padding = 0.1,
				preview_width = 0.6,
			},
			vertical = {
				prompt_position = "bottom",
				width_padding = 0.05,
				height_padding = 1,
				preview_height = 0.5,
			},
		},
		vimgrep_arguments = {
			"rg",
			"--color=never",
			"--no-heading",
			"--with-filename",
			"--line-number",
			"--column",
			"--smart-case",
			"--hidden",
		},

	},
	pickers = {
		buffers = {
			sort_lastused = true,
			layout_strategy = "horizontal",
			layout_config = {
				horizontal = {
					height = 0.5,
					width = 0.5,
					prompt_position = "top",
					width_padding = 0.04,
					height_padding = 0.1,
					preview_width = 0.6,
				},
			},
		},
		find_files = {
			width = {
				previewer = 25,
				results = 30,
			}
		}
		-- Default configuration for builtin pickers goes here:
		-- picker_name = {
		--   picker_config_key = value,
		--   ...
		-- }
		-- Now the picker_config_key will be applied every time you call this
		-- builtin picker
	},
	extensions = {
		-- Your extension configuration goes here:
		-- extension_name = {
		--   extension_config_key = value,
		-- }
		-- please take a look at the readme of the extension you want to configure
	}
}
