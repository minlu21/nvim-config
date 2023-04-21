local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
	vim.notify("Error: require alpha")
	return
end

local dashboard = require("alpha.themes.dashboard")

dashboard.section.header.val = {
	[[                  .:.          ]],
	[[             .::::.            ]],
	[[..         ..::::::''::        ]],
	[[::::..  .::''''':::    ''.     ]],
	[[':::::::'         '.  ..  '.   ]],
	[[ ::::::'            : '::   :  ]],
	[[  :::::     .        : ':'   : ]],
	[[  :::::    :::       :.     .'.]],
	[[ .::::::    ':'     .' '.:::: :]],
	[[ ::::::::.         .    ::::: :]],
	[[:::::    '':.... ''      '''' :]],
	[[':::: .:'              ...'' : ]],
	[[ ..::.   '.........:::::'   :  ]],
	[[  '':::.   '::'':'':::'   .'   ]],
	[[        '..  ''.....'  ..'     ]],
	[[           ''........''        ]],
	[[                               ]],
}

dashboard.section.buttons.val = {
	dashboard.button("f", "  Find file", ":Telescope find_files<CR>"),
	dashboard.button("n", "  New File", ":ene <BAR> startinsert<CR>"),
	dashboard.button("r", "  Recently used files", ":Telescope oldfiles<CR>"),
	dashboard.button("t", "  Find text", ":Telescope live_grep <CR>"),
	dashboard.button("c", " Configuration", ":e ~/.config/nvim/init.lua <CR>"),
	dashboard.button("q", "  Quit", ":qa<CR>"),
}


dashboard.section.footer.val = "Hello World!" 

dashboard.config.opts.noautocmd = true

alpha.setup(dashboard.config)
