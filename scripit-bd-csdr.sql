create table public.notificacao (
  id character varying(36) not null,
  usuario_id character varying(36) not null,
  titulo character varying(150) not null,
  mensagem text not null,
  lida boolean null,
  criada_em timestamp without time zone null,
  constraint notificacao_pkey primary key (id)
) TABLESPACE pg_default;


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


create table public.aplicativo (
  id_aplicativo serial not null,
  nome character varying(150) not null,
  desenvolvedora character varying(100) null,
  descricao text null,
  categoria character varying(50) null,
  criado_por character varying(36) null,
  criado_em timestamp without time zone null,
  constraint aplicativo_pkey primary key (id_aplicativo)
) TABLESPACE pg_default;

create table public.termo_lgpd (
  id serial not null,
  versao character varying(20) not null,
  conteudo text not null,
  data_publicacao timestamp without time zone not null,
  constraint termo_lgpd_pkey primary key (id)
) TABLESPACE pg_default;
