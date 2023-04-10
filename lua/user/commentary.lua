autocommands = {
    --[[ This is a list of autocommands that will be executed when the
    plugin is loaded. The format is:
        {event, pattern, command}
    where:
        event: the event to listen for
        pattern: the pattern to match
        command: the command to execute
    ]]
    {"BufEnter", "*", "lua require'commentary'.on_enter()"},
    {"BufLeave", "*", "lua require'commentary'.on_leave()"},
    {"BufWinEnter", "*", "lua require'commentary'.on_enter()"},
    {"BufWinLeave", "*", "lua require'commentary'.on_leave()"},
    {"FileType", "*", "lua require'commentary'.on_enter()"},
    {"FileType", "*", "lua require'commentary'.on_leave()"},
    {"InsertEnter", "*", "lua require'commentary'.on_enter()"},
    {"InsertLeave", "*", "lua require'commentary'.on_leave()"},
    {"TermEnter", "*", "lua require'commentary'.on_enter()"},
    {"TermLeave", "*", "lua require'commentary'.on_leave()"},
    {"VimEnter", "*", "lua require'commentary'.on_enter()"},
    {"VimLeave", "*", "lua require'commentary'.on_leave()"},
    {"VimLeavePre", "*", "lua require'commentary'.on_leave()"},
    {"WinEnter", "*", "lua require'commentary'.on_enter()"},
    {"WinLeave", "*", "lua require'commentary'.on_leave()"},
    -- my
    {"BufRead", "*.blade.php", "set filetype=laravel"},
    {"BufNewFile", "*.blade.php", "set filetype=laravel"},
}
-- autocmd BufRead,BufNewFile *.blade.php set filetype=laravel

vim.cmd [[
    autocmd BufRead,BufNewFile *.blade.php setlocal commentstring=//\ %s
]]
