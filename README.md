
[This is a fork of holmans dotfiles.] (https://github.com/holman/dotfiles/).

Start with this::
	
	wget -O - https://raw.github.com/fritzvd/dotfiles/master/install.sh | bash

dotfiles
=======

These are my system preferences. I thought it best to fork someone else's and build on top of that. It's a work in progress as my preferences always seem to change.

Some core elements you might enjoy are:
 
  * install script setting up all the basics (git-core, vim, vagrant, lxc, clone this repo etc)
  * vim with vundle and vimrc
  * xfce terminal with solarized light scheme
  * bashrc with git highlighting
  * some stale stuff I don't use like zsh preferences etc.
  

## components

There's a few special files in the hierarchy.

- **bin/**: Anything in `bin/` will get added to your `$PATH` and be made
  available everywhere.
- **topic/\*.zsh**: Any files ending in `.zsh` get loaded into your
  environment.
- **topic/path.zsh**: Any file named `path.zsh` is loaded first and is
  expected to setup `$PATH` or similar.
- **topic/completion.zsh**: Any file named `completion.zsh` is loaded
  last and is expected to setup autocomplete.
- **topic/\*.symlink**: Any files ending in `*.symlink` get symlinked into
  your `$HOME`. This is so you can keep all of those versioned in your dotfiles
  but still keep those autoloaded files in your home directory. These get
  symlinked in when you run `script/bootstrap`.

## bugs

I want this to work for everyone; that means when you clone it down it should
work for you even though you may not have `rbenv` installed, for example. That
said, I do use this as *my* dotfiles, so there's a good chance I may break
something if I forget to make a check for a dependency.

If you're brand-new to the project and run into any blockers, please
[open an issue](https://github.com/holman/dotfiles/issues) on this repository
and I'd love to get it fixed for you!

