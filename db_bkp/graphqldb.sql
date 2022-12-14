PGDMP     *    1                z         	   graphqldb    14.5    14.5                0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false                       0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false                       0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                       1262    16806 	   graphqldb    DATABASE     T   CREATE DATABASE graphqldb WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'C';
    DROP DATABASE graphqldb;
                postgres    false            >           1247    16818 	   ENUM_TYPE    TYPE     <   CREATE TYPE public."ENUM_TYPE" AS ENUM (
    'ENUM_TYPE'
);
    DROP TYPE public."ENUM_TYPE";
       public          postgres    false            ?            1259    16821 
   categories    TABLE     ?   CREATE TABLE public.categories (
    id integer NOT NULL,
    name character varying NOT NULL,
    slug character varying NOT NULL,
    description text,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
    DROP TABLE public.categories;
       public         heap    postgres    false            ?            1259    16835    categories_id_seq    SEQUENCE     ?   ALTER TABLE public.categories ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.categories_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    210            ?            1259    16810    posts    TABLE     A  CREATE TABLE public.posts (
    id integer NOT NULL,
    title text NOT NULL,
    slug text NOT NULL,
    content text,
    status character varying(30) NOT NULL,
    post_type character varying(30) NOT NULL,
    cat_id integer,
    user_id integer NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
    DROP TABLE public.posts;
       public         heap    postgres    false            ?            1259    16836    posts_id_seq    SEQUENCE     ?   ALTER TABLE public.posts ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.posts_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    209            ?            1259    16828    users    TABLE     ?   CREATE TABLE public.users (
    id integer NOT NULL,
    name character varying NOT NULL,
    email character varying NOT NULL,
    passwd character varying NOT NULL,
    created_at date NOT NULL,
    updated_at date NOT NULL
);
    DROP TABLE public.users;
       public         heap    postgres    false            ?            1259    16837    users_id_seq    SEQUENCE     ?   ALTER TABLE public.users ALTER COLUMN id ADD GENERATED ALWAYS AS IDENTITY (
    SEQUENCE NAME public.users_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1
);
            public          postgres    false    211                      0    16821 
   categories 
   TABLE DATA           Y   COPY public.categories (id, name, slug, description, created_at, updated_at) FROM stdin;
    public          postgres    false    210   ?                 0    16810    posts 
   TABLE DATA           u   COPY public.posts (id, title, slug, content, status, post_type, cat_id, user_id, created_at, updated_at) FROM stdin;
    public          postgres    false    209   ?                 0    16828    users 
   TABLE DATA           P   COPY public.users (id, name, email, passwd, created_at, updated_at) FROM stdin;
    public          postgres    false    211   ?                  0    0    categories_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.categories_id_seq', 1, false);
          public          postgres    false    212                       0    0    posts_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.posts_id_seq', 1, false);
          public          postgres    false    213                       0    0    users_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.users_id_seq', 1, false);
          public          postgres    false    214            v           2606    16827    categories categories_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.categories
    ADD CONSTRAINT categories_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.categories DROP CONSTRAINT categories_pkey;
       public            postgres    false    210            t           2606    16816    posts posts_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.posts
    ADD CONSTRAINT posts_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.posts DROP CONSTRAINT posts_pkey;
       public            postgres    false    209            x           2606    16834    users users_pkey 
   CONSTRAINT     N   ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (id);
 :   ALTER TABLE ONLY public.users DROP CONSTRAINT users_pkey;
       public            postgres    false    211                  x?????? ? ?            x?????? ? ?            x?????? ? ?     