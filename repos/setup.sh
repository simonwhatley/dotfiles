#! /usr/bin/env sh

DIR=$(dirname "$0")
cd "$DIR"

. ../utils.sh

sudo -v

COMMENT=\#*
REPO_PATH=$(realpath -m ~/Projects)

find * -name "*.list" | while read fn; do
  folder="${fn%.*}"

  info "Cloning $folder repositories..."

  subStepInfo "Creating $folder folder..."
  mkdir -p "$REPO_PATH/$folder"
  while read repo; do
    if [[ $repo == $COMMENT ]];
    then continue; else
      pushd "$REPO_PATH/$folder" &> /dev/null
      git clone $repo &> /dev/null
      if [[ $? -eq 128 ]]; then
        subStepSuccess "$repo already exists."
      elif [[ $? -eq 0 ]]; then
        subStepSuccess "Cloned $repo."
      else
        subStepError "Failed to clone $repo."
      fi
      popd &> /dev/null
    fi
  done < "$fn"
  success "Finished cloning $folder repositories."
done
