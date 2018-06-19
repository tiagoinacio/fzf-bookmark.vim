# FZF-BOOKMARK.vim

This plugin helps us finding sepecific files in favourite or bookmarked directories.

# Dependencies

You should add FZF installed. Follow the instructions [here](https://github.com/junegunn/fzf).

You should also have [fzf-vim](https://github.com/junegunn/fzf.vim) plugin installed.

You should install the fzf-bookmarks plugin [here](https://github.com/tiagoinacio/fzf-bookmark).

# Installation

If you use [vim-plug](https://github.com/junegunn/vim-plug), add this line to your list of plugins:

```
Plug 'tiagoinacio/fzf-bookmark.vim'
```

And then:

```
:PlugInstall
```

If you want to specify the directories that you want exactly, instead of using that helper script, you can create a file with the name `.fzf_bookmarks` and put it under your home directory.

Then add the favorites diretories listed line by line:

```
~/Work/
~/Another-Directory/
/etc/bin
~/.vim
```

# Usage

Just open vim, and run the commands:

`<leader>fa` - open all files from directory (including non git files)

`<leader>fg` - open all files from directory (only git files)

`<leader>fp` - change directory to a specific bookmarked directory

## TODO

[ ] - improve documentation

[ ] - add configuration to choose the bookmarked file path and name

[ ] - add functions to add directories, remove directories or change directories from file

[ ] - add function to remove file

[ ] - add custom commands to align with the mappings