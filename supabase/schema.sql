-- Execute no SQL Editor do Supabase.
create table if not exists public.tarefas (
 id uuid primary key default gen_random_uuid(),
 titulo text not null check (char_length(titulo) between 1 and 120),
 descricao text not null default '',
 categoria text not null default 'Estudos' check (categoria in ('Estudos','Trabalho','Pessoal','Outros')),
 prioridade text not null default 'Média' check (prioridade in ('Baixa','Média','Alta')),
 status text not null default 'Pendente' check (status in ('Pendente','Em andamento','Concluída')),
 criado_em timestamptz not null default now()
);
-- Demonstração acadêmica pública sem autenticação: qualquer visitante poderá alterar os dados.
-- Não armazene dados pessoais ou sensíveis. Para produção, implemente login e políticas por usuário.
alter table public.tarefas enable row level security;
create policy "demo_select" on public.tarefas for select to anon using (true);
create policy "demo_insert" on public.tarefas for insert to anon with check (true);
create policy "demo_update" on public.tarefas for update to anon using (true) with check (true);
create policy "demo_delete" on public.tarefas for delete to anon using (true);
