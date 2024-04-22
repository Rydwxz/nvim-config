return {

	{'neovim/nvim-lspconfig'},             -- Required
	{                                      -- Optional
		'williamboman/mason.nvim',
		build = function()
		pcall(vim.cmd, 'MasonUpdate')
		end,
	},
	{'williamboman/mason-lspconfig.nvim'}, -- Optional

	{'hrsh7th/nvim-cmp',
		name = 'cmp'},     -- Required
	{'hrsh7th/cmp-nvim-lsp'}, -- Required
	{'L3MON4D3/LuaSnip'},     -- Required
	{'hrsh7th/cmp-buffer'}, -- Required
	{'hrsh7th/cmp-path'}, -- Required

	{
		'VonHeikemen/lsp-zero.nvim',
		dependencies = {
	    {'ray-x/lsp_signature.nvim'},
		{'SmiteshP/nvim-navic'},
		{'neovim/nvim-lspconfig'},             -- Required
		{                                      -- Optional
			'williamboman/mason.nvim',
			build = function()
			pcall(vim.cmd, 'MasonUpdate')
			end,
		},
		{'williamboman/mason-lspconfig.nvim'}, -- Optional

		{'hrsh7th/nvim-cmp', name = 'cmp'},     -- Required
		{'hrsh7th/cmp-nvim-lsp'}, -- Required
		{'L3MON4D3/LuaSnip'},     -- Required
		{'hrsh7th/cmp-buffer'}, -- Required
		{'hrsh7th/cmp-path'}, -- Required
		},

	config = function()
		require('mason').setup()
		require('mason-lspconfig').setup({
			ensure_installed = {
                'bashls',
				'clangd',
				'cmake',
                'jsonls',
                'lemminx', --xml
				'lua_ls',
				'marksman',
				'pyre',
                'sorbet', --ruby
                'vimls',
                'yamlls',
			},
		})

		local lsp = require('lsp-zero').preset({'recommended'})
		local navic = require('nvim-navic')
		local sig = require('lsp_signature').setup()
		lsp.on_attach(function(client, bufnr)
			navic.attach(client, bufnr)
			require('lsp_signature').on_attach(sig, bufnr)
			lsp.default_keymaps({buffer = bufnr })
		end)
		lsp.setup()

		local cmp = require('cmp')
		cmp.setup({
			mapping = {
				['<cr>'] = function(fallback)
					if cmp.visible() then
						cmp.confirm({select = true})
					else
						fallback()
					end
				end,
				['<tab>'] = function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
						cmp.confirm()
					else
						fallback()
					end
				end,
				['<a-tab>'] = function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
						cmp.select_next_item()
						cmp.confirm()
					else
						fallback()
					end
				end,
				['<c-tab>'] = function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
						cmp.select_next_item()
						cmp.select_next_item()
						cmp.confirm()
					else
						fallback()
					end
				end,
			},
		})
	end
},

}
