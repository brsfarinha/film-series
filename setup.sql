-- Copia e cola isto no Supabase: SQL Editor > New Query > Run

create table if not exists items (
  id uuid primary key default gen_random_uuid(),
  name text not null,
  type text not null default 'serie',
  platform text not null default 'outro',
  season text default '',
  status text not null default 'por_ver',
  progress text default '',
  notes text default '',
  created_at timestamptz not null default now()
);

-- Ativa segurança ao nível das linhas
alter table items enable row level security;

-- Como é uma app privada entre duas pessoas (sem login), permitimos
-- todas as operações através da anon key. O link/URL da app é o que
-- protege o acesso — não o partilhes publicamente.
create policy "allow all for anon" on items
  for all
  using (true)
  with check (true);
