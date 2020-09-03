echo "Symlinks:"

ln -s $(pwd)/git/.gitconfig ~/.gitconfig
ln -s $(pwd)/git/.gitignore_global ~/.gitignore_global
ln -s $(pwd)/editorconfig/.editorconfig ~/.editorconfig

echo "Homebrew"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo "Chrome"
brew cask install google-chrome

echo "VS Code"
brew cask install visual-studio-code

echo "Sublime Text"
brew cask install sublime-text

echo "iTerm"
brew cask install iterm2

echo "Github CLI"
brew install github/gh/gh

echo "Configs"

echo "Git config"
git config --global core.excludesfile ~/.gitignore_global

echo "zsh-autosuggestions"
git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh

echo "creating Code folder"
mkdir ~/Code
