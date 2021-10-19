# Dotfiles

## confible

see [confible](https://github.com/sj14/confible)

```bash
confible ./confible/*.toml
```

## kubectl zsh autocomplete

```bash
source <(kubectl completion zsh)  # setup autocomplete in zsh into the current shell
echo "if [ $commands[kubectl] ]; then source <(kubectl completion zsh); fi" >> ~/.zshrc # add autocomplete permanently to your zsh shell
```
