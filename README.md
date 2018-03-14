# FAVOURITES.VIM

This plugin helps us finding sepecific files in favourite or bookmarked directories.

# Dependencies

You should add FZF installed. Follow the instructions [here](https://github.com/junegunn/fzf).

You should also have [fzf-vim](https://github.com/junegunn/fzf.vim) plugin installed.

# Installation

If you use [vim-plug](https://github.com/junegunn/vim-plug), add this line to your list of plugins:

```
Plug 'tiagoinacio/favourites.vim'
```

And then:

```
:PlugInstall
```

This plugin relies on a favourites / bookmark file which lists all the favourites directories.

If you use `ZSH`, just source the `favourites.zsh` file from your `.zshrc`.

```
echo >> "source ~/.vim/plugged/favourites.vim/plugin/favourites.zsh"
```

# Usage

First we need to set our favourite directories:

```
favorites my_top_directory max_depth
```

For example:

```
favorites ~/Work 3
```

This will list all directories under `~/Work` with a maximum depth of 3 subdirectories in the tree.

After this, we will have a `~/.fzf_favorites` file.

Then just open vim, and run the commands:

`<leader>fa` - open all files from directory (including non git files)
`<leader>fg` - open all files from directory (only git files)
`<leader>fp` - change directory to a specific favorite directory
