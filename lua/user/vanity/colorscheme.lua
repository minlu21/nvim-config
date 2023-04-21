local colorscheme = "kanagawa"

local status_ok, col = pcall(require, colorscheme) 
if not status_ok then
    vim.notify("colorscheme " .. colorscheme .. " not found!")
    return
end

col.setup({
    transparent = true
})

vim.cmd("colorscheme " .. colorscheme)
