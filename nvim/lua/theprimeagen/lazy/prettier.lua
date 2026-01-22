return {
	"prettier/vim-prettier",
	build = "npm install --legacy-peer-deps",
	config = function()
		-- Enable autoformatting on save
		vim.g["prettier#autoformat"] = 1
		-- Allow autoformatting without requiring @format or @prettier pragma tags
		vim.g["prettier#autoformat_require_pragma"] = 0
		-- Toggle autoformatting based on prettier config file presence
		vim.g["prettier#autoformat_config_present"] = 1
		-- Use async formatting for better performance
		vim.g["prettier#exec_cmd_async"] = 1
		-- Disable quickfix auto-focus to avoid interrupting workflow
		vim.g["prettier#quickfix_auto_focus"] = 0
		-- Use file-override config precedence (respects local config files)
		vim.g["prettier#config#config_precedence"] = "file-override"
	end,
}
