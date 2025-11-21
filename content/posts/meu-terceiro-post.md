+++
title = "Meu Terceiro Post"
date = "2025-11-20T00:37:45-03:00"
#dateFormat = "2006-01-02" # This value can be configured for per-post date formatting
author = ""
authorTwitter = "" #do not include @
cover = ""
tags = ["", ""]
keywords = ["", ""]
description = ""
showFullContent = false
readingTime = false
hideComments = false
+++

<!--more-->

# Incorporar vídeo

Para que o Hugo exiba vídeo do Youtube embutido em um post, é necessário habilitar a opção "unsafe" no arquivo de configuração hugo.toml, como mostrado [aqui](https://gohugo.io/configuration/markup/).

[workflow.yaml](https://gist.githubusercontent.com/Varzil/4e4882331201fa8344692fd90b365ba9/raw/b74ba65546595f8f03844ef2dbfa676debda44b4/Workflow.yaml)

```yaml
[markup]
    [markup.goldmark.renderer]
      hardWraps = false
#      unsafe = false
      unsafe = true
      xhtml = false
```

<iframe width="560" height="315" src="https://www.youtube.com/embed/UFk90eSZwIw?si=bU-JM8Jh51CT6eRV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>


---

https://terminalroot.com.br/2021/07/crie-seu-site-no-github-com-hugo-escrito-em-go.html#google_vignette

Nesse vídeo instalamos e configuramos o HUGO um Static Site Generator escrito na Linguagem de Programação Go (do Google), além de criarmos um arquivo de DEPLOY com SHELL SCRIPT utilizando WORKFLOWS para serem gerenciados pelo ACTIONS do GitHub.

Assista ao Vídeo


Descobrir mais
Desenvolvimento
compilar
Linguagem de programação
Compiladores
Desenvolvimento de software
Compilador
Linguagem
Linguagem de Programação
linguagens de programação

Instalação

01. Dependências
Git e Go

sudo apt install git
sudo snap install go --classic # Ou: sudo apt install golang-go
go version
02. Construir o binário
mkdir $HOME/src
cd $HOME/src
git clone https://github.com/gohugoio/hugo.git
cd hugo
go install --tags extended
03. Instalação
sudo mv ~/go/bin/hugo /usr/local/bin/
hugo version
04. Pós instalação
Limpando

cd
sudo rm -rf go src
05. Crie um repositório com nome do seu usuário se não existir:
https://github.com/SEU_USUARIO/SEU_USUARIO onde ficará o código fonte do seu blog.
Se quiser ainda adicione um README.md customizado para aparecer como apresentação do seu perfil do GitHub como nesse artigo.

06. Crie também um repositório de nome https://github.com/SEU_USUARIO/SEU_USUARIO.github.io para ser o seu blog.
07. Clone somente o repositório SEU_USUARIO
git clone https://github.com/SEU_USUARIO/SEU_USUARIO
08. Gere seu site hugo dentro de SEU_USUARIO forçando;
hugo new site SEU_USUARIO --force
09. Adicione um tema como submódulo, encontre um tema aqui: https://themes.gohugo.io/:
git submodule add https://github.com/niklasbuschmann/contrast-hugo.git themes/contrast-hugo
Use como submódulo para não ter problemas futuros.

10. Configure seu config.toml na raiz de SEU_USUARIO com os seguintes dados:
baseURL precisa estar configurado para o seu blog online
languageCode o idioma do seu blog
Descobrir mais
Linguagem de programação
Compilador
compilar
Python
Linguagem de Programação
Desenvolvimento
Compiladores
programar
Desenvolvimento de software
linguagem de programação

title o título do seu blog
theme o nome do tema que você clonou
[permalink] como deseja que as url do seu blog apareça, saiba mais aqui
Exemplo:

baseURL = "https://SUA_URL/"
languageCode = "en-us"
 title = "My new blog made with Hugo: The Pinguim"
theme = "contrast-hugo"
[permalinks]
  posts = "/:filename/"
11. Verifique temporariamente seu site:
hugo server
E acesse o endereço: http://localhost:1313/, digite Ctrl + C para parar o servidor.

12. Crie e edite sua primeira postagem
hugo new posts/primeiro-post-exemplo.md
/home/user/SEU_USUARIO/content/posts/primeiro-post-exemplo.md
Exemplo de postagem, remova a linha draft: true:

---
 title: "Primeiro Post Exemplo"
date: 2021-07-07T00:01:00-03:00
---

## Lorem ipsum dolor sit amet
consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur.
> Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.

```cpp
#include <iostream>
int main( int argc , char ** argv ){
  std::cout << "Olá, Mundo!" << '\n';
  return 0;
}
```

+ Lorem ipsum dolor sit amet
+ consectetur adipisicing elit
+ sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
+ Ut enim ad minim veniam, quis nostrud exercitation ullamco
13. Teste para ver se está tudo funcionando normalmente
hugo server
14. Adicione seu https://github.com/SEU_USUARIO/SEU_USUARIO.github.io como submódulo e de nome public
git submodule add https://github.com/SEU_USUARIO/SEU_USUARIO.github.io public
Atenção ao nome da branch, a master não é mais a default e sim a main. Saiba mais aqui.

15. Construa seu site estático rodando o comando hugo
hugo
16. Entre no diretório public/ e adicione, commit e suba seu site:
cd public
git add .
git commit -m "first deploy"
git push origin main
17. Acesse: https://SEU_USUARIO.github.io/ e veja se está tudo certo.
Descobrir mais
Compiladores
Linguagem
Linguagem de Programação
Compilador
Linguagem de programação
linguagens de programação

18. Utilizando Workflow para Actions e deploy
Crie um diretório e um subdiretório na raiz de SEU_USUARIO e dentro deles um arquivo de nome gh-pages.yml e insira esse conteúdo ao mesmo

mkdir -p .github/workflows
vim .github/workflows/gh-pages.yml
19. Adicione, commit e suba todos os arquivos
git add .
git commit -m "my source blog"
git push origin main
20. Monitore o Workflow
Descobrir mais
compilar
linguagens de programação
Linguagem
programar
Desenvolvimento de software
Python
programação
Desenvolvimento
linguagem de programação
Programação
Vá no Actions do GitHub: https://github.com/SEU_USUARIO/SEU_USUARIO/actions e veja se o deploy foi gerado corretamente.

21. Automatizando tudo para novas postagens
Crie um arquivo de nome vim deploy.sh e insira esse conteúdo nele:

#!/usr/bin/env bash
hugo
commit="No comment for this commit"
[[ ! -z "${1}" ]] && commit="${1}"
cd public
git add -A
git commit -m "${commit}"
git push origin main

cd ..
git add -A
git commit -m "${commit}"
git push origin main
22. Dê permissão de execução:
chmod +x deploy.sh
23. Crie um postagem nova:
hugo new posts/meu-segundo-post.md
E preencha seu artigo como desejar

24. Publique
./deploy.sh "Minha nova postagem"
25. Acompanhe se deu certo
Descobrir mais
programar
Python
Linguagem
Desenvolvimento de software
Programação
Linguagem de programação
compiladores
Compilador
Linguagem de Programação
linguagem de programação
Em https://github.com/SEU_USUARIO/SEU_USUARIO/actions e veja o novo artigo no seu site: https://SEU_USUARIO.github.io/.

26. Configurações
Se você criar uma nova postagem ou editar a que já existe, verificará que o Hugo ignorará suas tags HTML, por exemplo, um vídeo incorporado.

<iframe width="915" height="515" src="https://www.youtube.com/embed/SDtFO6ZZtMk" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
Se formos ver o código fonte da página, aparecerá somente essa linha no lugar do nosso HTML: <!-- raw HTML omitted -->

Descobrir mais
programação
compiladores
linguagens de programação
Compilador
Compiladores
Python
linguagem de programação
Linguagem de programação
Linguagem de Programação
Desenvolvimento
Para resolver isso: adicione esse toml ao seu config.toml e pesquise(Vim: /unsafe) a opçao: unsafe deixe como true .

Em outros vídeos ou postagens veremos mais dicas de Hugo, como criar páginas, templates próprios, inserir campo de comentários e outras coisas!

Acompanhe as novidades em: https://terminalroot.com.br/newsletter.

