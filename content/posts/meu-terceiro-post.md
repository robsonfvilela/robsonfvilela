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

```yaml
[markup]
    [markup.goldmark.renderer]
      hardWraps = false
#      unsafe = false
      unsafe = true
      xhtml = false
```

<iframe width="560" height="315" src="https://www.youtube.com/embed/UFk90eSZwIw?si=bU-JM8Jh51CT6eRV" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>