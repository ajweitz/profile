#!/bin/bash

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
echo 'eval $(/opt/homebrew/bin/brew shellenv)' >> /Users/$USER/.zprofile
eval $(/opt/homebrew/bin/brew shellenv)
echo "$(curl -fsSL https://raw.githubusercontent.com/ajweitz/profile/HEAD/work-brews.txt)" | xargs -I {} brew install {}