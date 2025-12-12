---
title: Instalação de App
# date: 2025-12-02
draft: false
tags: [mac]
---

<!--more-->

> As configurações abaixo são para o **MacOs Monterey** (12.7.6), no **MacBook Pro (Retina, 13-inch, Early 2015)**.



<!-- ----------------------------------------------------->
<!-- BREW ETC. ------------------------------------------->
## 1. Gerenciadores via Terminal

### Homebrew
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

**Atualizar Homebrew**
```sh
brew install update && brew install upgrade
```

### MacPorts (Monterey)
```sh
https://github.com/macports/macports-base/releases/download/v2.11.6/MacPorts-2.11.6-12-Monterey.pkg
```

### NIX
```sh
curl -L https://nixos.org/nix/install | sh
```

```sh
sh <(curl -L https://nixos.org/nix/install)
```



<!-- ----------------------------------------------------->
<!-- TERMINAL -------------------------------------------->
## 2. Aplicativos via Terminal

### bat
```sh
sudo port install bat
```

```sh
brew install bat
```

### btop
```sh
brew install btop
```

```sh
nix-env -iA nixpkgs.btop
```

```sh
sudo port install bat
```

### fastfetch
```sh
brew install fastfetch
```

```sh
nix-shell -p fastfetch
```

```sh
sudo port install fastfetch
```

### fzf
```sh
brew install fzf
```

```sh
nix-env -iA nixpkgs.fzf
```

### git
```sh
brew install git
```

```sh
nix-env -iA nixpkgs.git
```

### hugo
```sh
brew install hugo
```

```sh
nix-shell -p hugo
```

```sh
sudo port install hugo
```

### NeoVim
```sh
brew install neovim
```

```sh
sudo port install neovim
```

#### Instalar LazyVim

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

### skhd (atalhos presonalizados)
```
brew install koekeishiya/formulae/skhd
skhd --start-service
```

### yazi
```sh
brew install yazi
```

```sh
sudo port install yazi
```

*Yazi não mostra miniaturas de PDF:*

1º Instalar o `poppler`.
```sh
sudo port install poppler
```

```sh
brew install poppler
```

### zsh
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

**Instalar Plugin `Autossuggestions`**
```sh
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
```

_No .zshrc:_
```sh
plugins=(git zsh-autosuggestions)
```

**Instalar o Plugin `ZSH Completions`**
```sh
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-completions
```

_No .zshrc:_
```sh
plugins=(git zsh-completions)
```

**Instalar o Plugin `Syntaz Highlight`**
```sh
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git \
  ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
```

_No .zshrc:_ \*
```sh
plugins=(zsh-syntax-highlighting)
```
\* zsh-syntax-highlighting deve ser o ÚLTIMO plugin da lista, porque ele precisa ser carregado depois de todos os outros.

#### Instalar Oh My ZSH
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Instalar Tema Powerlevel 10 K
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
```

```sh
cd powerlevel10k
```

```sh
./prompt_powerlevel9k_setup
```

_No .zshrc:_
```sh
ZSH_THEME=powerlevel10k/powerlevel10k
```

```sh
p10k configure
```



<!-- ----------------------------------------------------->
<!-- APLICATIVOS GRÁFICOS -------------------------------->
## 3. Aplicativos Gráficos

### Calibre
```sh
brew install --cask calibre
```

### CotEditor
```sh
brew install --cask coteditor
```
**Temas para CotEditor**
[GitHub](https://github.com/naotaka/CotEditor-themes?tab=readme-ov-file)


### IntelliJ CE
```sh
brew install --cask intellij-idea-ce
```

### KeePassXC
```sh
sudo port install KeePassXC
```

### Kitty
```sh
brew install --cask kitty
```

### LocalSend
```sh
brew install --cask localsend
````

### Obsidian
```sh
brew install --cask obsidian
```

### Ungoogled Chromium 

```sh
brew install --cask ungoogled-chromium
```

_Acesse as informações do aplicativo:_ 
```
chrome://ungoogled-first-run/
```

### UTM (Máquina Virtual)
```sh

```

### Visual Studio Code
```sh
brew install --cask visual-studio-code
```



<!-- ----------------------------------------------------->
<!-- DMG e APPSTORE -------------------------------------->
## 4. AppStore e DMG

### AffinityStudio
```sh

```

### AppCleaner

[Site](https://freemacsoft.net/appcleaner/#google_vignette)


### Charge Limiter
[GitHub](https://github.com/itsjoshpark/charge-limiter/releases/tag/v1.5.1)


### Google Drive

[App Store](https://dl.google.com/drive-file-stream/GoogleDrive.dmg)

### IINA (Player de vídeo)

[Site](https://iina.io)

### MarginNote 4
[App Store](https://apps.apple.com/br/app/marginnote-4-ai-notes-mindmap/id1531657269)

### WhatsApp
[App Store](https://apps.apple.com/br/app/whatsapp-messenger/id310633997)
