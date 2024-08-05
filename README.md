# My personal dotfiles


## Install

Clone onto your laptop:

    git clone git@github.com:jadrzy/.dotfiles.git ~/.dotfiles

Restart bash.

## Usage
Use keyword `config` as keyword `git` in a normal repository. It is possible due to an alias in `.bashrc` file.

Example:

    config status
    config add .bash_profile
    config commit -m "Add .bash_profile"
    config add .bashrc
    config commit -m "Add .bashrc"
    config push
