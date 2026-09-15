# A Ver a Dois

Lista partilhada de filmes, séries e documentários. Custo zero: site estático
(HTML puro, sem build) + Supabase (base de dados gratuita) + Vercel (alojamento gratuito).

## Passo 1 — Criar a base de dados (Supabase)

1. Vai a https://supabase.com → cria conta gratuita → **New Project**.
2. Escolhe um nome, password da base de dados (guarda-a) e a região mais próxima (Europe).
3. Depois do projeto criado, vai a **SQL Editor** → **New query**.
4. Copia todo o conteúdo do ficheiro `setup.sql` (incluído aqui) e clica **Run**.
5. Vai a **Table Editor** e confirma que a tabela `items` foi criada.
6. Vai a **Project Settings → API**. Vais precisar de dois valores:
   - **Project URL**
   - **anon public key**
7. (Opcional mas recomendado) Em **Database → Replication**, ativa a tabela `items`
   para que as atualizações apareçam em tempo real nos dois telemóveis/computadores
   sem precisar de recarregar a página.

## Passo 2 — Ligar a app à base de dados

Abre `index.html` e, perto do fim, substitui estas duas linhas pelos valores do Passo 1:

```js
const SUPABASE_URL = 'COLOCA_AQUI_O_TEU_SUPABASE_URL';
const SUPABASE_ANON_KEY = 'COLOCA_AQUI_A_TUA_SUPABASE_ANON_KEY';
```

## Passo 3 — Publicar no GitHub

1. Cria um repositório novo (pode ser privado) em https://github.com/new.
2. Faz upload dos 3 ficheiros (`index.html`, `setup.sql`, `README.md`) — usa o botão
   "uploading an existing file" na página do repositório, sem precisar de linha de comandos.

## Passo 4 — Deploy na Vercel (gratuito)

1. Vai a https://vercel.com → cria conta com o teu GitHub.
2. **Add New → Project** → escolhe o repositório que criaste.
3. A Vercel deteta que é um site estático — não precisas de mudar nenhuma definição.
   Clica **Deploy**.
4. Em ~30 segundos tens um URL do género `a-ver-a-dois.vercel.app`.
5. Partilha esse link com a tua mulher — é a app.

## Notas

- Não há login: quem tiver o link consegue ver e editar a lista. É simples de propósito,
  mas significa que não deves publicar o link publicamente (ex: redes sociais).
- Sempre que quiseres mudar alguma coisa no design ou nos campos, edita `index.html`,
  volta a fazer upload no GitHub, e a Vercel faz o novo deploy automaticamente.
- Tudo isto fica dentro dos planos gratuitos da Supabase e da Vercel — não é preciso
  cartão de crédito em nenhum dos dois.
