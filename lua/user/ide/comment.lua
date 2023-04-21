local status_ok, comment = pcall(require, "Comment")
if not status_ok then
    vim.notify("Error: require comment")
    return
end

-- Not really working for tsx

comment.setup({
    pre_hook = require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
});

