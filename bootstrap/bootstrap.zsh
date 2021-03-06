#/usr/bin/env zsh
sudo -v
sudo chsh -s /bin/zsh

# Install Antigen
mkdir -p $HOME/.zshbin
curl -L https://raw.githubusercontent.com/zsh-users/antigen/master/antigen.zsh > $HOME/.zshbin/antigen.zsh
source $HOME/.zshbin/antigen.zsh

# Install zshrc file
antigen bundle biguno/dotfiles
if [[ -f $HOME/.zshrc ]]; then
  mv $HOME/.zshrc $HOME/.zshrc.old
fi
ln -s $HOME/.antigen/repos/https-COLON--SLASH--SLASH-github.com-SLASH-biguno-SLASH-dotfiles.git/bootstrap/zshrc $HOME/.zshrc
