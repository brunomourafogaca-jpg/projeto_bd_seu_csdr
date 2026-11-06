create table public.usuario (
  id character varying(36) not null default (gen_random_uuid ())::text,
  nome character varying(180) not null,
  email character varying(350) not null,
  senha_hash character varying(255) not null,
  perfil public.perfil_usuario not null,
  criado_em timestamp with time zone not null default now(),
  atualizado_em timestamp with time zone not null default now(),
  constraint usuario_pkey primary key (id),
  constraint usuario_email_key unique (email)
) TABLESPACE pg_default;
