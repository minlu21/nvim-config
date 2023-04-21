local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    vim.notify("Error: require nvim-treesitter configs")
    return
end

configs.setup({
    ensure_installed = "all",
    sync_install = false, 
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = true
    },
    indent = { enable = true },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, into
    },
    context_commentstring = {
        enable = true,
        enable_autocmd = false,
        config = {
            javascript = {
                __default = '// %s',
                jsx_element = '{/* %s */}',
                jsx_fragment = '{/* %s */}',
                jsx_attribute = '// %s',
                comment = '// %s',
            },
            typescript = {
                __default = '// %s',
                tsx_element = '{/* %s */}',
                tsx_fragment = '{/* %s */}',
                tsx_attribute = '// %s',
                comment = '// %s',
            },
        },
    }
})
