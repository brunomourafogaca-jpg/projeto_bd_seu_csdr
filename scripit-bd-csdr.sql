create table public.notificacao (
  id character varying(36) not null,
  usuario_id character varying(36) not null,
  titulo character varying(150) not null,
  mensagem text not null,
  lida boolean null,
  criada_em timestamp without time zone null,
  constraint notificacao_pkey primary key (id)
) TABLESPACE pg_default;