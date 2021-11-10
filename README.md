# dotfiles

This repository contains everything to set up my MacBook Pro.

## Installation

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

## Kudos

Thanks goes to the following people and organisations for sharing their `dotfiles`:

- [Adam Silver](https://github.com/adamsilver/dotfiles)
- [Lars Kappert](https://github.com/webpro/dotfiles)
- [Mathias Bynens](https://github.com/mathiasbynens/dotfiles)
- [Michael Friedrich](https://gitlab.com/dnsmichi/dotfiles)
- [Rosco Kalis](https://github.com/rkalis/dotfiles)
- [Thoughtbot](https://github.com/thoughtbot/dotfiles)

## Support

This repository is maintained by Simon Whatley. If you’ve got a question or need support you can:

* Email support@humanedesign.co putting the repository name in the subject line.
* [View known issues on GitHub](https://github.com/simonwhatley/dotfiles/issues).

## Contributing

If you’ve got an idea or suggestion you can:

* Email contribute@humanedesign.co putting the repository name in the subject line.
* [Create a GitHub issue](https://github.com/simonwhatley/dotfiles/issues).

## Licence

Unless otherwise stated, this codebase is released under the [MIT License](https://github.com/simonwhatley/dotfiles/blob/master/LICENSE). This covers both the codebase and any sample code in the documentation.
