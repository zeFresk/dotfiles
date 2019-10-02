zeFresk's dotfiles

# Introduction
My portable [neovim](https://neovim.io/) + [zsh](https://www.zsh.org/) + [Oh-My-Zsh](https://github.com/robbyrussell/oh-my-zsh) setup.
Should work **without root access**.

#Plugins
###neovim
- [coc](https://github.com/neoclide/coc.nvim) + [coc-neoinclude](https://github.com/jsfaint/coc-neoinclude) : for auto-completion.
- [markdown-preview](https://github.com/iamcco/markdown-preview.nvim) : for... markdown preview ?
- [nerdtree](https://github.com/crooloose/nerdtree) : because you always need it.
- [easymotion](https://github.com/easymotion/vim-easymotion) : to move quicker inside your code.
- [neotex](https://github.com/donRaphaco/neotex) : provide latex preview and completion.
- [gitgutter](https://github.com/airblade/vim-gitgutter) : to visualize change between commits.
- [autoformat](https://github.com/Chiel92/vim-autoformat) : clang-format to quickly clean-up code.
- [ALE](https://github.com/dense-analysis/ale) : syntastic but better, check for syntax errors.
- [airline](https://github.com/vim-airline/vim-airline) : for a better UI.

###zsh + oh-my-zsh
- [git](https://github.com/robbyrussell/oh-my-zsh/tree/master/plugins/git) : aliases for git and usefull stuff.
- [autosuggest](https://github.com/zsh-users/zsh-autosuggestions) : autosuggestions in terminal.
- [LS\_COLORS](https://github.com/trapd00r/LS_COLORS) : better colors for ls.
- [alien](https://github.com/eendroroy/alien) theme : my favorite omz theme.

# Installation
Just clone and run install
`git clone https://github.com/zeFresk/dotfiles.git
cd dotfiles && chmod +x install
./install`
