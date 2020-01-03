echo "Symlinks:"

ln -s $(pwd)/git/.gitconfig ~/.gitconfig

echo "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
