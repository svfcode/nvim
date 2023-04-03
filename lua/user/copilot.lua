-- use this table to disable/enable filetype
vim.g.copilot_filetypes = { xml = false }

-- since most are enabled by default you can turn them off
-- using this table and only enable for a few filetypes
-- vim.g.copilot_filetypes = { ["*"] = false, python = true }


vim.cmd[[imap <silent><script><expr> <A-i> copilot#Accept("\<CR>")]]
vim.g.copilot_no_tab_map = true
vim.g.copilot_no_enter_map = true

vim.cmd[[imap <silent><script><expr> <A-j> copilot#Next()]]
vim.cmd[[imap <silent><script><expr> <A-k> copilot#Previous()]]
vim.cmd[[imap <silent><script><expr> <A-s> copilot#Dismiss()]]

-- <C-]>                    Dismiss the current suggestion.
-- <Plug>(copilot-dismiss)
--
--                                                 *copilot-i_ALT-]*
-- <M-]>                   Cycle to the next suggestion, if one is available.
-- <Plug>(copilot-next)
--
--                                                 *copilot-i_ALT-[*
-- <M-[>                   Cycle to the previous suggestion.
-- <Plug>(copilot-previous)

vim.cmd[[highlight CopilotSuggestion guifg=#555555 ctermfg=8]]
