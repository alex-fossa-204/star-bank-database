BEGIN;

CREATE TABLE IF NOT EXISTS public.credential
(
    id                        bigint                                             NOT NULL GENERATED ALWAYS AS IDENTITY,
    phone_login               character varying(64) COLLATE pg_catalog."default" NOT NULL,
    passport_login            character varying(64) COLLATE pg_catalog."default" NOT NULL,
    password                  character varying(128) COLLATE pg_catalog."default",
    registration_date         timestamp without time zone,
    last_login_date           timestamp without time zone,
    secret_question           character varying(256),
    secret_question_answer    character varying(256) COLLATE pg_catalog."default",
    is_active                 boolean,
    is_non_locked             boolean,
    user_id                   uuid,
    is_credential_non_expired boolean,
    is_us_resident            boolean,
    uid         uuid NOT NULL,
    CONSTRAINT credential_pkey PRIMARY KEY (id),
    CONSTRAINT phone_login_unique_ct UNIQUE (phone_login),
    CONSTRAINT passport_login_unique_ct UNIQUE (passport_login),
    CONSTRAINT credential_uid_unique_ct UNIQUE (uid)
);

CREATE TABLE IF NOT EXISTS public.api_user
(
    id          bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    uid         uuid NOT NULL,
    role_id     uuid,
    passport_id uuid,
    image_url   character varying(128),
    PRIMARY KEY (id),
    CONSTRAINT api_user_uid_unique_ct UNIQUE (uid)
);

CREATE TABLE IF NOT EXISTS public.user_role
(
    id                    integer NOT NULL GENERATED ALWAYS AS IDENTITY,
    user_role_name        character varying(32),
    uid         uuid NOT NULL,
    user_role_description character varying(128),
    PRIMARY KEY (id),
    CONSTRAINT user_role_uid_unique_ct UNIQUE (uid)
);

CREATE TABLE IF NOT EXISTS public.privilege
(
    id        integer NOT NULL GENERATED ALWAYS AS IDENTITY,
    uid         uuid NOT NULL,
    privilege character varying(32),
    PRIMARY KEY (id),
    CONSTRAINT privilege_uid_unique_ct UNIQUE (uid)
);

CREATE TABLE IF NOT EXISTS public.role_privilege
(
    role_id      uuid,
    privilege_id uuid
);

CREATE TABLE IF NOT EXISTS public.passport
(
    id              bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    lastname        character varying(64),
    firstname       character varying(64),
    surname         character varying(64),
    birthday_date   timestamp without time zone,
    issue_date      timestamp without time zone,
    passport_serial character varying(64),
    expiration_date timestamp without time zone,
    is_us_resident  boolean,
    uid         uuid NOT NULL,
    PRIMARY KEY (id),
    CONSTRAINT serial_identifier_ct UNIQUE (passport_serial),
    CONSTRAINT passport_uid_unique_ct UNIQUE (uid)
);

CREATE TABLE IF NOT EXISTS public.api_user_contact
(
    id           bigint NOT NULL GENERATED ALWAYS AS IDENTITY,
    email        character varying(64),
    skype        character varying(64),
    user_id      uuid,
    phone_number character varying(64),
    PRIMARY KEY (id),
    CONSTRAINT email_unique_ct UNIQUE (email),
    CONSTRAINT phone_unique_ct UNIQUE (phone_number)
);


ALTER TABLE IF EXISTS public.credential
    ADD CONSTRAINT client_clients_fk FOREIGN KEY (user_id)
        REFERENCES public.api_user (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;

ALTER TABLE IF EXISTS public.api_user
    ADD CONSTRAINT passport_passports_fk FOREIGN KEY (passport_id)
        REFERENCES public.passport (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;


ALTER TABLE IF EXISTS public.api_user
    ADD CONSTRAINT role_roles_fk FOREIGN KEY (role_id)
        REFERENCES public.user_role (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;


ALTER TABLE IF EXISTS public.role_privilege
    ADD CONSTRAINT role_roles_fk FOREIGN KEY (role_id)
        REFERENCES public.user_role (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;

ALTER TABLE IF EXISTS public.role_privilege
    ADD CONSTRAINT privilege_privileges_fk FOREIGN KEY (privilege_id)
        REFERENCES public.privilege (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;


ALTER TABLE IF EXISTS public.api_user_contact
    ADD CONSTRAINT user_users_fk FOREIGN KEY (user_id)
        REFERENCES public.api_user (uid) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
        NOT VALID;

END;
