# dotfiles


## Installation

On macOS

### Install Xcode command line tools

In terminal, run the following command:

```
sudo softwareupdate -i -a
xcode-select --install
```

The Xcode Command Line Tools includes `git` and `make`.

### Install Homebrew

I use [Homebrew](https://brew.sh/) to install all the software I frequently use.

In terminal, run the following command to install Homebrew:

```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Clone the dotfiles repository

This dotfiles repository contains all the configuration I need for my setup.

Clone this repository to the desired location using the following command:

```
git clone https://github.com/simonwhatley/dotfiles.git ~/dotfiles
```

### Run the installation script

Run the `install.sh` script, or run the `setup.sh` scripts in each sub-folder if you don’t need everything.

```
sh install.sh
```
