PGDMP     
                    z            app    10.17 (Debian 10.17-1.pgdg90+1)    14.4 ?    ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16619    app    DATABASE     W   CREATE DATABASE app WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'en_US.utf8';
    DROP DATABASE app;
                postgres    false            ?            1259    16651 
   auth_group    TABLE     f   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(150) NOT NULL
);
    DROP TABLE public.auth_group;
       public            postgres    false            ?            1259    16649    auth_group_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    203            ?           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    202            ?            1259    16661    auth_group_permissions    TABLE     ?   CREATE TABLE public.auth_group_permissions (
    id bigint NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public            postgres    false            ?            1259    16659    auth_group_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    205            ?           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    204            ?            1259    16643    auth_permission    TABLE     ?   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public            postgres    false            ?            1259    16641    auth_permission_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    201            ?           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    200            ?            1259    16716 	   core_book    TABLE     ?   CREATE TABLE public.core_book (
    id bigint NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    serial character varying(255) NOT NULL,
    title_id bigint
);
    DROP TABLE public.core_book;
       public            postgres    false            ?            1259    16714    core_book_id_seq    SEQUENCE     y   CREATE SEQUENCE public.core_book_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_book_id_seq;
       public          postgres    false    211            ?           0    0    core_book_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_book_id_seq OWNED BY public.core_book.id;
          public          postgres    false    210            ?            1259    16738    core_booktracking    TABLE     ?  CREATE TABLE public.core_booktracking (
    id bigint NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    borrow_day date NOT NULL,
    return_day date NOT NULL,
    is_renew boolean NOT NULL,
    book_id bigint NOT NULL,
    student_id bigint NOT NULL,
    librarian_id bigint NOT NULL,
    is_return boolean NOT NULL
);
 %   DROP TABLE public.core_booktracking;
       public            postgres    false            ?            1259    16736    core_booktracking_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.core_booktracking_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.core_booktracking_id_seq;
       public          postgres    false    216            ?           0    0    core_booktracking_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.core_booktracking_id_seq OWNED BY public.core_booktracking.id;
          public          postgres    false    215            ?            1259    16722 	   core_role    TABLE     d   CREATE TABLE public.core_role (
    id bigint NOT NULL,
    name character varying(255) NOT NULL
);
    DROP TABLE public.core_role;
       public            postgres    false            ?            1259    16852    core_role_id_seq    SEQUENCE     y   CREATE SEQUENCE public.core_role_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_role_id_seq;
       public          postgres    false    212            ?           0    0    core_role_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_role_id_seq OWNED BY public.core_role.id;
          public          postgres    false    222            ?            1259    16730 
   core_title    TABLE       CREATE TABLE public.core_title (
    id bigint NOT NULL,
    created_date timestamp with time zone NOT NULL,
    modified_date timestamp with time zone NOT NULL,
    name character varying(255) NOT NULL,
    number_of_copy integer NOT NULL,
    number_available integer NOT NULL
);
    DROP TABLE public.core_title;
       public            postgres    false            ?            1259    16728    core_title_id_seq    SEQUENCE     z   CREATE SEQUENCE public.core_title_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.core_title_id_seq;
       public          postgres    false    214            ?           0    0    core_title_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.core_title_id_seq OWNED BY public.core_title.id;
          public          postgres    false    213            ?            1259    16695 	   core_user    TABLE     ?  CREATE TABLE public.core_user (
    id bigint NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(150) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    role_id bigint
);
    DROP TABLE public.core_user;
       public            postgres    false            ?            1259    16708    core_user_groups    TABLE     }   CREATE TABLE public.core_user_groups (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.core_user_groups;
       public            postgres    false            ?            1259    16706    core_user_groups_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.core_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.core_user_groups_id_seq;
       public          postgres    false    209            ?           0    0    core_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.core_user_groups_id_seq OWNED BY public.core_user_groups.id;
          public          postgres    false    208            ?            1259    16693    core_user_id_seq    SEQUENCE     y   CREATE SEQUENCE public.core_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.core_user_id_seq;
       public          postgres    false    207            ?           0    0    core_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.core_user_id_seq OWNED BY public.core_user.id;
          public          postgres    false    206            ?            1259    16758    core_user_user_permissions    TABLE     ?   CREATE TABLE public.core_user_user_permissions (
    id bigint NOT NULL,
    user_id bigint NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.core_user_user_permissions;
       public            postgres    false            ?            1259    16756 !   core_user_user_permissions_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.core_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.core_user_user_permissions_id_seq;
       public          postgres    false    218            ?           0    0 !   core_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.core_user_user_permissions_id_seq OWNED BY public.core_user_user_permissions.id;
          public          postgres    false    217            ?            1259    16808    django_admin_log    TABLE     ?  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id bigint NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public            postgres    false            ?            1259    16806    django_admin_log_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    220            ?           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    219            ?            1259    16633    django_content_type    TABLE     ?   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public            postgres    false            ?            1259    16631    django_content_type_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    199            ?           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    198            ?            1259    16622    django_migrations    TABLE     ?   CREATE TABLE public.django_migrations (
    id bigint NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public            postgres    false            ?            1259    16620    django_migrations_id_seq    SEQUENCE     ?   CREATE SEQUENCE public.django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    197            ?           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    196            ?            1259    16830    django_session    TABLE     ?   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public            postgres    false            ?
           2604    16654    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    202    203    203            ?
           2604    16664    auth_group_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            ?
           2604    16646    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    201    200    201            ?
           2604    16719    core_book id    DEFAULT     l   ALTER TABLE ONLY public.core_book ALTER COLUMN id SET DEFAULT nextval('public.core_book_id_seq'::regclass);
 ;   ALTER TABLE public.core_book ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    210    211    211            ?
           2604    16741    core_booktracking id    DEFAULT     |   ALTER TABLE ONLY public.core_booktracking ALTER COLUMN id SET DEFAULT nextval('public.core_booktracking_id_seq'::regclass);
 C   ALTER TABLE public.core_booktracking ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    216    216            ?
           2604    16854    core_role id    DEFAULT     l   ALTER TABLE ONLY public.core_role ALTER COLUMN id SET DEFAULT nextval('public.core_role_id_seq'::regclass);
 ;   ALTER TABLE public.core_role ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    222    212            ?
           2604    16733    core_title id    DEFAULT     n   ALTER TABLE ONLY public.core_title ALTER COLUMN id SET DEFAULT nextval('public.core_title_id_seq'::regclass);
 <   ALTER TABLE public.core_title ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    214    213    214            ?
           2604    16698    core_user id    DEFAULT     l   ALTER TABLE ONLY public.core_user ALTER COLUMN id SET DEFAULT nextval('public.core_user_id_seq'::regclass);
 ;   ALTER TABLE public.core_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    206    207    207            ?
           2604    16711    core_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.core_user_groups ALTER COLUMN id SET DEFAULT nextval('public.core_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.core_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209                        2604    16761    core_user_user_permissions id    DEFAULT     ?   ALTER TABLE ONLY public.core_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.core_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.core_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    218    217    218                       2604    16811    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    219    220            ?
           2604    16636    django_content_type id    DEFAULT     ?   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    199    198    199            ?
           2604    16625    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    197    196    197            ?          0    16651 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    203   >?       ?          0    16661    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    205   [?       ?          0    16643    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    201   x?       ?          0    16716 	   core_book 
   TABLE DATA           V   COPY public.core_book (id, created_date, modified_date, serial, title_id) FROM stdin;
    public          postgres    false    211   ?       ?          0    16738    core_booktracking 
   TABLE DATA           ?   COPY public.core_booktracking (id, created_date, modified_date, borrow_day, return_day, is_renew, book_id, student_id, librarian_id, is_return) FROM stdin;
    public          postgres    false    216   y?       ?          0    16722 	   core_role 
   TABLE DATA           -   COPY public.core_role (id, name) FROM stdin;
    public          postgres    false    212   ?       ?          0    16730 
   core_title 
   TABLE DATA           m   COPY public.core_title (id, created_date, modified_date, name, number_of_copy, number_available) FROM stdin;
    public          postgres    false    214   8?       ?          0    16695 	   core_user 
   TABLE DATA           ?   COPY public.core_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined, role_id) FROM stdin;
    public          postgres    false    207   ??       ?          0    16708    core_user_groups 
   TABLE DATA           A   COPY public.core_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    209   "?       ?          0    16758    core_user_user_permissions 
   TABLE DATA           P   COPY public.core_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    218   ??       ?          0    16808    django_admin_log 
   TABLE DATA           ?   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    220   \?       ?          0    16633    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    199   ??       ?          0    16622    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    197   ?       ?          0    16830    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    221   x?       ?           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    202            ?           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    204            ?           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 40, true);
          public          postgres    false    200            ?           0    0    core_book_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.core_book_id_seq', 2, true);
          public          postgres    false    210            ?           0    0    core_booktracking_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.core_booktracking_id_seq', 5, true);
          public          postgres    false    215            ?           0    0    core_role_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.core_role_id_seq', 2, true);
          public          postgres    false    222            ?           0    0    core_title_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.core_title_id_seq', 4, true);
          public          postgres    false    213            ?           0    0    core_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.core_user_groups_id_seq', 1, false);
          public          postgres    false    208            ?           0    0    core_user_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.core_user_id_seq', 4, true);
          public          postgres    false    206            ?           0    0 !   core_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.core_user_user_permissions_id_seq', 1, false);
          public          postgres    false    217            ?           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 11, true);
          public          postgres    false    219            ?           0    0    django_content_type_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.django_content_type_id_seq', 10, true);
          public          postgres    false    198                        0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 25, true);
          public          postgres    false    196                       2606    16691    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    203                       2606    16677 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    205    205                       2606    16666 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    205                       2606    16656    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    203                       2606    16668 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    201    201                       2606    16648 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    201            &           2606    16721    core_book core_book_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_book
    ADD CONSTRAINT core_book_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_book DROP CONSTRAINT core_book_pkey;
       public            postgres    false    211            /           2606    16743 (   core_booktracking core_booktracking_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.core_booktracking
    ADD CONSTRAINT core_booktracking_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.core_booktracking DROP CONSTRAINT core_booktracking_pkey;
       public            postgres    false    216            )           2606    16847    core_role core_role_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_role
    ADD CONSTRAINT core_role_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_role DROP CONSTRAINT core_role_pkey;
       public            postgres    false    212            +           2606    16735    core_title core_title_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.core_title
    ADD CONSTRAINT core_title_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.core_title DROP CONSTRAINT core_title_pkey;
       public            postgres    false    214            !           2606    16713 &   core_user_groups core_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.core_user_groups DROP CONSTRAINT core_user_groups_pkey;
       public            postgres    false    209            $           2606    16766 @   core_user_groups core_user_groups_user_id_group_id_c82fcad1_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_group_id_c82fcad1_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.core_user_groups DROP CONSTRAINT core_user_groups_user_id_group_id_c82fcad1_uniq;
       public            postgres    false    209    209                       2606    16703    core_user core_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.core_user DROP CONSTRAINT core_user_pkey;
       public            postgres    false    207            3           2606    16763 :   core_user_user_permissions core_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.core_user_user_permissions DROP CONSTRAINT core_user_user_permissions_pkey;
       public            postgres    false    218            6           2606    16793 Y   core_user_user_permissions core_user_user_permissions_user_id_permission_id_73ea0daa_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_permission_id_73ea0daa_uniq UNIQUE (user_id, permission_id);
 ?   ALTER TABLE ONLY public.core_user_user_permissions DROP CONSTRAINT core_user_user_permissions_user_id_permission_id_73ea0daa_uniq;
       public            postgres    false    218    218                       2606    16705     core_user core_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.core_user DROP CONSTRAINT core_user_username_key;
       public            postgres    false    207            9           2606    16817 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    220                       2606    16640 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     ?   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    199    199                       2606    16638 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    199                       2606    16630 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    197            =           2606    16837 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    221                       1259    16692    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    203                       1259    16688 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    205                       1259    16689 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    205            	           1259    16674 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    201            '           1259    16790    core_book_title_id_b89b02e7    INDEX     U   CREATE INDEX core_book_title_id_b89b02e7 ON public.core_book USING btree (title_id);
 /   DROP INDEX public.core_book_title_id_b89b02e7;
       public            postgres    false    211            ,           1259    16910 "   core_booktracking_book_id_29e358c2    INDEX     c   CREATE INDEX core_booktracking_book_id_29e358c2 ON public.core_booktracking USING btree (book_id);
 6   DROP INDEX public.core_booktracking_book_id_29e358c2;
       public            postgres    false    216            -           1259    16886 '   core_booktracking_librarian_id_c3ceb7e5    INDEX     m   CREATE INDEX core_booktracking_librarian_id_c3ceb7e5 ON public.core_booktracking USING btree (librarian_id);
 ;   DROP INDEX public.core_booktracking_librarian_id_c3ceb7e5;
       public            postgres    false    216            0           1259    16789 "   core_booktracking_user_id_0bde2dd4    INDEX     f   CREATE INDEX core_booktracking_user_id_0bde2dd4 ON public.core_booktracking USING btree (student_id);
 6   DROP INDEX public.core_booktracking_user_id_0bde2dd4;
       public            postgres    false    216                       1259    16778 "   core_user_groups_group_id_fe8c697f    INDEX     c   CREATE INDEX core_user_groups_group_id_fe8c697f ON public.core_user_groups USING btree (group_id);
 6   DROP INDEX public.core_user_groups_group_id_fe8c697f;
       public            postgres    false    209            "           1259    16777 !   core_user_groups_user_id_70b4d9b8    INDEX     a   CREATE INDEX core_user_groups_user_id_70b4d9b8 ON public.core_user_groups USING btree (user_id);
 5   DROP INDEX public.core_user_groups_user_id_70b4d9b8;
       public            postgres    false    209                       1259    16855    core_user_role_id_8de62872    INDEX     S   CREATE INDEX core_user_role_id_8de62872 ON public.core_user USING btree (role_id);
 .   DROP INDEX public.core_user_role_id_8de62872;
       public            postgres    false    207            1           1259    16805 1   core_user_user_permissions_permission_id_35ccf601    INDEX     ?   CREATE INDEX core_user_user_permissions_permission_id_35ccf601 ON public.core_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.core_user_user_permissions_permission_id_35ccf601;
       public            postgres    false    218            4           1259    16804 +   core_user_user_permissions_user_id_085123d3    INDEX     u   CREATE INDEX core_user_user_permissions_user_id_085123d3 ON public.core_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.core_user_user_permissions_user_id_085123d3;
       public            postgres    false    218                       1259    16764     core_user_username_36e4f7f7_like    INDEX     n   CREATE INDEX core_user_username_36e4f7f7_like ON public.core_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.core_user_username_36e4f7f7_like;
       public            postgres    false    207            7           1259    16828 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    220            :           1259    16829 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    220            ;           1259    16839 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    221            >           1259    16838 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    221            A           2606    16683 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    2829    201    205            @           2606    16678 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    205    203    2834            ?           2606    16669 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    2824    201    199            E           2606    16746 6   core_book core_book_title_id_b89b02e7_fk_core_title_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_book
    ADD CONSTRAINT core_book_title_id_b89b02e7_fk_core_title_id FOREIGN KEY (title_id) REFERENCES public.core_title(id) DEFERRABLE INITIALLY DEFERRED;
 `   ALTER TABLE ONLY public.core_book DROP CONSTRAINT core_book_title_id_b89b02e7_fk_core_title_id;
       public          postgres    false    214    211    2859            H           2606    16911 D   core_booktracking core_booktracking_book_id_29e358c2_fk_core_book_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_booktracking
    ADD CONSTRAINT core_booktracking_book_id_29e358c2_fk_core_book_id FOREIGN KEY (book_id) REFERENCES public.core_book(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_booktracking DROP CONSTRAINT core_booktracking_book_id_29e358c2_fk_core_book_id;
       public          postgres    false    216    211    2854            F           2606    16892 I   core_booktracking core_booktracking_librarian_id_c3ceb7e5_fk_core_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_booktracking
    ADD CONSTRAINT core_booktracking_librarian_id_c3ceb7e5_fk_core_user_id FOREIGN KEY (librarian_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;
 s   ALTER TABLE ONLY public.core_booktracking DROP CONSTRAINT core_booktracking_librarian_id_c3ceb7e5_fk_core_user_id;
       public          postgres    false    216    207    2842            G           2606    16897 G   core_booktracking core_booktracking_student_id_e08c52cb_fk_core_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_booktracking
    ADD CONSTRAINT core_booktracking_student_id_e08c52cb_fk_core_user_id FOREIGN KEY (student_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.core_booktracking DROP CONSTRAINT core_booktracking_student_id_e08c52cb_fk_core_user_id;
       public          postgres    false    207    2842    216            D           2606    16772 D   core_user_groups core_user_groups_group_id_fe8c697f_fk_auth_group_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_group_id_fe8c697f_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.core_user_groups DROP CONSTRAINT core_user_groups_group_id_fe8c697f_fk_auth_group_id;
       public          postgres    false    203    209    2834            C           2606    16767 B   core_user_groups core_user_groups_user_id_70b4d9b8_fk_core_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_user_groups
    ADD CONSTRAINT core_user_groups_user_id_70b4d9b8_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.core_user_groups DROP CONSTRAINT core_user_groups_user_id_70b4d9b8_fk_core_user_id;
       public          postgres    false    209    207    2842            B           2606    16866 '   core_user core_user_role_id_8de62872_fk    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_user
    ADD CONSTRAINT core_user_role_id_8de62872_fk FOREIGN KEY (role_id) REFERENCES public.core_role(id) DEFERRABLE INITIALLY DEFERRED;
 Q   ALTER TABLE ONLY public.core_user DROP CONSTRAINT core_user_role_id_8de62872_fk;
       public          postgres    false    2857    207    212            J           2606    16799 S   core_user_user_permissions core_user_user_permi_permission_id_35ccf601_fk_auth_perm    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permi_permission_id_35ccf601_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.core_user_user_permissions DROP CONSTRAINT core_user_user_permi_permission_id_35ccf601_fk_auth_perm;
       public          postgres    false    201    2829    218            I           2606    16794 V   core_user_user_permissions core_user_user_permissions_user_id_085123d3_fk_core_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.core_user_user_permissions
    ADD CONSTRAINT core_user_user_permissions_user_id_085123d3_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;
 ?   ALTER TABLE ONLY public.core_user_user_permissions DROP CONSTRAINT core_user_user_permissions_user_id_085123d3_fk_core_user_id;
       public          postgres    false    207    2842    218            K           2606    16818 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2824    220    199            L           2606    16823 B   django_admin_log django_admin_log_user_id_c564eba6_fk_core_user_id    FK CONSTRAINT     ?   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_user_id FOREIGN KEY (user_id) REFERENCES public.core_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_core_user_id;
       public          postgres    false    207    2842    220            ?      x?????? ? ?      ?      x?????? ? ?      ?   ?  x?e?Mn?0F??)8A??m{?.+U4?(J
H?ܾ0??g?Ξy?{??ޚ>i.??6????題Z??랶:%??????/E0#??nn??/E0'??s?
*??覟n???W)?ł.?? a?؊?	????? ɑq6X??pUF???????>????#??F? ??`p?e??dy?N?$??V?&?:V?/?ہ????(z??W?U????ۂ??Ӧ沑?g?,w??v,=E??U@L0??nR%?lK??? ]?x@L> (x?M<???q?_???*J?Z?:??.?= f ?=?mJ??8??ps???m?31??"?br ?lnѦd????-%/ݲ???C?=D?tj?g?(Ƕ>?J??O?????Z????tVm8??"~a?v??8???$m9^+?/Z??,??      ?   L   x?u̻?@??\9:k???q-?_????h?dGv?/?h?c~u?K?Q?j?0?Ss?Y|Ou??<?*"?y?      ?   |   x?}?K
B1??q?
??p?h?d-????D??L???"i?&~?L??As???W???WQV?}ZV?C??;g???y?#-??"?W?b[????3??$?c?I???????o:?a?/}??Z?C4)      ?   #   x?3?	uq??2???t
r?t??????? Y??      ?   q   x?u?;
?0k?)???OZ??YR?8"!M ??)?|??a ?	??y?U?j???(#??&??r_o?q	?tp?v]=??i??=ͺ?g[z??????XV???)????ПNQD^?Z-u      ?   Y  x?m??n?@?5<E??8?CҤ??T???bL
(:T*O_L?1?nnnNN??J\?K?~?؇
d??>??????l??;??*?bW????qz>??z?G???;?K8??h?9c??? ?6P?P}????H Ą? ?J???5丿?v??$???Iʇ.Ґ?(bI?@?w?/?w?Tz??0`?O?k?|?gơ<;d{?Z-]j?a??????C|K???F???qo-.??dw?/?l???("?" ?$?w??s?R??ͮ]???:?+/8??@?6?????T???=????ް??1?+?f???o???X????95?%"??|?H?V?y??`??      ?      x?????? ? ?      ?      x?????? ? ?      ?     x???=O?0?g?WX?@?????[?*!?0CJ,D?????'???4B????}???????8? P
 ??? ?ؽ????!{>?????*?????<Â?<??`P??????M??I?Z?'??r?F??}Ʒ?????K?{ܰ?1VN	?????n??`???pR????xh???B$??t@+???? ?짉E?9+???h;֡???j???4?*L??3S???????b0??s?O}?2????Q??4UN?????)e?K?H?)????c?/^DQ?<,??      ?   t   x?M?K?0?~?A??wa?+Dm??v?=???Ӽ??sM???]7(TQa]?Y??c_?J-8?$?[?[a??????/??e?Ɗk?Qdƭ??¸w??M???rӜr?c?=?8G      ?   [  x????n? ??????U#??,+!???,?Q???%??Urc????9sf???d??>?v? ??v?K?? ?$_@?B???!?@(?o???-t?}?X?\?r???uER??"3????%"??A[h㓍?lc??х?fԽ??????Uƌ??bE?4?????) ?x??[J????s?V"??"?????ra??A???
D6???;???Q???d?0$??0Tc??!??ѤGm?GmcQ?v???P??UF'W?y?1???J??)?J(P3
?P-?S??9?T?qs.?z:g??>???yc?u}??sp?2?۪^]|?,??³?,e??&I??|c??{???Dg??1?ś?]??k?s5??d"?; ?re{?C*c???Iނ;?z,??1?AmF??????????\_?'?|????1?y?-????+cE?2??AܰdS???撗?????(:?;*v?32?$?F?Y???j?}?)?ûNzL?1?????N?7\e??b???????KuO?%????|?Rk?ߤ??/??D?u$'"L?Ά???=??6?4??*???,;???,?-
??n???[Z      ?   
  x??Ɏ?0  г|??'?R
??X?LbX
?TPYį??{?,??=?F????G?XYw??ߚ??gs?y?WB?X?????X?%P?~?ܿ???eSn??e?"m񐟇?j?UűὤD?Ϋ???qBZ?Y????yĚ?En?T9??(g????	W6!??e?G:E?ؙ[q}??p?]??k?ص?2N?-s??Ґ?/FZ}x?L?}??s??b*????۫?3YK-???@%?( ??T? ??A?s?]?     