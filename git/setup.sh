#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../utils.sh

SOURCE="$(realpath -m .)"
DESTINATION="$(realpath -m ~)"

info "Configuraing git..."

find . -name ".git*" | while read fn; do
  fn=$(basename $fn)
  symlink "$SOURCE/$fn" "$DESTINATION/$fn"
done

success "Finished configuring git."
