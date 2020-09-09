echo "Symlinks:"

ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/git/.gitignore_global ~/.gitignore_global
ln -s $(pwd)/editorconfig/.editorconfig ~/.editorconfig

echo "Settings:"

echo "Git config"
git config --global core.excludesfile ~/.gitignore_global

echo "zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh


echo "Creating folders..."

echo "Code folder"
mkdir ~/Code

echo ".ssh folder"
mkdir ~/.ssh

echo "gpg-keys folder"
mkdir ~/.ssh/gpg-keys/