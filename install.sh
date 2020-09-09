echo "Symlinks:"

ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/git/.gitignore_global ~/.gitignore_global
ln -s $(pwd)/editorconfig/.editorconfig ~/.editorconfig
ln -s $(pwd)/zsh/.zshrc ~/.zshrc


echo "Settings:"

echo "Git config"
git config --global core.excludesfile ~/.gitignore_global

echo "zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
source ~/.zshrc

echo "Zsh default shell"
chsh -s $(which zsh)


echo "Folders:"

echo "Code folder"
mkdir ~/Code

echo ".ssh folder"
mkdir ~/.ssh

echo "gpg-keys folder"
mkdir ~/.ssh/gpg-keys/