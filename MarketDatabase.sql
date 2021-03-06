PGDMP                         x            market    12.2    12.2 2    D           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            E           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            F           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            G           1262    16393    market    DATABASE     �   CREATE DATABASE market WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'English_United States.1252' LC_CTYPE = 'English_United States.1252';
    DROP DATABASE market;
                postgres    false            �            1259    16396    brands    TABLE     \   CREATE TABLE public.brands (
    id bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.brands;
       public         heap    postgres    false            �            1259    16394    brands_id_seq    SEQUENCE     v   CREATE SEQUENCE public.brands_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.brands_id_seq;
       public          postgres    false    203            H           0    0    brands_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.brands_id_seq OWNED BY public.brands.id;
          public          postgres    false    202            �            1259    16439 	   customers    TABLE     _   CREATE TABLE public.customers (
    id bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.customers;
       public         heap    postgres    false            �            1259    16437    customers_id_seq    SEQUENCE     y   CREATE SEQUENCE public.customers_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.customers_id_seq;
       public          postgres    false    209            I           0    0    customers_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.customers_id_seq OWNED BY public.customers.id;
          public          postgres    false    208            �            1259    16450    orders    TABLE     v   CREATE TABLE public.orders (
    id bigint NOT NULL,
    order_date date NOT NULL,
    customer_id bigint NOT NULL
);
    DROP TABLE public.orders;
       public         heap    postgres    false            �            1259    16448    orders_id_seq    SEQUENCE     v   CREATE SEQUENCE public.orders_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 $   DROP SEQUENCE public.orders_id_seq;
       public          postgres    false    211            J           0    0    orders_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE public.orders_id_seq OWNED BY public.orders.id;
          public          postgres    false    210            �            1259    16423    product_images    TABLE     �   CREATE TABLE public.product_images (
    id bigint NOT NULL,
    image_path character varying NOT NULL,
    product_id bigint NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            �            1259    16421    product_images_id_seq    SEQUENCE     ~   CREATE SEQUENCE public.product_images_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ,   DROP SEQUENCE public.product_images_id_seq;
       public          postgres    false    207            K           0    0    product_images_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.product_images_id_seq OWNED BY public.product_images.id;
          public          postgres    false    206            �            1259    16407    products    TABLE     |   CREATE TABLE public.products (
    id bigint NOT NULL,
    name character varying NOT NULL,
    brand_id bigint NOT NULL
);
    DROP TABLE public.products;
       public         heap    postgres    false            �            1259    16405    products_id_seq    SEQUENCE     x   CREATE SEQUENCE public.products_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.products_id_seq;
       public          postgres    false    205            L           0    0    products_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.products_id_seq OWNED BY public.products.id;
          public          postgres    false    204            �            1259    16463    shipping    TABLE        CREATE TABLE public.shipping (
    id bigint NOT NULL,
    address character varying NOT NULL,
    order_id bigint NOT NULL
);
    DROP TABLE public.shipping;
       public         heap    postgres    false            �            1259    16461    shipping_id_seq    SEQUENCE     x   CREATE SEQUENCE public.shipping_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 &   DROP SEQUENCE public.shipping_id_seq;
       public          postgres    false    213            M           0    0    shipping_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE public.shipping_id_seq OWNED BY public.shipping.id;
          public          postgres    false    212            �
           2604    16399 	   brands id    DEFAULT     f   ALTER TABLE ONLY public.brands ALTER COLUMN id SET DEFAULT nextval('public.brands_id_seq'::regclass);
 8   ALTER TABLE public.brands ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    203    202    203            �
           2604    16442    customers id    DEFAULT     l   ALTER TABLE ONLY public.customers ALTER COLUMN id SET DEFAULT nextval('public.customers_id_seq'::regclass);
 ;   ALTER TABLE public.customers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    208    209    209            �
           2604    16453 	   orders id    DEFAULT     f   ALTER TABLE ONLY public.orders ALTER COLUMN id SET DEFAULT nextval('public.orders_id_seq'::regclass);
 8   ALTER TABLE public.orders ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �
           2604    16426    product_images id    DEFAULT     v   ALTER TABLE ONLY public.product_images ALTER COLUMN id SET DEFAULT nextval('public.product_images_id_seq'::regclass);
 @   ALTER TABLE public.product_images ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    207    206    207            �
           2604    16410    products id    DEFAULT     j   ALTER TABLE ONLY public.products ALTER COLUMN id SET DEFAULT nextval('public.products_id_seq'::regclass);
 :   ALTER TABLE public.products ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    204    205    205            �
           2604    16466    shipping id    DEFAULT     j   ALTER TABLE ONLY public.shipping ALTER COLUMN id SET DEFAULT nextval('public.shipping_id_seq'::regclass);
 :   ALTER TABLE public.shipping ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    212    213    213            7          0    16396    brands 
   TABLE DATA           *   COPY public.brands (id, name) FROM stdin;
    public          postgres    false    203   m4       =          0    16439 	   customers 
   TABLE DATA           -   COPY public.customers (id, name) FROM stdin;
    public          postgres    false    209   �4       ?          0    16450    orders 
   TABLE DATA           =   COPY public.orders (id, order_date, customer_id) FROM stdin;
    public          postgres    false    211   5       ;          0    16423    product_images 
   TABLE DATA           D   COPY public.product_images (id, image_path, product_id) FROM stdin;
    public          postgres    false    207   J5       9          0    16407    products 
   TABLE DATA           6   COPY public.products (id, name, brand_id) FROM stdin;
    public          postgres    false    205   �5       A          0    16463    shipping 
   TABLE DATA           9   COPY public.shipping (id, address, order_id) FROM stdin;
    public          postgres    false    213   �5       N           0    0    brands_id_seq    SEQUENCE SET     <   SELECT pg_catalog.setval('public.brands_id_seq', 10, true);
          public          postgres    false    202            O           0    0    customers_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.customers_id_seq', 8, true);
          public          postgres    false    208            P           0    0    orders_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('public.orders_id_seq', 5, true);
          public          postgres    false    210            Q           0    0    product_images_id_seq    SEQUENCE SET     D   SELECT pg_catalog.setval('public.product_images_id_seq', 18, true);
          public          postgres    false    206            R           0    0    products_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.products_id_seq', 9, true);
          public          postgres    false    204            S           0    0    shipping_id_seq    SEQUENCE SET     =   SELECT pg_catalog.setval('public.shipping_id_seq', 3, true);
          public          postgres    false    212            �
           2606    16404    brands brands_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.brands
    ADD CONSTRAINT brands_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.brands DROP CONSTRAINT brands_pkey;
       public            postgres    false    203            �
           2606    16447    customers customers_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.customers
    ADD CONSTRAINT customers_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.customers DROP CONSTRAINT customers_pkey;
       public            postgres    false    209            �
           2606    16455    orders orders_pkey 
   CONSTRAINT     P   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT orders_pkey PRIMARY KEY (id);
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT orders_pkey;
       public            postgres    false    211            �
           2606    16431 "   product_images product_images_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_images_pkey PRIMARY KEY (id);
 L   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_images_pkey;
       public            postgres    false    207            �
           2606    16415    products products_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.products
    ADD CONSTRAINT products_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.products DROP CONSTRAINT products_pkey;
       public            postgres    false    205            �
           2606    16471    shipping shipping_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.shipping
    ADD CONSTRAINT shipping_pkey PRIMARY KEY (id);
 @   ALTER TABLE ONLY public.shipping DROP CONSTRAINT shipping_pkey;
       public            postgres    false    213            �
           2606    16416    products brand_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.products
    ADD CONSTRAINT brand_id FOREIGN KEY (brand_id) REFERENCES public.brands(id) ON UPDATE CASCADE ON DELETE CASCADE;
 ;   ALTER TABLE ONLY public.products DROP CONSTRAINT brand_id;
       public          postgres    false    205    2729    203            �
           2606    16456    orders customer_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.orders
    ADD CONSTRAINT customer_id FOREIGN KEY (customer_id) REFERENCES public.customers(id) ON UPDATE SET NULL ON DELETE SET NULL;
 <   ALTER TABLE ONLY public.orders DROP CONSTRAINT customer_id;
       public          postgres    false    2735    209    211            �
           2606    16472    shipping order_id    FK CONSTRAINT     r   ALTER TABLE ONLY public.shipping
    ADD CONSTRAINT order_id FOREIGN KEY (order_id) REFERENCES public.orders(id);
 ;   ALTER TABLE ONLY public.shipping DROP CONSTRAINT order_id;
       public          postgres    false    211    2737    213            �
           2606    16432    product_images product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT product_id FOREIGN KEY (product_id) REFERENCES public.products(id) ON UPDATE RESTRICT ON DELETE RESTRICT;
 C   ALTER TABLE ONLY public.product_images DROP CONSTRAINT product_id;
       public          postgres    false    2731    207    205            7   ?   x�3�t��+K-*N�2���L�2��9�R�S�L��pY3��9L�B�&fh ����� �� 
      =   9   x�3�N�)NL��I�2��I�̩�2�J��M�2�t	�B�͐��C�,�Jc���� N�8      ?   5   x�Uɱ  ����?�q�9,���Mᱝ2B���Mȹ5���Y�8�
��      ;   *   x�3�t�4��t�4��t�4�24���-��1z\\\ ���      9   9   x�3�N-H,)�4�2�tJ�*�4�2��HM�)�4�2�,��Zp&Ad-93��1z\\\ #E�      A   0   x�3���K��K-�L�4�2���/JM�4�2���ess��qqq �
�     