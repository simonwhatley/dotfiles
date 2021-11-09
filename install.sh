#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. utils.sh

info "Prompting for sudo password..."

if sudo -v; then
  # Keep-alive: update existing `sudo` time stamp until `setup.sh` has finished
  while true; do sudo -n true; sleep 60; kill -0 "$$" || exit; done 2>/dev/null &
  success "Sudo credentials updated."
else
  error "Failed to obtain sudo credentials."
fi

info "Installing Xcode command line tools..."

if xcode-select --print-path &>/dev/null; then
  success "Xcode command line tools already installed."
elif xcode-select --install &>/dev/null; then
  success "Finished installing Xcode command line tools."
else
  error "Failed to install Xcode command line tools."
fi

# Package control must be executed first in order for the rest to work
./homebrew/setup.sh

find * -name "setup.sh" -not -wholename "homebrew*" | while read setup; do
  ./$setup
done

success "Finished installing Dotfiles"
