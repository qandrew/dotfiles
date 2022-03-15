[ -f ~/.fzf.bash ] && source ~/.fzf.bash

if ! command -v fzf &> /dev/null
then
    echo "Installing fzf (fuzzy find)."
    git clone --depth 1 https://github.com/junegunn/fzf.git "$HOME/.fzf"
    "$HOME/.fzf/install"
else
    echo "fzf already installed"
fi

if ! command -v aws &> /dev/null
then
    echo "AWS cli tool not found. Please install the AWS cli v2 using the instructions found here https://docs.aws.amazon.com/cli/latest/userguide/install-cliv2-linux.html#cliv2-linux-install"
else
    echo "aws already installed"
fi

# git
echo "copying gitconfig"
cp .gitconfig ~/


# other tools
sudo snap install docker
sudo chmod 666 /var/run/docker.sock
sudo snap install tree
