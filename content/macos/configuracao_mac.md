---
title: Configuração do MacOS
# date: 2025-12-02
draft: false
tags: [mac]
---

<!--more-->

> As configurações abaixo são para o **MacOs Monterey** (12.7.6), no **MacBook Pro (Retina, 13-inch, Early 2015)**.

## 1. Homebrew, MacPorts e Nix

### Instalar HOMEBREW
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Atualizar Homebrew**
```sh
brew install update && brew install upgrade
```

### Instalar MacPorts (Monterey)
```sh
https://github.com/macports/macports-base/releases/download/v2.11.6/MacPorts-2.11.6-12-Monterey.pkg
```

### Instalar NIX
```sh
curl -L https://nixos.org/nix/install | sh
```

### Instlar Git
```sh
brew install git
```

```sh
nix-env -iA nixpkgs.git
```

### Instalar Kitty
```sh
brew install --cask kitty
```

### Instalar ZSH
```sh
brew install zsh
```

**Definir ZSH como Shell Padrão**

_Em Mac M1:_
```sh
chsh -s $(which zsh)
```

_Em Mac Intel:_
```sh
chsh -s /usr/local/bin/zsh
```

### Instalar Oh My ZSH
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

### Instalar Tema Powerlevel 10 K
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
### 

```sh
cd powerlevel10k
```

```sh
./prompt_powerlevel9k_setup
```

### Instlar NeoVim
```sh
brew install neovim
```
### Instalar LazyVim

_Make a backup of your current Neovim files:_
```sh
mv ~/.config/nvim{,.bak}
```

_optional but recommended_
```sh
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}
```

_Clone the starter_
```sh
git clone https://github.com/LazyVim/starter ~/.config/nvim
```

_Remove the .git folder, so you can add it to your own repo later_
```sh
rm -rf ~/.config/nvim/.git
```

_Start Neovim!_
```sh
nvim
```
Rode `:LazyHealth` depois da instalação.


### Instalar btop
```sh
brew install btop
```

```sh
nix-env -iA nixpkgs.btop
```

### Instalar bat
```sh
brew install bat
```

### Instalar fzf
```sh
brew install fzf
```

```sh
nix-env -iA nixpkgs.fzf
```

### Instalar yazi
```sh
brew install yazi
```

### Instalar Fastfetch
```sh
brew install fastfetch
```

```sh
nix-shell -p fastfetch
```

```sh
sudo port install fastfetch
```

### Instalar Hugo
```sh
brew install hugo
```

```sh
nix-shell -p hugo
```

```sh
sudo port install hugo
```

### Instalar Visual Studio Code
```sh
brew install --cask visual-studio-code
```

### Instalar IntelliJ CE
```sh
brew install --cask intellij-idea-ce
```

## 2. Outros

### Instalar Charge Limiter
```sh
https://github.com/itsjoshpark/charge-limiter/releases/tag/v1.5.1
```

### Instala AppCleaner
```sh
https://freemacsoft.net/appcleaner/#google_vignette
```