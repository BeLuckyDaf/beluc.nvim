-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	'f-person/git-blame.nvim',
	config = function ()
		vim.g.gitblame_display_virtual_text = 0 -- Disable virtual text
		local git_blame = require('gitblame')

		require('lualine').setup({
			sections = {
				lualine_c = {
					{ git_blame.get_current_blame_text, cond = git_blame.is_blame_text_available }
				}
			}
		})
	end
}
