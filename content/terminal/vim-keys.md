---
title: Vim Keys
# date: 2024-06-10
tags: [terminal, vim]
---

<!--more-->

<!-- {{ .TableOfContents }} -->

## `y` Copiar 

### Objetos de texto
(copia a palavra ou região onde o cursor está)

**Copia linha inteira:** `yy` ou `Y`

**Copia apenas o conteúdo da palavra onde o cursor está:** `yiw`
```sh
    y = yank (copiar)
    i = inside
    w = word
```

**Copia a palavra inteira + os espaços ao redor:** `yaw`
```sh
    y = yank
    a = around
    w = word
```

*- **Copia o conteúdo dentro das aspas:** `y'i` ou `yi"`

```sh
    y = yank
    i = inside
    ' = objeto de texto das aspas
```

**Copia tudo dentro dos parênteses:** `y(i`
```sh
    y = yank
    i = inside
    ( = parênteses
```

**Copia tudo dentro dos colchetes:** `y[i`
```sh
    y = yank
    i = inside
    [ = colchetes
```

**Copia tudo dentro das chaves:** `y{i`
```sh
    y = yank
    i = inside
    { = chaves
```

**Copia o conteúdo dentro da tag HTML:** `y<it`
```sh
    y = yank
    < = indica objeto de texto HTML
    i = inside
    t = tag
```

### Copiar → do cursor até o fim

**Copia do cursor até o início da próxima palavra:** `yw`
```sh
    y = yank
    w = até a próxima palavra
```

**Copia até a próxima PALAVRA:** `yW`
```sh
    y = yank
    W = próxima PALAVRA (blocos delimitados por espaço)
```

**Copia do cursor até o final da linha:** `y$`
```sh
    y = yank
    $ = fim da linha
```

**Copia a linha inteira:** `yy`
```sh
    y = yank
    y = linha inteira
```

**Copia do cursor até o final do arquivo:** `yG`
```sh
    y = yank
    G = fim do documento
```
**Copia até o fim da sentença atual:** `y)`
```sh
    y = yank
    ) = fim da sentença
```

**Copia até o fim do parágrafo atual:** `y}`
```sh
    y = yank 
    } = fim do parágrafo
```

- *Copia até antes do caractere x:* `ytx`
```sh
    y = yank
    t = até antes do caractere
    x = caractere
```

- *Copia até e incluindo o caractere x:* `yfx`
```sh
    y = yank
    f = até o caractere (inclusive)
    x = alvo
```

- *Copia até a próxima ocorrência da palavra (sem copiá-la):* `y/word`
```sh
    y = yank
    \/ = busca para frente
    word = alvo
```



=== Copiar ← do cursor até o início
#line(length: 100%)

- *Copia até o início da linha:* `y0`
```sh
    y = yank
    0 = início da linha
```

- *Copia até o início do documento:* `ygg`
```sh
    y = yank
    gg = início do arquivo
```

- *Copia até o início da PALAVRA:* `yB`
```sh
    y = yank
    B = início da PALAVRA anterior
```

- *Copia até o início da sentença: `y(`*
```sh
    y = yank
    ( = início da sentença
```

- *Copia até o início do parágrafo: `y{`* 
```sh
    y = yank
    { = início do parágrafo
```

- *Copia até a ocorrência anterior da palavra: `y?word`*
```sh
    y = yank
    ? = busca para trás
    word = alvo
```

]

#pagebreak()

== *`d`*: Deletar

#v(50pt)

#columns()[



=== Objetos de texto
#line(length: 100%)

===**`diw`**

```
d = delete  
i = inside  
w = word  
→ apaga apenas o conteúdo da palavra onde o cursor está (sem espaço ao redor)
```

---

===**`daw`**

```
d = delete  
a = around  
w = word  
→ apaga a palavra inteira + espaços ao redor
```

---

===**`d'i`** *(ou `di"` etc.)*

```
d = delete
i = inside
' = objeto de texto "aspas simples" (ou "aspas duplas", etc.)
→ apaga o conteúdo dentro das aspas onde o cursor está
```

---

===**`d(i`**

```
d = delete
i = inside
( = objeto de texto "parênteses"
→ apaga tudo dentro dos parênteses
```

---

===**`d[i`**

```
d = delete
i = inside
[ = objeto de texto "colchetes"
→ apaga tudo dentro dos colchetes
```

---

===**`d{i`**

```
d = delete
i = inside
{ = objeto de texto "chaves"
→ apaga tudo dentro das chaves
```

---

===**`d<it`**

```
d = delete
i = inside
t = tag (objeto HTML/XML)
< = indica que o alvo é uma tag
→ apaga tudo dentro da tag HTML onde o cursor está
```


=== Apaga → do cursor até o fim
#line(length: 100%)

===**`dw`**

```
d = delete
w = até o início da próxima palavra
→ apaga do cursor até o início da próxima palavra
```

---

===**`dW`**

```
d = delete
W = até a próxima PALAVRA (separada por espaço)
→ apaga até a próxima PALAVRA (ignorando pontuação)
```

---

===**`d$`**

```
d = delete
$ = movimento para o fim da linha
→ apaga do cursor até o final da linha
```

---

===**`dd`**

```
d = delete
d = linha inteira (repetição do operador)
→ apaga a linha inteira
```

---

===**`dG`**

```
d = delete
G = ir ao fim do documento
→ apaga do cursor até o final do arquivo
```

---

===**`d)`**

```
d = delete
) = até a próxima sentença
→ apaga do cursor até o fim da sentença atual
```

---

===**`d}`**

```
d = delete
} = até o próximo parágrafo
→ apaga do cursor até o final do parágrafo atual
```

---

===**`dtx`**

```
d = delete
t = até antes do caractere
x = caractere alvo
→ apaga do cursor até antes do caractere x
```

---

===**`dfx`**

*(Você escreveu `dx`, mas o correto é `dfx` para “delete **to** x (inclusive)”)*

```
d = delete
f = até o caractere
x = caractere alvo
→ apaga do cursor até e incluindo o caractere x
```

---

===**`d/word`**

```
d = delete
/ = buscar para frente
word = termo buscado
→ apaga do cursor até a próxima ocorrência da palavra (não apaga a palavra)
```



=== Apaga ← do cursor até o início
#line(length: 100%)


===**`d0`**

```
d = delete
0 = início da linha
→ apaga do cursor até o início da linha
```

---

===**`dgg`**

```
d = delete
gg = ir ao início do arquivo
→ apaga do cursor até o início do documento
```

---

===**`dB`**

```
d = delete
B = início da PALAVRA anterior (bloco separado por espaços)
→ apaga do cursor até o início da PALAVRA
```

---

===**`d(`**

```
d = delete
( = até a sentença anterior
→ apaga do cursor até o início da sentença
```

---

===**`d{`**

```
d = delete
{ = até o parágrafo anterior
→ apaga do cursor até o início do parágrafo
```

---

===**`d?word`**

```
d = delete
? = buscar para trás
word = termo buscado
→ apaga do cursor até a ocorrência ANTERIOR da palavra
```

---

== 🔥 Se quiser, posso fazer:

✅ a versão completa para **copy (yank)**
✅ a versão completa para **change (c)**
✅ um **cheat sheet PDF**
✅ uma **tabela unificada de operadores + movimentos + text-objects**

É só pedir.




Aqui está uma **versão organizada**, no mesmo formato que você pediu para os comandos de *cópia* (yank) no Vim, divididos em:

✔ **Copia a palavra abaixo do cursor**
✔ **Copia até o fim**
✔ **Copia até o início**






]







#pagebreak()



= Vim

== Copiar

=== Copia a palavra abaixo do cursor

(text-objects: copia a palavra ou região onde o cursor está)

+ Copia a palavra abaixo do cursor (apenas o conteúdo): `yiw`
+ Copia a palavra abaixo do cursor, incluindo espaços: `yaw`
+ Copia tudo entre aspas: `y'i` *(troque \`'\` por \`"\`, \` etc.)*
+ Copia tudo entre parênteses: `y(i`
+ Copia tudo entre colchetes: `y[i`
+ Copia tudo entre chaves: `y{i`
+ Copia tudo entre tags HTML: `y<it` *(ex.: `y<itdiv`)*

---

=== Copia até o fim

*(do cursor em diante)*

* Copia do cursor até o fim da **palavra**: `yw`
* Copia do cursor até o fim da **WORD** (palavra “grande”): `yW`
* Copia do cursor até o fim da **linha**: `y$`
* Copia a **linha inteira**: `yy`
* Copia do cursor até o fim do **documento**: `yG`
* Copia da posição atual até o final da **sentença**: `y)`
* Copia da posição atual até o final do **parágrafo**: `y}`
* Copia do cursor até o caractere `x`: `ytx`
* Copia do cursor até e incluindo o caractere `x`: `yx`
* Copia até a próxima ocorrência da palavra: `y/word`

---

=== Copia até o início

*(do cursor para trás)*

* Copia do cursor até o início da **linha**: `y0`
* Copia do cursor até o início do **documento**: `ygg`
* Copia da posição atual até o início da **palavra grande (WORD)**: `yB`
* Copia da posição atual até o início da **sentença**: `y(`
* Copia da posição atual até o início do **parágrafo**: `y{`
* Copia até a ocorrência anterior da palavra: `y?word`



Se quiser, posso fazer também uma versão para **colagem (pasting)**, ou transformar tudo em uma **cheatsheet completa de edição no Vim** (PDF ou markdown).





Aqui está a **versão para colagem (paste)**, organizada no mesmo modelo das anteriores.

⚠️ *Diferente de deletar (`d`) e copiar (`y`), os comandos de colagem no Vim são menos numerosos.*
Mesmo assim, eles podem ser organizados nas mesmas três categorias conceituais.

---



== Colar texto no Vim

---

=== Cola abaixo do cursor

*(ou seja, insere o texto *depois* ou *abaixo* da posição atual)*

* Cola **depois do cursor** (modo normal): `p`
* Cola **abaixo da linha atual** (se o último yank/delete foi de uma linha): `p`
* Cola **após a palavra selecionada em visual mode**: `p`
* Cola de um registro específico após o cursor (ex.: registro `"a`): `"ap`

---

=== Cola até o fim

*(conceito adaptado: colar em posição que continua o fluxo natural do texto)*

- Cola *no final da linha atual* (movendo o cursor para `$` antes):

  ```
  $p
  ```
*Cola no **final do documento*:

  ```
  Gp
  ```
Cola após um movimento que vai “até o fim”:
  Exemplo — colar após o fim da sentença:

  ```
  )p
  ```
Cola após o fim do parágrafo:

  ```
  }p
}  ```

*(Aqui o ato de “colar até o fim” significa colar **depois** de um movimento que leva ao final de algo.)*

---

=== Cola até o início

*(colar *antes* da posição atual)*

* Cola **antes do cursor**: `P`
* Cola **acima da linha atual** (quando o yank/delete foi de linha): `P`
* Cola no **início da linha*:

  ```
  0P
  ```
* Cola no **início do documento*:

  ```
  ggP
  ```
Cola antes da palavra ou bloco após um movimento “para o início”:
  Exemplo — colar antes do início da sentença:

  ```
  (P
  ```
Cola antes do início do parágrafo:

  ```
  {P
  ```
Cola de um registro específico **antes** do cursor:

  ```
  "aP
  ```

---

=== 🎉 Resumo rápido (mais usados)

| Ação                   | Comando                            |
| ---------------------- | ---------------------------------- |
| Colar depois do cursor | `p`                                |
| Colar antes do cursor  | `P`                                |
| Colar abaixo da linha  | `p` (se foi copiada linha inteira) |
| Colar acima da linha   | `P` (se foi copiada linha inteira) |
| Colar de um registro   | `"ap` ou `"aP`                     |

---

Se quiser, posso também montar:

📌 **Uma cheatsheet completa com delete + copy + paste**
📌 Em formato **Markdown**, **PDF** ou **Typst**.












Perfeito — aqui estão **TODOS os comandos**, exatamente no mesmo formato detalhado que você pediu, agora para **copy (yank → `y`)** e **change (alterar → `c`)**.

Estrutura de cada explicação:

```
COMANDO
y/c = operador (copy ou change)
i/a/(movimento) = significado
→ resultado final
```



---

#pagebreak()


---

== 🔥 **Agora a versão completa para CHANGE (alterar → `c`)**

O operador `c` **apaga + entra em modo INSERT imediatamente**.

---

== 🟧 **CHANGE (c)**

---

== ✅ **TEXT-OBJECTS**

---

===**`ciw`**

```
c = change (apaga + entra em insert)
i = inside
w = word
→ substitui apenas o conteúdo da palavra
```

===**`caw`**

```
c = change
a = around
w = word
→ substitui a palavra inteira + espaços ao redor
```

===**`c'i`**

```
c = change
i = inside
' = aspas
→ substitui o conteúdo dentro das aspas
```

===**`c(i`**

```
c = change
i = inside
( = parênteses
→ substitui tudo dentro dos parênteses
```

===**`c[i`**

```
c = change
i = inside
[ = colchetes
→ substitui tudo dentro dos colchetes
```

===**`c{i`**

```
c = change
i = inside
{ = chaves
→ substitui tudo dentro das chaves
```

===**`c<it`**

```
c = change
i = inside
t = tag
< = HTML
→ substitui tudo dentro da tag HTML
```

---

== ✅ **CHANGE ATÉ O FIM (para frente)**

---

===**`cw`**

```
c = change
w = até a próxima palavra
→ apaga e substitui do cursor até a próxima palavra
```

===**`cW`**

```
c = change
W = próxima PALAVRA
→ substitui até a próxima PALAVRA
```

===**`c$`**

```
c = change
\$ = fim da linha
→ substitui até o final da linha
```

===**`cc`**

```
c = change
c = linha inteira
→ apaga e substitui a linha inteira
```

===**`cG`**

```
c = change
G = fim do arquivo
→ apaga e substitui até o final do arquivo
```

===**`c)`**

```
c = change
) = fim da sentença
→ substitui até o fim da sentença
```

===**`c}`**

```
c = change
} = fim do parágrafo
→ substitui até o fim do parágrafo
```

===**`ctx`**

```
c = change
t = até antes do caractere
x = alvo
→ substitui até antes do caractere x
```

===**`cfx`**

```
c = change
f = até o caractere (inclusive)
x = alvo
→ substitui até e incluindo o caractere x
```

===**`c/word`**

```
c = change
\/ = busca para frente
word = alvo
→ substitui até a próxima ocorrência da palavra
```

---

== ✅ **CHANGE ATÉ O INÍCIO (para trás)**

---

===**`c0`**

```
c = change
0 = início da linha
→ substitui até o início da linha
```

===**`cgg`**

```
c = change
gg = início do documento
→ substitui até o início do arquivo
```

===**`cB`**

```
c = change
B = início da PALAVRA anterior
→ substitui até o início da PALAVRA
```

===**`c(`**

```
c = change
( = início da sentença
→ substitui até o início da sentença
```

===**`c{`**

```
c = change
{ = início do parágrafo
→ substitui até o início do parágrafo
```

===**`c?word`**

```
c = change
? = busca para trás
word = alvo
→ substitui até a ocorrência anterior da palavra
```

---

== 🎁 Quer que eu gere:

✅ Um **cheat sheet em PDF**
✅ Uma **tabela com d / y / c lado a lado**
✅ Uma **“gramática dos operadores do Vim”**
✅ Uma versão **extremamente resumida** para consulta rápida

É só pedir.





---



Perfeito! Aqui está **A GRAMÁTICA DOS OPERADORES DO VIM** — a explicação formal que mostra exatamente *como* comandos como `dw`, `ciw`, `y)`, `dap` etc. funcionam.

---

===🎯 **3. Gramática dos Operadores do Vim**

A linguagem de comandos do Vim segue uma estrutura extremamente regular.
Qualquer comando do tipo **delete / copy / change** segue esta gramática:

---



===🧠 **GRAMÁTICA GERAL**

```
OPERADOR   +   MOVIMENTO
OPERADOR   +   OBJETO-DE-TEXTO
OPERADOR   +   REPETIÇÃO  + MOVIMENTO/OBJETO
OPERADOR   +   OPERADOR (caso especial: linha)
```

---

===🧱 1. **OPERADORES**

| Operador | Significado                        |
| -------- | ---------------------------------- |
| `d`      | delete                             |
| `y`      | yank (copiar)                      |
| `c`      | change (apagar + entrar no insert) |
| `g~`     | alternar maiúsc/minúsc             |
| `gu`     | deixar minúsculo                   |
| `gU`     | deixar MAIÚSCULO                   |
| `>`      | indent (shift right)               |
| `<`      | unindent (shift left)              |

---

===🧭 2. **MOVIMENTOS (Motions)**

Movimentos são “direções”. Operadores usam esses movimentos para saber **o que** alterar.

===**Movimentos básicos**

| Movimento | Vai até…                               |
| --------- | -------------------------------------- |
| `w`       | início da próxima palavra              |
| `W`       | próxima PALAVRA (separada por espaços) |
| `b`       | início da palavra anterior             |
| `B`       | início da PALAVRA anterior             |
| `e`       | fim da palavra                         |
| `ge`      | fim da palavra anterior                |
| `0`       | início da linha                        |
| `$`       | fim da linha                           |
| `gg`      | início do arquivo                      |
| `G`       | final do arquivo                       |

===**Movimentos condicionados a caracteres**

| Movimento | Significado                |
| --------- | -------------------------- |
| `f x`     | vai **até** x (inclusive)  |
| `t x`     | vai até **antes** de x     |
| `F x`     | busca x para trás          |
| `T x`     | busca antes de x para trás |

===**Movimentos estruturais**

| Movimento | Vai até…           |
| --------- | ------------------ |
| `)`       | fim da sentença    |
| `(`       | início da sentença |
| `}`       | próximo parágrafo  |
| `{`       | parágrafo anterior |

===**Movimentos baseados em busca**

| Movimento | Vai até…            |
| --------- | ------------------- |
| `/word`   | próxima ocorrência  |
| `?word`   | ocorrência anterior |

---

===🧩 3. **OBJETOS DE TEXTO (Text Objects)**

Text objects são unidades semânticas — diferem dos movimentos porque definem **regiões** completas.

Sempre seguem este padrão:

```
aX = around X (inclui delimitadores)
iX = inside X (exclui delimitadores)
```

| Objeto     | Inside     | Around     | Descrição             |
| ---------- | ---------- | ---------- | --------------------- |
| palavra    | `iw`       | `aw`       | palavra               |
| sentença   | `is`       | `as`       | sentença              |
| parágrafo  | `ip`       | `ap`       | parágrafo             |
| aspas      | `i'`, `i"` | `a'`, `a"` | texto entre aspas     |
| parênteses | `i(`       | `a(`       | parênteses            |
| colchetes  | `i[`       | `a[`       | colchetes             |
| chaves     | `i{`       | `a{`       | chaves                |
| tags HTML  | `it`       | `at`       | conteúdo de tags HTML |

---

===⚙️ 4. **COMANDO = OPERADOR + MOVIMENTO**

Exemplos:

===`dw`

```
d = delete
w = movimento até a próxima palavra
→ apaga até o início da próxima palavra
```

===`d)`

```
d = delete
) = movimento até o fim da sentença
→ apaga até o fim da sentença
```

===`dtx`

```
d = delete
t = até antes do caractere
x = caractere alvo
→ apaga até antes do x
```

===`d/word`

```
d = delete
/word = movimento de busca
→ apaga até a próxima ocorrência
```

---

===🚀 5. **COMANDO = OPERADOR + TEXT OBJECT**

===`diw`

```
d = delete
i = inside
w = word
→ apaga apenas a palavra
```

===`daw`

```
d = delete
a = around
w = word
→ apaga palavra + espaço ao redor
```

===`ci(`

```
c = change
i = inside
( = parênteses
→ apaga conteúdo dentro dos parênteses e entra no insert mode
```

===`ya{`

```
y = yank
a = around
{ = chaves
→ copia o bloco inteiro com chaves
```

---

===🔁 6. **REPETIÇÃO**

Números inseridos antes do operador ou movimento repetem a ação.

===Exemplos:

===`3dw`

```
3 = repetir três vezes
d = delete
w = movimento palavra
→ apaga três palavras
```

===`d3w`

```
d = delete
3w = movimento de três palavras
→ apaga três palavras (mesmo resultado)
```

===`y5j`

// ```
// y = yank
// 5j = mover cinco linhas para baixo
// → copia cinco linhas
// ```

// ---

// ===✨ 7. **CASO ESPECIAL: OPERADOR DUPLICADO**

// Alguns operadores definem seu objeto ao se repetirem:

// | Comando | Significa                                 |
// | ------- | ----------------------------------------- |
// | `dd`    | apagar a linha inteira                    |
// | `yy`    | copiar a linha inteira                    |
// | `cc`    | apagar a linha inteira e entrar em insert |

// Isto funciona porque o operador repetido equivale a “na linha”.

// ---

// ===🎉 Conclusão

// Essa é a **gramática completa e formal** de como operadores do Vim funcionam.

// Se quiser, posso também produzir:

// 📌 **PDF estilizado**
// 📌 **tabela colorida de operadores x movimentos x objects**
// 📌 **exercícios para treinar**

// Só pedir!
















= Vim

== Apagar texto no Vim

=== Até o fim
- Apaga do cursor até o fim da `palavra`: `dw`


- Apaga toda a palavra abaio do cursor: `diw`
- Apaga toda a palabra abaixo do cursor, incluindo os espaços ao redor: `daw`
- Apaga do cursor até o fim da `linha`: `d$`
- Apaga a `linha` inteira: `dd`
- Apaga do cursor até o início da `linha`: `d0`
- Apaga do cursor até o fim do `documento`: `dG`
- Apaga do cursor até o início do `documento`: `dgg`
- Apaga do cursor até o caractere `x`: `dtx` (onde `x` é o caractere desejado)
- Apaga do cursor até e incluindo o caractere `x`: `dx` (onde `x` é o caractere desejado)
- Apaga da  atual até o final da `palavra`: `dW`

=== Até o início
- Apaga da posição atual até o início da `palavra`: `dB`
- Apaga da posição atual até o final da `sentença`: `d)`
- Apaga da posição atual até o início da `sentença`: `d(`
- Apaga da posição atual até o final do `parágrafo`: `d}`
- Apaga da posição atual até o início do `parágrafo`: `d{`
- Apaga tudo entre aspas: `d'i` (onde `'` pode ser substituído por qualquer tipo de aspas, como `"`, \`\` \` \`\`, etc.)
- Apaga tudo entre parênteses: `d(i`
- Apaga tudo entre colchetes: `d[i`
- Apaga tudo entre chaves: `d{i`
- Apaga tudo entre tags HTML: `d\<t`tag> (onde `<tag>` é a tag HTML desejada, como `div`, `p`, etc.)  
- Apaga até a próxima ocorrência da `palavra`: `d/word` (onde `word` é a palavra desejada)
- Apaga até a ocorrência anterior da `palavra`: `d?word` (onde `word` é a palavra desejada)


/// -------------------------------------------------------

#pagebreak()

= Vim


`operador + alcance/text-object/movimento`



== Apagar texto no Vim



=== Apaga a palavra abaixo do cursor

(text-objects: afeta a palavra inteira onde o cursor está)

+ Apaga toda a palavra abaixo do cursor: `diw`
+ Apaga toda a palavra abaixo do cursor, incluindo os espaços ao redor: `daw`
+ Apaga tudo entre aspas: `d'i` *(substitua `'` por `"`, ` ` etc.)*
+ Apaga tudo entre parênteses: `d(i`
+ Apaga tudo entre colchetes: `d[i`
+ Apaga tudo entre chaves: `d{i`
+ Apaga tudo entre tags HTML: `d<it` (ex.: `d<itdiv`)

=== Apaga até o fim
(do cursor em diante)

+ Apaga do cursor até o fim da *palavra*: `dw`
+ Apaga da posição atual até o final da *PALAVRA*: `dW`
+ Apaga do cursor até o fim da *linha*: `d$`
+ Apaga a *linha inteira*: `dd`
+ Apaga do cursor até o fim do *documento*: `dG`
+ Apaga da posição atual até o final da *sentença*: `d)`
+ Apaga da posição atual até o final do *parágrafo*: `d}`
+ Apaga do cursor até o caractere `x`: `dtx`
+ Apaga do cursor até e incluindo o caractere `x`: `dx`
+ Apaga até a próxima ocorrência de uma palavra: `d/word`

=== Apaga até o início

(do cursor para trás)

+ Apaga do cursor até o início da *linha*: `d0`
+ Apaga do cursor até o início do *documento*: `dgg`
+ Apaga da posição atual até o início da *PALAVRA*: `dB`
+ Apaga da posição atual até o início da *sentença*: `d(`
+ Apaga da posição atual até o início do *parágrafo*: `d{`
+ Apaga até a ocorrência anterior da palavra: `d?word`

