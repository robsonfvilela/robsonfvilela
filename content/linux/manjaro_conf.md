---
title: Configuração do Manjaro
# date: 2025-12-02
draft: false
tags: [Linux]
---

<!--more-->

> As configurações abaixo são para o **Manjaro Linux**.

## Flatpak

### Instalar Flatpak

```sh
sudo apt install flatpak
```

### Instalar o plugin GNOME Software Flatpak
- Permite instalar apps sem precisar da linha de comando.
```sh
sudo apt install gnome-software-plugin-flatpak
```

### Adicione o repositório Flathub
```sh
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo
```
Reinicie o sistema para concluir a configuração

<!-- APLICATIVOS FLATPAK -->

## Aplicativos Flatpak

### Adobe Reader
```sh
flatpak install flathub com.adobe.Reader
```

```sh
flatpak run com.adobe.Reader
```

### Gerenciador de Tarefas
```sh
flatpak install flathub io.missioncenter.MissionCenter
```

```sh
flatpak run io.missioncenter.MissionCenter
```

### Gnome Extensions
```sh
flatpak install flathub org.gnome.Extensions
```

```sh
flatpak run org.gnome.Extensions
```

### Heroic
```sh
flatpak install flathub com.heroicgameslauncher.hgl
```

```sh
flatpak run com.heroicgameslauncher.hgl
```

### Inkscape
```sh
flatpak install flathub org.inkscape.Inkscape
```

```sh
flatpak run org.inkscape.Inkscape
```

### Warehouse (Gerenciador de Flatpak)
```sh
flatpak install flathub io.github.flattool.Warehouse
```

```sh
flatpak run io.github.flattool.Warehouse
```

### Gear Lever (Gerenciador de AppImage)
```sh
flatpak install flathub it.mijorus.gearlever
````

```sh
flatpak run it.mijorus.gearlever
```

### IntelliJ IDEA CE
```sh
flatpak install flathub com.jetbrains.IntelliJ-IDEA-Community
```

```sh
flatpak run com.jetbrains.IntelliJ-IDEA-Community
```

### KeePassXC
```sh
flatpak install flathub org.keepassxc.KeePassXC
```

```sh
flatpak run org.keepassxc.KeePassXC
```

### LibreOffice
```sh
flatpak install flathub org.libreoffice.LibreOffice
```

```sh
flatpak run org.libreoffice.LibreOffice
```

### LocalSend
```sh
flatpak install flathub org.localsend.localsend_app
```

```sh
flatpak run org.localsend.localsend_app
```

### Minecraft
```sh
flatpak install flathub com.mojang.Minecraft
```

```sh
flatpak run com.mojang.Minecraft
```

### Minecraft Bedrock Launcher
```sh
flatpak install flathub io.mrarm.mcpelauncher
```

```sh
flatpak run io.mrarm.mcpelauncher
```

### Obsidian
```sh
flatpak install flathub md.obsidian.Obsidian
```

```sh
flatpak run md.obsidian.Obsidian
```

### RetroArch
```sh
flatpak install flathub org.libretro.RetroArch
```

```sh
flatpak run org.libretro.RetroArch
```

### Steam
```sh
flatpak install flathub com.valvesoftware.Steam
```

```sh
flatpak run com.valvesoftware.Steam
```

### Visual Studio Code
```sh
flatpak install flathub com.visualstudio.code
```

```sh
flatpak run com.visualstudio.code
```

### VLC

```sh
flatpak install flathub org.videolan.VLC
```

```sh
flatpak run org.videolan.VLC
```



<!-- OUTROS APLICATIVOS -->

## Outros Aplicativos

### Kitty
```sh
sudo pacman -S kitty
```




<!-- APLICATIVOS DE LINHA DE COMANDO -->

## Linha de Comando

### bat
```sh
pacma

### btop
```sh
sudo pacman -S btop
```

n -S bat
```

### Fastfetch
```sh
sudo pacman -S fastfetch
```

### FZF
```sh
sudo pacman -S fzf
```
### Git
```sh
sudo pacman -S git
```

### Hugo
```sh
sudo pacman -S hugo
```

### NeoVim
```sh
sudo pacman -S neovim
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

### Yazi
```sh
sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick
```

### ZSH
```sh
sudo pacman -S zsh
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

#### Instalar Oh My ZSH
```sh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
```

#### Instalar Tema Powerlevel 10 K
```sh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k"
### 

```sh
cd powerlevel10k
```

```sh
./prompt_powerlevel9k_setup
```
