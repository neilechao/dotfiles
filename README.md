# Dotfiles!
This is a mix of my personal dotfiles (sorta) and a note to my friends at Lacework about how to use Dotfiles with _devspaces_.

# What are dotfiles?
In the context of _devspaces_, [Coder docs on dotfiles](https://coder.com/docs/coder/latest/workspaces/personalization) walk you through it at a high level. Here's the key extract: "At startup, Coder clones your dotfiles repository into ~/dotfiles. If there's an executable ~/dotfiles/install.sh present, Coder executes it. If not, all dot-prefixed files are symlinked to your home directory."

You can get pretty deep: [Dotfiles Tutorials](http://dotfiles.github.io/tutorials/).

# Note about login shell
SSH logins to Coder instances are interactive, non-login shells ([see more](https://askubuntu.com/questions/438150/why-are-scripts-in-etc-profile-d-being-ignored-system-wide-bash-aliases/438170#438170)).
