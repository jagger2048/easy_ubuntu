#ZSH config
Install ZSH and oh-my-zsh
Pre-requirement:
git
lua

```
sudo apt install lua5.3
sudo apt-get install zsh
sh -c "$(wget -O- https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

then copy .zshrc to ~/.zhsrc
```
cp .zshrc ~/.zshrc
# install zinit
bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"

source ~/.zshrc
```


