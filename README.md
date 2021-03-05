# TODO

# oh my zsh

install syntax-hightlight
https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh

no dups in zsh history 
https://github.com/mattjj/my-oh-my-zsh/blob/master/history.zsh
https://leetschau.github.io/remove-duplicate-zsh-history.html

~/.zshrc
```bash
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

# add time
PROMPT='%{$fg[yellow]%} %D{%L:%M:%S} '$PROMPT

TMOUT=1

TRAPALRM() {
    zle reset-prompt
}
```

# remember ssh password (~/.ssh/config)
```bash
Host *
   AddKeysToAgent yes
   UseKeychain yes     
```

# direnv
brew install direnv

## add to .zshrc:

eval "$(direnv hook zsh)"

# fzf

```bash
brew install fzf
/usr/local/opt/fzf/install
```

# git
```bash
git config --global user.name "Simon Jürgensmeyer"
git config --global user.email "simon.juergensmeyer@gmail.com"
```


# kubectl zsh autocomplete

```bash
source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc # add autocomplete permanently to your zsh shell
```

# mac apps
```bash
brew install maccy macpass numi background-music menumeters rectangle gpg-suite-no-mail dteoh-devdocs
```

# git commit signing with gpg
```bash
git config --global user.signingkey !!!KEYID!!!
git config --global commit.gpgSign true

#git config --global pull.rebase true
git config --global rebase.autoStash true
git config --global pull.ff only
```

# Mouse behaviour
Install MouseFix: https://mousefix.org/ or SensibleSiteButtons: https://sensible-side-buttons.archagon.net/

# Disable dock delay

```bash
defaults write com.apple.Dock autohide-delay -float 0 && killall Dock
# (enable again: defaults delete com.apple.Dock autohide-delay && killall Dock)
```



# .vimrc
```text
set number
syntax on
set ruler
filetype indent plugin on
```

# Add to ublock origin filter list of https://www.privacy-handbuch.de/handbuch_21g.htm
```

