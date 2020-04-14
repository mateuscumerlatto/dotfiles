echo "Symlinks:"

ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/git/.gitignore_global ~/.gitignore_global

echo "Homebrew:"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Git Ignore:"
git config --global core.excludesfile ~/.gitignore_global
