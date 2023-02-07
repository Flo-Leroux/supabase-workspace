
CREATE table profiles (
    id uuid not null primary key,
    name text not null unique,

    FOREIGN KEY (id)
        REFERENCES auth.users (id)
);

CREATE SCHEMA IF NOT EXISTS private;

CREATE table private.organizations (
    id uuid not null primary key,
    name text not null unique,

    owner uuid not null,

    FOREIGN KEY (owner)
        REFERENCES public.profiles (id)
);
