	return {
	'nvim-lua/plenary.nvim',
{
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" }
},
	'folke/trouble.nvim',
	{
		'nvim-treesitter/nvim-treesitter',
		build = ':TSUpdate',
	},
        'github/copilot.vim',
        'David-Kunz/jester',
        'theHamsta/nvim-dap-virtual-text',
        'nvim-telescope/telescope-dap.nvim',
        'Pocco81/DAPInstall.nvim',
        'mfussenegger/nvim-dap',
        'leoluz/nvim-dap-go',
        'rcarriga/nvim-dap-ui',
}
