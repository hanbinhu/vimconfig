Vim Configuration
=================

This is a personal vim configuration designed for no specific programming languages.

Screenshots
-----------

![Screenshot](https://github.com/hanbinhu/vimconfig/screenshots/normal.png)

Plugin Integration
------------------

This `vimrc` configuration integrates several plugins, which are listed as below.

* Plugin management: [Vundle](https://github.com/VundleVim/Vundle.vim)
* Good-looking statusline: [Airline](https://github.com/vim-airline/vim-airline) and its corresponding [theme](https://github.com/vim-airline/vim-airline-themes)
* Git integration: [fugitive](https://github.com/tpope/vim-fugitive)
* File system browser: [NerdTree](https://github.com/scrooloose/nerdtree) ([Git Combined](https://github.com/Xuyuanp/nerdtree-git-plugin))
* Tag viewer: [Tagbar](https://github.com/majutsushi/tagbar) ([NerdTree Combined](https://github.com/pseewald/nerdtree-tagbar-combined))
* File search: [Ctrlp](https://github.com/ctrlpvim/ctrlp.vim)
* Match brackets: [delimitMate](https://github.com/Raimondi/delimitMate)
* Quick movement: [EasyMotion](https://github.com/easymotion/vim-easymotion)
* Highlight search: [Incsearch](https://github.com/haya14busa/incsearch.vim) ([EasyMotion Combined](https://github.com/haya14busa/incsearch-easymotion.vim))
* Indentation: [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides)
* Commenter: [NerdCommenter](https://github.com/scrooloose/nerdcommenter)
* Snippets: [Ultisnips](https://github.com/SirVer/ultisnips) and [Vim-snippets](https://github.com/honza/vim-snippets)
* Undo history browser: [UndoTree](https://github.com/mbbill/undotree)
* TAB for completion: [Supertab](https://github.com/ervandew/supertab)
* C/C++ header file and implementation file switch: [a.vim](https://github.com/vim-scripts/a.vim)

Installation
------------

1. `git clone` this repository into `~/.vim/`.
2. Make new directories named as `backup`, `bundle`, `swp`, `view` in `~/.vim/`.
3. Install [Vundle](https://github.com/VundleVim/Vundle.vim) Plugin and run `:PluginInstall` inside `vim`.
4. Install [powerline-fonts](https://github.com/powerline/fonts) and set the terminal font to your preference.
