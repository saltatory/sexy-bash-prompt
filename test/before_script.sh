#!/usr/bin/env bash

# If were are not using `git@1.8`
if [[ "$GIT_PPA" != "ppa:git-core/v1.8" ]]; then
  # Remove `git-core@1.8` PPA
  sudo apt-get install -y ppa-purge
  sudo ppa-purge -y "ppa:git-core/v1.8"

  # If we want to use a bleeding edge one
  if [[ "$GIT_PPA" != "1.7.9.5-1" ]]; then
    sudo add-apt-repository -y "$GIT_PPA"
  fi
  # Otherwise, use the Ubuntu one by default
fi
