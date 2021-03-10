# Dotfiles

## confible

see [confible](https://github.com/sj14/confible)

```bash
confible ./confible/*.toml
```

## oh my zsh

[syntax-hightlight](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md#oh-my-zsh)

## kubectl zsh autocomplete

```bash
source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc # add autocomplete permanently to your zsh shell
```
