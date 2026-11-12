# TaskHub — CRUD em React JS

Projeto acadêmico individual: criar, listar, atualizar e excluir tarefas no Supabase (PostgreSQL), com interface React e deploy Vercel via GitHub.

## 1. Banco de dados
1. Crie um projeto gratuito em https://supabase.com.
2. Abra **SQL Editor**, cole e execute `supabase/schema.sql`.
3. Em **Project Settings > API** (ou **Connect**), copie a **Project URL** e a chave pública `anon` / `publishable`. **Nunca use a chave `service_role` no navegador.**

## 2. Executar localmente
1. Instale Node.js 20+.
2. No terminal, dentro da pasta: `npm install`.
3. Copie `.env.example` para `.env` e preencha as duas variáveis.
4. Rode `npm run dev` e abra o endereço mostrado.

## 3. Publicar no GitHub
Crie um repositório **público** chamado `taskhub-crud` e envie o conteúdo da pasta (não envie `.env` nem `node_modules`).

## 4. Publicar no Vercel
1. Em https://vercel.com, escolha **Add New > Project** e importe o repositório.
2. Framework Preset: **Vite**. Build Command: `npm run build`. Output Directory: `dist`.
3. Em **Environment Variables**, configure `VITE_SUPABASE_URL` e `VITE_SUPABASE_ANON_KEY` com os valores reais.
4. Clique **Deploy**. Teste as quatro operações no endereço publicado.
5. Entregue a URL do Vercel e a URL pública do repositório GitHub.

## Critérios da atividade
- Create: botão **Adicionar tarefa** → `insert`.
- Retrieve: lista de tarefas → `select`.
- Update: botão **Editar** e **Salvar alterações** → `update`.
- Delete: botão **Excluir** → `delete`.
- Interface gráfica: formulário, filtros, contadores, estados e layout responsivo.

## Atenção à segurança
A configuração SQL permite acesso anônimo de leitura e escrita para facilitar a demonstração acadêmica. Qualquer pessoa com o endereço poderá modificar ou apagar as tarefas. Não use dados sensíveis. Em um aplicativo real, use autenticação Supabase e políticas RLS específicas por usuário.
