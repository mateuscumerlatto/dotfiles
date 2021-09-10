echo ">>> Symlinks:"

ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/git/.gitignore_global ~/.gitignore_global
ln -s $(pwd)/editorconfig/.editorconfig ~/.editorconfig
ln -s $(pwd)/zsh/.zshrc ~/.zshrc
ln -s $(pwd)/zsh/.profile ~/.profile


echo ">>> Settings:"

echo "> Git config"
git config --global core.excludesfile ~/.gitignore_global

echo "> Oh My ZSH"
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

echo "> zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions

echo "> pyenv"
curl https://pyenv.run | bash
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
exec $SHELL

source ~/.zshrc

echo "> Zsh default shell"
chsh -s $(which zsh)


echo ">>> Folders:"

echo "> Code folder"
mkdir ~/Code

echo "> .ssh folder"
mkdir ~/.ssh

echo "> gpg-keys folder"
mkdir ~/.ssh/gpg-keys/
