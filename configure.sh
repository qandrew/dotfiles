[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if ! command -v fzf &> /dev/null
then
    echo "Installing fzf (fuzzy find)."
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
    "$HOME/.fzf/install"
else
    echo "fzf already installed"
fi

# git
echo "copying gitconfig"
cp .gitconfig ~/

# install brew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# other tools
brew install tree
