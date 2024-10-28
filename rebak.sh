# git setup
git config --global init.defaultBranch main
git config --global color.ui auto
git config --global pull.rebase false
git config --global use.name diasbouk
git config --global use.mail boudksaid@gmail.com

# SSH generator
if [[-d ~/.ssh ]]; then
	echo 'SSH key already exists.'
else
	echo 'No SSH key found. Generating a new one ...'
	sleep 2
	ssh-keygen -t ed25519

# Creating bakap directory
mkdir ~/rebak
cd ~/rebak
#  Installing nvim
wget https://github.com/neovim/neovim/releases/latest/download/nvim-macos-x86_64.tar.gz
tar -xzf nvim-macos-x86_64.tar.gz
cd nvim-macos-x86_64
mkdir ~/.hbin
mv ./bin/nvim ~/.hbin

# Installing nvim config
if [[ -d  ~/.config/nvim ]]; then
	rm -rf ~/.config/nvim
fi

git https://github.com/diasbouk/NEOVIM-R7MA.git ~/.config/nvim

# Bash aliases
echo "alias vim='nvim'" >> ~/.zshrc
echo "alias vconf='cd ~/.config/nvim && vim'" >> ~/.zshrc
echo "alias so='source ~/.zsshrc'" >> ~/.zshrc
echo "alias c='clear'" >> ~/.zshrc
source ~/.zshrc
