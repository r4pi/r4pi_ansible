return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    -- remember last position - https://github.com/ethanholz/nvim-lastplace
    use 'ethanholz/nvim-lastplace'

end)

