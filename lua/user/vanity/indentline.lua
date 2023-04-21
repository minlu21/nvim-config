local status_ok, indent = pcall(require, "indent_blankline")
if not status_ok then
	vim.notify("Error: require indent-blankline")
	return
end

indent.setup({
	space_char_blankline = " ",
	show_current_context = true,
	show_current_context_start = true,
})
