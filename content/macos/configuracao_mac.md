---
title: Configurações
# date: 2025-12-12
draft: false
tags: [mac]
---

<!--more-->

> As configurações abaixo são para o **MacOs Monterey** (12.7.6), no **MacBook Pro (Retina, 13-inch, Early 2015)**.



<!-- ----------------------------------------------------->
<!-- DICAS ----------------------------------------------->
## 1. Dicas

### Criar Atalho para Abrir Aplicativos Específicos

[YouTube](https://www.youtube.com/watch?v=YRBsHYEn_7Q)


## Configurações

### Link Simbólico

```sh
ln -s "<origmem>" "<destino>"
```
- `-s`: soft link: vários links diferentes que apontam para um mesmo arquivo.
- Tem número de inode diferente do arquivo original. Use `ls -li` para mostrar o inode.
- Se apagar o arquivo original, o soft link fica quebrado.

```sh
ln "<origmem>" "<destino>"
```
- Sem o `-s`, cria um hard link. Duas entradas para o mesmo arquivo.
- Tem número de inode igual ao do arquivo original.
- Se apagar o arquvio original, o hard link continua funcionando, porque, na prática, são arquivos diferentes.









<!--
### ⌨️ Multipass
[How to Run Ubuntu on macOS Like WSL (WSL-Style Experience)](https://dev.to/ryfazrin/how-to-run-ubuntu-on-macos-like-wsl-wsl-style-experience-4cd4)
```sh
brew install --cask multipass
```

**Executar**
```sh
multipass launch --name ubuntu --mem 2G --disk 10G
multipass shell ubuntu
```

**Montar diretório do MacOS no Ubuntu**
```sh
multipass mount ~/Projects ubuntu:/home/ubuntu/Projects
```

### ⌨️ Colima
[abiosoft / colima](https://github.com/abiosoft/colima)

```sh
brew install colima
```

```sh
sudo port install colima
```

```sh
nix-env -iA nixpkgs.colima
```

```sh
mise use -g colima@latest
```

### ⌨️ Docker

Instalar
```sh
brew install --cask docker
```
Rodar
```sh
open /Applications/Docker.app
```
Baixar Ubuntu e rodar
```sh
docker run -it ubuntu bash
```

### ⌨️ QEMU

```sh
brew install qemu
```
```sh
sudo port install qemu
```
```sh

```
```sh

```
```sh

```
```sh

```
```sh

```
```sh

```
```sh

```

### Distrobox
[GitHub](https://gist.github.com/gianlucamazza/f9b57d6796a97981908f7c2bbda706fc)

-->