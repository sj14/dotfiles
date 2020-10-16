# TODO: oh my zsh

```bash
# no dups in zsh history 
# https://github.com/mattjj/my-oh-my-zsh/blob/master/history.zsh
# https://leetschau.github.io/remove-duplicate-zsh-history.html
# ~/.zshrc
setopt EXTENDED_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt HIST_IGNORE_SPACE
setopt HIST_FIND_NO_DUPS
setopt HIST_SAVE_NO_DUPS
setopt HIST_BEEP
setopt SHARE_HISTORY             # Share history between all sessions.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt BANG_HIST                 # Treat the '!' character specially during expansion.

# commands that start with a space are not saved in the history
HISTCONTROL=ignorespace

# GOBIN in .zshrc
export PATH=$PATH:/$HOME/go/bin

# remember ssh password (~/.ssh/config)
Host *
   AddKeysToAgent yes
   UseKeychain yes     

# direnv
brew install direnv
# add to .zshrc:
eval "$(direnv hook zsh)"

# fzf
brew install fzf
/usr/local/opt/fzf/install

# git
git config --global user.name "Simon Jürgensmeyer"
git config --global user.email "simon.juergensmeyer@gmail.com"

# hosts (https://github.com/StevenBlack/hosts)
git clone https://github.com/StevenBlack/hosts.git
cd hosts
pip3 install --user -r requirements.txt
python3 testUpdateHostsFile.py
python3 updateHostsFile.py --auto --replace --backup --flush-dns-cache

# kubectl zsh autocomplete
source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc # add autocomplete permanently to your zsh shell

# apps
brew cask install maccy macpass numi background-music menumeters rectangle gpg-suite-no-mail

# TODO: git commit signing with gpg
git config --global user.signingkey !!!KEYID!!!
git config --global commit.gpgSign true

git config --global pull.rebase true
git config --global rebase.autoStash true

# Mouse behaviour
# Install MouseFix: https://mousefix.org/ or SensibleSiteButtons: https://sensible-side-buttons.archagon.net/
```

# .vimrc
set number
syntax on
set ruler
filetype indent plugin on
