if vim.g.neovide then
    -- font size
    vim.g.neovide_scale_factor = 1.0
    local change_scale_factor = function(delta)
      vim.g.neovide_scale_factor = vim.g.neovide_scale_factor * delta
    end
    vim.keymap.set("n", "<C-=>", function()
      change_scale_factor(1.25)
    end)
    vim.keymap.set("n", "<C-->", function()
      change_scale_factor(1/1.25)
    end)
    change_scale_factor(1/2.5)

    -- fullscreen
    vim.g.neovide_fullscreen = true

    -- copy/paste
    vim.g.neovide_input_use_logo = 1 -- enable use of the logo (cmd) key
    vim.keymap.set('v', '<C-c>', '"+y') -- Copy
    vim.keymap.set('n', '<C-v>', '"+P') -- Paste normal mode
    vim.keymap.set('v', '<C-v>', '"+P') -- Paste visual mode
    vim.keymap.set('c', '<C-v>', '<C-R>+') -- Paste command mode
    vim.keymap.set('i', '<C-v>', '<ESC>l"+Pli') -- Paste insert mode
    -- Allow clipboard copy paste in neovim
    vim.g.neovide_input_use_logo = 1
    vim.api.nvim_set_keymap('', '<D-v>', '+p<CR>', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('!', '<D-v>', '<C-R>+', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('t', '<D-v>', '<C-R>+', { noremap = true, silent = true})
    vim.api.nvim_set_keymap('v', '<D-v>', '<C-R>+', { noremap = true, silent = true})

    -- cmdhight
    vim.o.cmdheight = 1
end
