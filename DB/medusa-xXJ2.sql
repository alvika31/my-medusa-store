PGDMP  8                
    {            medusa-xXJ2    16.0    16.0 �   E           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            F           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            G           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            H           1262    16398    medusa-xXJ2    DATABASE     �   CREATE DATABASE "medusa-xXJ2" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_Indonesia.1252';
    DROP DATABASE "medusa-xXJ2";
                postgres    false                        3079    18767    pg_trgm 	   EXTENSION     ;   CREATE EXTENSION IF NOT EXISTS pg_trgm WITH SCHEMA public;
    DROP EXTENSION pg_trgm;
                   false            I           0    0    EXTENSION pg_trgm    COMMENT     e   COMMENT ON EXTENSION pg_trgm IS 'text similarity measurement and index searching based on trigrams';
                        false    2            .           1247    18574    PAYMENT_COLLECTION_STATUS_ENUM    TYPE     �   CREATE TYPE public."PAYMENT_COLLECTION_STATUS_ENUM" AS ENUM (
    'not_paid',
    'awaiting',
    'authorized',
    'partially_authorized',
    'canceled'
);
 3   DROP TYPE public."PAYMENT_COLLECTION_STATUS_ENUM";
       public          postgres    false            +           1247    18571    PAYMENT_COLLECTION_TYPE_ENUM    TYPE     P   CREATE TYPE public."PAYMENT_COLLECTION_TYPE_ENUM" AS ENUM (
    'order_edit'
);
 1   DROP TYPE public."PAYMENT_COLLECTION_TYPE_ENUM";
       public          postgres    false            �           1247    18006    cart_type_enum    TYPE     }   CREATE TYPE public.cart_type_enum AS ENUM (
    'default',
    'swap',
    'draft_order',
    'payment_link',
    'claim'
);
 !   DROP TYPE public.cart_type_enum;
       public          postgres    false            �           1247    17463    claim_item_reason_enum    TYPE     �   CREATE TYPE public.claim_item_reason_enum AS ENUM (
    'missing_item',
    'wrong_item',
    'production_failure',
    'other'
);
 )   DROP TYPE public.claim_item_reason_enum;
       public          postgres    false            �           1247    17492 #   claim_order_fulfillment_status_enum    TYPE     �   CREATE TYPE public.claim_order_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'partially_fulfilled',
    'fulfilled',
    'partially_shipped',
    'shipped',
    'partially_returned',
    'returned',
    'canceled',
    'requires_action'
);
 6   DROP TYPE public.claim_order_fulfillment_status_enum;
       public          postgres    false            �           1247    17484    claim_order_payment_status_enum    TYPE     m   CREATE TYPE public.claim_order_payment_status_enum AS ENUM (
    'na',
    'not_refunded',
    'refunded'
);
 2   DROP TYPE public.claim_order_payment_status_enum;
       public          postgres    false            �           1247    17512    claim_order_type_enum    TYPE     R   CREATE TYPE public.claim_order_type_enum AS ENUM (
    'refund',
    'replace'
);
 (   DROP TYPE public.claim_order_type_enum;
       public          postgres    false            �           1247    18224     discount_condition_operator_enum    TYPE     X   CREATE TYPE public.discount_condition_operator_enum AS ENUM (
    'in',
    'not_in'
);
 3   DROP TYPE public.discount_condition_operator_enum;
       public          postgres    false            �           1247    18213    discount_condition_type_enum    TYPE     �   CREATE TYPE public.discount_condition_type_enum AS ENUM (
    'products',
    'product_types',
    'product_collections',
    'product_tags',
    'customer_groups'
);
 /   DROP TYPE public.discount_condition_type_enum;
       public          postgres    false                       1247    16592    discount_rule_allocation_enum    TYPE     V   CREATE TYPE public.discount_rule_allocation_enum AS ENUM (
    'total',
    'item'
);
 0   DROP TYPE public.discount_rule_allocation_enum;
       public          postgres    false                       1247    16584    discount_rule_type_enum    TYPE     k   CREATE TYPE public.discount_rule_type_enum AS ENUM (
    'fixed',
    'percentage',
    'free_shipping'
);
 *   DROP TYPE public.discount_rule_type_enum;
       public          postgres    false            �           1247    17758    draft_order_status_enum    TYPE     T   CREATE TYPE public.draft_order_status_enum AS ENUM (
    'open',
    'completed'
);
 *   DROP TYPE public.draft_order_status_enum;
       public          postgres    false            �           1247    17962    invite_role_enum    TYPE     \   CREATE TYPE public.invite_role_enum AS ENUM (
    'admin',
    'member',
    'developer'
);
 #   DROP TYPE public.invite_role_enum;
       public          postgres    false            A           1247    16824    order_fulfillment_status_enum    TYPE     �   CREATE TYPE public.order_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'partially_fulfilled',
    'fulfilled',
    'partially_shipped',
    'shipped',
    'partially_returned',
    'returned',
    'canceled',
    'requires_action'
);
 0   DROP TYPE public.order_fulfillment_status_enum;
       public          postgres    false            "           1247    18508    order_item_change_type_enum    TYPE     q   CREATE TYPE public.order_item_change_type_enum AS ENUM (
    'item_add',
    'item_remove',
    'item_update'
);
 .   DROP TYPE public.order_item_change_type_enum;
       public          postgres    false            D           1247    16844    order_payment_status_enum    TYPE     �   CREATE TYPE public.order_payment_status_enum AS ENUM (
    'not_paid',
    'awaiting',
    'captured',
    'partially_refunded',
    'refunded',
    'canceled',
    'requires_action'
);
 ,   DROP TYPE public.order_payment_status_enum;
       public          postgres    false            >           1247    16813    order_status_enum    TYPE     �   CREATE TYPE public.order_status_enum AS ENUM (
    'pending',
    'completed',
    'archived',
    'canceled',
    'requires_action'
);
 $   DROP TYPE public.order_status_enum;
       public          postgres    false                       1247    16618    payment_session_status_enum    TYPE     �   CREATE TYPE public.payment_session_status_enum AS ENUM (
    'authorized',
    'pending',
    'requires_more',
    'error',
    'canceled'
);
 .   DROP TYPE public.payment_session_status_enum;
       public          postgres    false            
           1247    18358    price_list_status_enum    TYPE     Q   CREATE TYPE public.price_list_status_enum AS ENUM (
    'active',
    'draft'
);
 )   DROP TYPE public.price_list_status_enum;
       public          postgres    false                       1247    18352    price_list_type_enum    TYPE     P   CREATE TYPE public.price_list_type_enum AS ENUM (
    'sale',
    'override'
);
 '   DROP TYPE public.price_list_type_enum;
       public          postgres    false            �           1247    17941    product_status_enum    TYPE     q   CREATE TYPE public.product_status_enum AS ENUM (
    'draft',
    'proposed',
    'published',
    'rejected'
);
 &   DROP TYPE public.product_status_enum;
       public          postgres    false            �           1247    17540    refund_reason_enum    TYPE     v   CREATE TYPE public.refund_reason_enum AS ENUM (
    'discount',
    'return',
    'swap',
    'claim',
    'other'
);
 %   DROP TYPE public.refund_reason_enum;
       public          postgres    false            �           1247    17866    return_status_enum    TYPE     z   CREATE TYPE public.return_status_enum AS ENUM (
    'requested',
    'received',
    'requires_action',
    'canceled'
);
 %   DROP TYPE public.return_status_enum;
       public          postgres    false                       1247    16541    shipping_option_price_type_enum    TYPE     b   CREATE TYPE public.shipping_option_price_type_enum AS ENUM (
    'flat_rate',
    'calculated'
);
 2   DROP TYPE public.shipping_option_price_type_enum;
       public          postgres    false            �           1247    16528 %   shipping_option_requirement_type_enum    TYPE     m   CREATE TYPE public.shipping_option_requirement_type_enum AS ENUM (
    'min_subtotal',
    'max_subtotal'
);
 8   DROP TYPE public.shipping_option_requirement_type_enum;
       public          postgres    false                       1247    16557    shipping_profile_type_enum    TYPE     h   CREATE TYPE public.shipping_profile_type_enum AS ENUM (
    'default',
    'gift_card',
    'custom'
);
 -   DROP TYPE public.shipping_profile_type_enum;
       public          postgres    false                       1247    18487    swap_fulfillment_status_enum    TYPE     �   CREATE TYPE public.swap_fulfillment_status_enum AS ENUM (
    'not_fulfilled',
    'fulfilled',
    'shipped',
    'partially_shipped',
    'canceled',
    'requires_action'
);
 /   DROP TYPE public.swap_fulfillment_status_enum;
       public          postgres    false            �           1247    17890    swap_payment_status_enum    TYPE     �   CREATE TYPE public.swap_payment_status_enum AS ENUM (
    'not_paid',
    'awaiting',
    'captured',
    'confirmed',
    'canceled',
    'difference_refunded',
    'partially_refunded',
    'refunded',
    'requires_action'
);
 +   DROP TYPE public.swap_payment_status_enum;
       public          postgres    false            �           1247    17982    user_role_enum    TYPE     Z   CREATE TYPE public.user_role_enum AS ENUM (
    'admin',
    'member',
    'developer'
);
 !   DROP TYPE public.user_role_enum;
       public          postgres    false            �            1259    16888    address    TABLE     g  CREATE TABLE public.address (
    id character varying NOT NULL,
    customer_id character varying,
    company character varying,
    first_name character varying,
    last_name character varying,
    address_1 character varying,
    address_2 character varying,
    city character varying,
    country_code character varying,
    province character varying,
    postal_code character varying,
    phone character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.address;
       public         heap    postgres    false            7           1259    18656    analytics_config    TABLE     w  CREATE TABLE public.analytics_config (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    user_id character varying NOT NULL,
    opt_out boolean DEFAULT false NOT NULL,
    anonymize boolean DEFAULT false NOT NULL
);
 $   DROP TABLE public.analytics_config;
       public         heap    postgres    false            /           1259    18422 	   batch_job    TABLE     |  CREATE TABLE public.batch_job (
    id character varying NOT NULL,
    type text NOT NULL,
    created_by character varying,
    context jsonb,
    result jsonb,
    dry_run boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    pre_processed_at timestamp with time zone,
    confirmed_at timestamp with time zone,
    processing_at timestamp with time zone,
    completed_at timestamp with time zone,
    failed_at timestamp with time zone,
    canceled_at timestamp with time zone,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public.batch_job;
       public         heap    postgres    false            �            1259    16675    cart    TABLE     �  CREATE TABLE public.cart (
    id character varying NOT NULL,
    email character varying,
    billing_address_id character varying,
    shipping_address_id character varying,
    region_id character varying NOT NULL,
    customer_id character varying,
    payment_id character varying,
    type public.cart_type_enum DEFAULT 'default'::public.cart_type_enum NOT NULL,
    completed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    context jsonb,
    payment_authorized_at timestamp with time zone,
    sales_channel_id character varying
);
    DROP TABLE public.cart;
       public         heap    postgres    false    1233    1233                       1259    16988    cart_discounts    TABLE     {   CREATE TABLE public.cart_discounts (
    cart_id character varying NOT NULL,
    discount_id character varying NOT NULL
);
 "   DROP TABLE public.cart_discounts;
       public         heap    postgres    false                       1259    16997    cart_gift_cards    TABLE     }   CREATE TABLE public.cart_gift_cards (
    cart_id character varying NOT NULL,
    gift_card_id character varying NOT NULL
);
 #   DROP TABLE public.cart_gift_cards;
       public         heap    postgres    false                       1259    17443    claim_image    TABLE     V  CREATE TABLE public.claim_image (
    id character varying NOT NULL,
    claim_item_id character varying NOT NULL,
    url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_image;
       public         heap    postgres    false                       1259    17471 
   claim_item    TABLE     �  CREATE TABLE public.claim_item (
    id character varying NOT NULL,
    claim_order_id character varying NOT NULL,
    item_id character varying NOT NULL,
    variant_id character varying NOT NULL,
    reason public.claim_item_reason_enum NOT NULL,
    note character varying,
    quantity integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_item;
       public         heap    postgres    false    1155                       1259    17528    claim_item_tags    TABLE     w   CREATE TABLE public.claim_item_tags (
    item_id character varying NOT NULL,
    tag_id character varying NOT NULL
);
 #   DROP TABLE public.claim_item_tags;
       public         heap    postgres    false                       1259    17517    claim_order    TABLE       CREATE TABLE public.claim_order (
    id character varying NOT NULL,
    payment_status public.claim_order_payment_status_enum DEFAULT 'na'::public.claim_order_payment_status_enum NOT NULL,
    fulfillment_status public.claim_order_fulfillment_status_enum DEFAULT 'not_fulfilled'::public.claim_order_fulfillment_status_enum NOT NULL,
    type public.claim_order_type_enum NOT NULL,
    order_id character varying NOT NULL,
    shipping_address_id character varying,
    refund_amount integer,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification boolean
);
    DROP TABLE public.claim_order;
       public         heap    postgres    false    1161    1164    1167    1161    1164                       1259    17452 	   claim_tag    TABLE     (  CREATE TABLE public.claim_tag (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.claim_tag;
       public         heap    postgres    false            �            1259    16449    country    TABLE       CREATE TABLE public.country (
    id integer NOT NULL,
    iso_2 character varying NOT NULL,
    iso_3 character varying NOT NULL,
    num_code integer NOT NULL,
    name character varying NOT NULL,
    display_name character varying NOT NULL,
    region_id character varying
);
    DROP TABLE public.country;
       public         heap    postgres    false            �            1259    16448    country_id_seq    SEQUENCE     �   CREATE SEQUENCE public.country_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 %   DROP SEQUENCE public.country_id_seq;
       public          postgres    false    224            J           0    0    country_id_seq    SEQUENCE OWNED BY     A   ALTER SEQUENCE public.country_id_seq OWNED BY public.country.id;
          public          postgres    false    223            �            1259    16441    currency    TABLE     �   CREATE TABLE public.currency (
    code character varying NOT NULL,
    symbol character varying NOT NULL,
    symbol_native character varying NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.currency;
       public         heap    postgres    false                       1259    17992    custom_shipping_option    TABLE     }  CREATE TABLE public.custom_shipping_option (
    id character varying NOT NULL,
    price integer NOT NULL,
    shipping_option_id character varying NOT NULL,
    cart_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 *   DROP TABLE public.custom_shipping_option;
       public         heap    postgres    false            �            1259    16875    customer    TABLE       CREATE TABLE public.customer (
    id character varying NOT NULL,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    billing_address_id character varying,
    password_hash character varying,
    phone character varying,
    has_account boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.customer;
       public         heap    postgres    false            $           1259    18183    customer_group    TABLE     ,  CREATE TABLE public.customer_group (
    id character varying NOT NULL,
    name character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 "   DROP TABLE public.customer_group;
       public         heap    postgres    false            %           1259    18193    customer_group_customers    TABLE     �   CREATE TABLE public.customer_group_customers (
    customer_group_id character varying NOT NULL,
    customer_id character varying NOT NULL
);
 ,   DROP TABLE public.customer_group_customers;
       public         heap    postgres    false            �            1259    16606    discount    TABLE     �  CREATE TABLE public.discount (
    id character varying NOT NULL,
    code character varying NOT NULL,
    is_dynamic boolean NOT NULL,
    rule_id character varying,
    is_disabled boolean NOT NULL,
    parent_discount_id character varying,
    starts_at timestamp with time zone DEFAULT CURRENT_TIMESTAMP NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    usage_limit integer,
    usage_count integer DEFAULT 0 NOT NULL,
    valid_duration character varying
);
    DROP TABLE public.discount;
       public         heap    postgres    false            &           1259    18229    discount_condition    TABLE     �  CREATE TABLE public.discount_condition (
    id character varying NOT NULL,
    type public.discount_condition_type_enum NOT NULL,
    operator public.discount_condition_operator_enum NOT NULL,
    discount_rule_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 &   DROP TABLE public.discount_condition;
       public         heap    postgres    false    1266    1263            '           1259    18241 !   discount_condition_customer_group    TABLE     -  CREATE TABLE public.discount_condition_customer_group (
    customer_group_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 5   DROP TABLE public.discount_condition_customer_group;
       public         heap    postgres    false            +           1259    18277    discount_condition_product    TABLE       CREATE TABLE public.discount_condition_product (
    product_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 .   DROP TABLE public.discount_condition_product;
       public         heap    postgres    false            (           1259    18250 %   discount_condition_product_collection    TABLE     5  CREATE TABLE public.discount_condition_product_collection (
    product_collection_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 9   DROP TABLE public.discount_condition_product_collection;
       public         heap    postgres    false            )           1259    18259    discount_condition_product_tag    TABLE     '  CREATE TABLE public.discount_condition_product_tag (
    product_tag_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 2   DROP TABLE public.discount_condition_product_tag;
       public         heap    postgres    false            *           1259    18268    discount_condition_product_type    TABLE     )  CREATE TABLE public.discount_condition_product_type (
    product_type_id character varying NOT NULL,
    condition_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 3   DROP TABLE public.discount_condition_product_type;
       public         heap    postgres    false                       1259    16979    discount_regions    TABLE        CREATE TABLE public.discount_regions (
    discount_id character varying NOT NULL,
    region_id character varying NOT NULL
);
 $   DROP TABLE public.discount_regions;
       public         heap    postgres    false            �            1259    16597    discount_rule    TABLE     �  CREATE TABLE public.discount_rule (
    id character varying NOT NULL,
    description character varying,
    type public.discount_rule_type_enum NOT NULL,
    value integer NOT NULL,
    allocation public.discount_rule_allocation_enum,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 !   DROP TABLE public.discount_rule;
       public         heap    postgres    false    1041    1044                       1259    16970    discount_rule_products    TABLE     �   CREATE TABLE public.discount_rule_products (
    discount_rule_id character varying NOT NULL,
    product_id character varying NOT NULL
);
 *   DROP TABLE public.discount_rule_products;
       public         heap    postgres    false                       1259    17764    draft_order    TABLE     =  CREATE TABLE public.draft_order (
    id character varying NOT NULL,
    status public.draft_order_status_enum DEFAULT 'open'::public.draft_order_status_enum NOT NULL,
    display_id integer NOT NULL,
    cart_id character varying,
    order_id character varying,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    completed_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification_order boolean
);
    DROP TABLE public.draft_order;
       public         heap    postgres    false    1197    1197                       1259    17763    draft_order_display_id_seq    SEQUENCE     �   CREATE SEQUENCE public.draft_order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.draft_order_display_id_seq;
       public          postgres    false    279            K           0    0    draft_order_display_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.draft_order_display_id_seq OWNED BY public.draft_order.display_id;
          public          postgres    false    278            �            1259    16423    fulfillment    TABLE     o  CREATE TABLE public.fulfillment (
    id character varying NOT NULL,
    swap_id character varying,
    order_id character varying,
    tracking_numbers jsonb DEFAULT '[]'::jsonb NOT NULL,
    data jsonb NOT NULL,
    shipped_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    provider_id character varying,
    claim_order_id character varying,
    no_notification boolean,
    location_id character varying
);
    DROP TABLE public.fulfillment;
       public         heap    postgres    false            �            1259    16416    fulfillment_item    TABLE     �   CREATE TABLE public.fulfillment_item (
    fulfillment_id character varying NOT NULL,
    item_id character varying NOT NULL,
    quantity integer NOT NULL
);
 $   DROP TABLE public.fulfillment_item;
       public         heap    postgres    false            �            1259    16408    fulfillment_provider    TABLE     �   CREATE TABLE public.fulfillment_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 (   DROP TABLE public.fulfillment_provider;
       public         heap    postgres    false            �            1259    16654 	   gift_card    TABLE       CREATE TABLE public.gift_card (
    id character varying NOT NULL,
    code character varying NOT NULL,
    value integer NOT NULL,
    balance integer NOT NULL,
    region_id character varying NOT NULL,
    order_id character varying,
    is_disabled boolean DEFAULT false NOT NULL,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    tax_rate real
);
    DROP TABLE public.gift_card;
       public         heap    postgres    false            �            1259    16784    gift_card_transaction    TABLE     /  CREATE TABLE public.gift_card_transaction (
    id character varying NOT NULL,
    gift_card_id character varying NOT NULL,
    order_id character varying NOT NULL,
    amount integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    is_taxable boolean,
    tax_rate real
);
 )   DROP TABLE public.gift_card_transaction;
       public         heap    postgres    false            �            1259    16897    idempotency_key    TABLE     �  CREATE TABLE public.idempotency_key (
    id character varying NOT NULL,
    idempotency_key character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    locked_at timestamp with time zone,
    request_method character varying,
    request_params jsonb,
    request_path character varying,
    response_code integer,
    response_body jsonb,
    recovery_point character varying DEFAULT 'started'::character varying NOT NULL
);
 #   DROP TABLE public.idempotency_key;
       public         heap    postgres    false            �            1259    16475    image    TABLE     "  CREATE TABLE public.image (
    id character varying NOT NULL,
    url character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.image;
       public         heap    postgres    false                       1259    17969    invite    TABLE     	  CREATE TABLE public.invite (
    id character varying NOT NULL,
    user_email character varying NOT NULL,
    role public.invite_role_enum DEFAULT 'member'::public.invite_role_enum,
    accepted boolean DEFAULT false NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    token character varying NOT NULL,
    expires_at timestamp with time zone DEFAULT now() NOT NULL
);
    DROP TABLE public.invite;
       public         heap    postgres    false    1221    1221            �            1259    16764 	   line_item    TABLE       CREATE TABLE public.line_item (
    id character varying NOT NULL,
    cart_id character varying,
    order_id character varying,
    swap_id character varying,
    title character varying NOT NULL,
    description character varying,
    thumbnail character varying,
    is_giftcard boolean DEFAULT false NOT NULL,
    should_merge boolean DEFAULT true NOT NULL,
    allow_discounts boolean DEFAULT true NOT NULL,
    has_shipping boolean,
    unit_price integer NOT NULL,
    variant_id character varying,
    quantity integer NOT NULL,
    fulfilled_quantity integer,
    returned_quantity integer,
    shipped_quantity integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    claim_order_id character varying,
    is_return boolean DEFAULT false NOT NULL,
    original_item_id character varying,
    order_edit_id character varying,
    CONSTRAINT "CHK_0cd85e15610d11b553d5e8fda6" CHECK ((shipped_quantity <= fulfilled_quantity)),
    CONSTRAINT "CHK_64eef00a5064887634f1680866" CHECK ((quantity > 0)),
    CONSTRAINT "CHK_91f40396d847f6ecfd9f752bf8" CHECK ((returned_quantity <= quantity)),
    CONSTRAINT "CHK_c61716c68f5ad5de2834c827d3" CHECK ((fulfilled_quantity <= quantity))
);
    DROP TABLE public.line_item;
       public         heap    postgres    false            .           1259    18398    line_item_adjustment    TABLE     �   CREATE TABLE public.line_item_adjustment (
    id character varying NOT NULL,
    item_id character varying NOT NULL,
    description character varying NOT NULL,
    discount_id character varying,
    amount numeric NOT NULL,
    metadata jsonb
);
 (   DROP TABLE public.line_item_adjustment;
       public         heap    postgres    false                       1259    18077    line_item_tax_line    TABLE     c  CREATE TABLE public.line_item_tax_line (
    id character varying NOT NULL,
    rate real NOT NULL,
    name character varying NOT NULL,
    code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    item_id character varying NOT NULL
);
 &   DROP TABLE public.line_item_tax_line;
       public         heap    postgres    false            �            1259    16400 
   migrations    TABLE     �   CREATE TABLE public.migrations (
    id integer NOT NULL,
    "timestamp" bigint NOT NULL,
    name character varying NOT NULL
);
    DROP TABLE public.migrations;
       public         heap    postgres    false            �            1259    16399    migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.migrations_id_seq;
       public          postgres    false    217            L           0    0    migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.migrations_id_seq OWNED BY public.migrations.id;
          public          postgres    false    216            �            1259    16484    money_amount    TABLE     �  CREATE TABLE public.money_amount (
    id character varying NOT NULL,
    currency_code character varying NOT NULL,
    amount integer NOT NULL,
    region_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    min_quantity integer,
    max_quantity integer,
    price_list_id character varying
);
     DROP TABLE public.money_amount;
       public         heap    postgres    false                       1259    17950    note    TABLE     �  CREATE TABLE public.note (
    id character varying NOT NULL,
    value character varying NOT NULL,
    resource_type character varying NOT NULL,
    resource_id character varying NOT NULL,
    author_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.note;
       public         heap    postgres    false                       1259    17673    notification    TABLE     �  CREATE TABLE public.notification (
    id character varying NOT NULL,
    event_name character varying,
    resource_type character varying NOT NULL,
    resource_id character varying NOT NULL,
    customer_id character varying,
    "to" character varying NOT NULL,
    data jsonb NOT NULL,
    parent_id character varying,
    provider_id character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
     DROP TABLE public.notification;
       public         heap    postgres    false                       1259    17665    notification_provider    TABLE     �   CREATE TABLE public.notification_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 )   DROP TABLE public.notification_provider;
       public         heap    postgres    false            �            1259    16907    oauth    TABLE     �   CREATE TABLE public.oauth (
    id character varying NOT NULL,
    display_name character varying NOT NULL,
    application_name character varying NOT NULL,
    install_url character varying,
    uninstall_url character varying,
    data jsonb
);
    DROP TABLE public.oauth;
       public         heap    postgres    false            ?           1259    18872    onboarding_state    TABLE     4  CREATE TABLE public.onboarding_state (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    current_step character varying,
    is_complete boolean NOT NULL,
    product_id character varying
);
 $   DROP TABLE public.onboarding_state;
       public         heap    postgres    false            �            1259    16860    order    TABLE     Y  CREATE TABLE public."order" (
    id character varying NOT NULL,
    status public.order_status_enum DEFAULT 'pending'::public.order_status_enum NOT NULL,
    fulfillment_status public.order_fulfillment_status_enum DEFAULT 'not_fulfilled'::public.order_fulfillment_status_enum NOT NULL,
    payment_status public.order_payment_status_enum DEFAULT 'not_paid'::public.order_payment_status_enum NOT NULL,
    display_id integer NOT NULL,
    cart_id character varying,
    customer_id character varying NOT NULL,
    email character varying NOT NULL,
    billing_address_id character varying,
    shipping_address_id character varying,
    region_id character varying NOT NULL,
    currency_code character varying NOT NULL,
    tax_rate real,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    draft_order_id character varying,
    no_notification boolean,
    external_id character varying,
    sales_channel_id character varying
);
    DROP TABLE public."order";
       public         heap    postgres    false    1086    1089    1092    1089    1092    1086                       1259    17006    order_discounts    TABLE     }   CREATE TABLE public.order_discounts (
    order_id character varying NOT NULL,
    discount_id character varying NOT NULL
);
 #   DROP TABLE public.order_discounts;
       public         heap    postgres    false            �            1259    16859    order_display_id_seq    SEQUENCE     �   CREATE SEQUENCE public.order_display_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.order_display_id_seq;
       public          postgres    false    249            M           0    0    order_display_id_seq    SEQUENCE OWNED BY     O   ALTER SEQUENCE public.order_display_id_seq OWNED BY public."order".display_id;
          public          postgres    false    248            3           1259    18530 
   order_edit    TABLE     �  CREATE TABLE public.order_edit (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    order_id character varying NOT NULL,
    internal_note character varying,
    created_by character varying NOT NULL,
    requested_by character varying,
    requested_at timestamp with time zone,
    confirmed_by character varying,
    confirmed_at timestamp with time zone,
    declined_by character varying,
    declined_reason character varying,
    declined_at timestamp with time zone,
    canceled_by character varying,
    canceled_at timestamp with time zone,
    payment_collection_id character varying
);
    DROP TABLE public.order_edit;
       public         heap    postgres    false            	           1259    17015    order_gift_cards    TABLE        CREATE TABLE public.order_gift_cards (
    order_id character varying NOT NULL,
    gift_card_id character varying NOT NULL
);
 $   DROP TABLE public.order_gift_cards;
       public         heap    postgres    false            2           1259    18515    order_item_change    TABLE     �  CREATE TABLE public.order_item_change (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    type public.order_item_change_type_enum NOT NULL,
    order_edit_id character varying NOT NULL,
    original_line_item_id character varying,
    line_item_id character varying
);
 %   DROP TABLE public.order_item_change;
       public         heap    postgres    false    1314            �            1259    16640    payment    TABLE     p  CREATE TABLE public.payment (
    id character varying NOT NULL,
    swap_id character varying,
    cart_id character varying,
    order_id character varying,
    amount integer NOT NULL,
    currency_code character varying NOT NULL,
    amount_refunded integer DEFAULT 0 NOT NULL,
    provider_id character varying NOT NULL,
    data jsonb NOT NULL,
    captured_at timestamp with time zone,
    canceled_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying
);
    DROP TABLE public.payment;
       public         heap    postgres    false            4           1259    18585    payment_collection    TABLE     V  CREATE TABLE public.payment_collection (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    type public."PAYMENT_COLLECTION_TYPE_ENUM" NOT NULL,
    status public."PAYMENT_COLLECTION_STATUS_ENUM" NOT NULL,
    description text,
    amount integer NOT NULL,
    authorized_amount integer,
    region_id character varying NOT NULL,
    currency_code character varying NOT NULL,
    metadata jsonb,
    created_by character varying NOT NULL
);
 &   DROP TABLE public.payment_collection;
       public         heap    postgres    false    1326    1323            6           1259    18620    payment_collection_payments    TABLE     �   CREATE TABLE public.payment_collection_payments (
    payment_collection_id character varying NOT NULL,
    payment_id character varying NOT NULL
);
 /   DROP TABLE public.payment_collection_payments;
       public         heap    postgres    false            5           1259    18601    payment_collection_sessions    TABLE     �   CREATE TABLE public.payment_collection_sessions (
    payment_collection_id character varying NOT NULL,
    payment_session_id character varying NOT NULL
);
 /   DROP TABLE public.payment_collection_sessions;
       public         heap    postgres    false            �            1259    16458    payment_provider    TABLE     |   CREATE TABLE public.payment_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
 $   DROP TABLE public.payment_provider;
       public         heap    postgres    false            �            1259    16629    payment_session    TABLE        CREATE TABLE public.payment_session (
    id character varying NOT NULL,
    cart_id character varying,
    provider_id character varying NOT NULL,
    is_selected boolean,
    status public.payment_session_status_enum NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    idempotency_key character varying,
    payment_authorized_at timestamp with time zone,
    amount integer,
    is_initiated boolean DEFAULT false NOT NULL
);
 #   DROP TABLE public.payment_session;
       public         heap    postgres    false    1053            ,           1259    18363 
   price_list    TABLE     K  CREATE TABLE public.price_list (
    id character varying NOT NULL,
    name character varying NOT NULL,
    description character varying NOT NULL,
    type public.price_list_type_enum DEFAULT 'sale'::public.price_list_type_enum NOT NULL,
    status public.price_list_status_enum DEFAULT 'draft'::public.price_list_status_enum NOT NULL,
    starts_at timestamp with time zone,
    ends_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone
);
    DROP TABLE public.price_list;
       public         heap    postgres    false    1287    1290    1287    1290            -           1259    18374    price_list_customer_groups    TABLE     �   CREATE TABLE public.price_list_customer_groups (
    price_list_id character varying NOT NULL,
    customer_group_id character varying NOT NULL
);
 .   DROP TABLE public.price_list_customer_groups;
       public         heap    postgres    false            �            1259    16572    product    TABLE     �  CREATE TABLE public.product (
    id character varying NOT NULL,
    title character varying NOT NULL,
    subtitle character varying,
    description character varying,
    handle character varying,
    is_giftcard boolean DEFAULT false NOT NULL,
    thumbnail character varying,
    weight integer,
    length integer,
    height integer,
    width integer,
    hs_code character varying,
    origin_country character varying,
    mid_code character varying,
    material character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    collection_id character varying,
    type_id character varying,
    discountable boolean DEFAULT true NOT NULL,
    status public.product_status_enum DEFAULT 'draft'::public.product_status_enum NOT NULL,
    external_id character varying
);
    DROP TABLE public.product;
       public         heap    postgres    false    1215    1215            <           1259    18711    product_category    TABLE       CREATE TABLE public.product_category (
    id character varying NOT NULL,
    name text NOT NULL,
    handle text NOT NULL,
    parent_category_id character varying,
    mpath text,
    is_active boolean DEFAULT false,
    is_internal boolean DEFAULT false,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    rank integer DEFAULT 0 NOT NULL,
    description text DEFAULT ''::text NOT NULL,
    CONSTRAINT product_category_rank_check CHECK ((rank >= 0))
);
 $   DROP TABLE public.product_category;
       public         heap    postgres    false            =           1259    18727    product_category_product    TABLE     �   CREATE TABLE public.product_category_product (
    product_category_id character varying NOT NULL,
    product_id character varying NOT NULL
);
 ,   DROP TABLE public.product_category_product;
       public         heap    postgres    false                       1259    17700    product_collection    TABLE     O  CREATE TABLE public.product_collection (
    id character varying NOT NULL,
    title character varying NOT NULL,
    handle character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 &   DROP TABLE public.product_collection;
       public         heap    postgres    false                       1259    16961    product_images    TABLE     {   CREATE TABLE public.product_images (
    product_id character varying NOT NULL,
    image_id character varying NOT NULL
);
 "   DROP TABLE public.product_images;
       public         heap    postgres    false            �            1259    16518    product_option    TABLE     O  CREATE TABLE public.product_option (
    id character varying NOT NULL,
    title character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    product_id character varying
);
 "   DROP TABLE public.product_option;
       public         heap    postgres    false            �            1259    16508    product_option_value    TABLE     �  CREATE TABLE public.product_option_value (
    id character varying NOT NULL,
    value character varying NOT NULL,
    option_id character varying NOT NULL,
    variant_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 (   DROP TABLE public.product_option_value;
       public         heap    postgres    false            1           1259    18447    product_sales_channel    TABLE     �   CREATE TABLE public.product_sales_channel (
    product_id character varying NOT NULL,
    sales_channel_id character varying NOT NULL
);
 )   DROP TABLE public.product_sales_channel;
       public         heap    postgres    false            >           1259    18864    product_shipping_profile    TABLE     m   CREATE TABLE public.product_shipping_profile (
    profile_id text NOT NULL,
    product_id text NOT NULL
);
 ,   DROP TABLE public.product_shipping_profile;
       public         heap    postgres    false                       1259    17710    product_tag    TABLE     *  CREATE TABLE public.product_tag (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
    DROP TABLE public.product_tag;
       public         heap    postgres    false                       1259    17728    product_tags    TABLE        CREATE TABLE public.product_tags (
    product_id character varying NOT NULL,
    product_tag_id character varying NOT NULL
);
     DROP TABLE public.product_tags;
       public         heap    postgres    false            !           1259    18097    product_tax_rate    TABLE       CREATE TABLE public.product_tax_rate (
    product_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 $   DROP TABLE public.product_tax_rate;
       public         heap    postgres    false                       1259    17719    product_type    TABLE     +  CREATE TABLE public.product_type (
    id character varying NOT NULL,
    value character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
     DROP TABLE public.product_type;
       public         heap    postgres    false            "           1259    18106    product_type_tax_rate    TABLE       CREATE TABLE public.product_type_tax_rate (
    product_type_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 )   DROP TABLE public.product_type_tax_rate;
       public         heap    postgres    false            �            1259    16493    product_variant    TABLE     R  CREATE TABLE public.product_variant (
    id character varying NOT NULL,
    title character varying NOT NULL,
    product_id character varying NOT NULL,
    sku character varying,
    barcode character varying,
    ean character varying,
    upc character varying,
    inventory_quantity integer NOT NULL,
    allow_backorder boolean DEFAULT false NOT NULL,
    manage_inventory boolean DEFAULT true NOT NULL,
    hs_code character varying,
    origin_country character varying,
    mid_code character varying,
    material character varying,
    weight integer,
    length integer,
    height integer,
    width integer,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    variant_rank integer DEFAULT 0
);
 #   DROP TABLE public.product_variant;
       public         heap    postgres    false            ;           1259    18697    product_variant_inventory_item    TABLE     x  CREATE TABLE public.product_variant_inventory_item (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    inventory_item_id text NOT NULL,
    variant_id text NOT NULL,
    required_quantity integer DEFAULT 1 NOT NULL,
    deleted_at timestamp with time zone
);
 2   DROP TABLE public.product_variant_inventory_item;
       public         heap    postgres    false            @           1259    18882    product_variant_money_amount    TABLE     B  CREATE TABLE public.product_variant_money_amount (
    id character varying NOT NULL,
    money_amount_id text NOT NULL,
    variant_id text NOT NULL,
    deleted_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL
);
 0   DROP TABLE public.product_variant_money_amount;
       public         heap    postgres    false            9           1259    18675    publishable_api_key    TABLE     b  CREATE TABLE public.publishable_api_key (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    created_by character varying,
    revoked_by character varying,
    revoked_at timestamp with time zone,
    title character varying NOT NULL
);
 '   DROP TABLE public.publishable_api_key;
       public         heap    postgres    false            8           1259    18668 !   publishable_api_key_sales_channel    TABLE     �   CREATE TABLE public.publishable_api_key_sales_channel (
    sales_channel_id character varying NOT NULL,
    publishable_key_id character varying NOT NULL
);
 5   DROP TABLE public.publishable_api_key_sales_channel;
       public         heap    postgres    false            �            1259    16803    refund    TABLE     �  CREATE TABLE public.refund (
    id character varying NOT NULL,
    order_id character varying,
    amount integer NOT NULL,
    note character varying,
    reason public.refund_reason_enum NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    payment_id character varying
);
    DROP TABLE public.refund;
       public         heap    postgres    false    1176            �            1259    16466    region    TABLE       CREATE TABLE public.region (
    id character varying NOT NULL,
    name character varying NOT NULL,
    currency_code character varying NOT NULL,
    tax_rate real NOT NULL,
    tax_code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    gift_cards_taxable boolean DEFAULT true NOT NULL,
    automatic_taxes boolean DEFAULT true NOT NULL,
    tax_provider_id character varying
);
    DROP TABLE public.region;
       public         heap    postgres    false                       1259    16952    region_fulfillment_providers    TABLE     �   CREATE TABLE public.region_fulfillment_providers (
    region_id character varying NOT NULL,
    provider_id character varying NOT NULL
);
 0   DROP TABLE public.region_fulfillment_providers;
       public         heap    postgres    false                       1259    16943    region_payment_providers    TABLE     �   CREATE TABLE public.region_payment_providers (
    region_id character varying NOT NULL,
    provider_id character varying NOT NULL
);
 ,   DROP TABLE public.region_payment_providers;
       public         heap    postgres    false            �            1259    16711    return    TABLE     g  CREATE TABLE public.return (
    id character varying NOT NULL,
    status public.return_status_enum DEFAULT 'requested'::public.return_status_enum NOT NULL,
    swap_id character varying,
    order_id character varying,
    shipping_data jsonb,
    refund_amount integer NOT NULL,
    received_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    idempotency_key character varying,
    claim_order_id character varying,
    no_notification boolean,
    location_id character varying
);
    DROP TABLE public.return;
       public         heap    postgres    false    1209    1209            �            1259    16433    return_item    TABLE     U  CREATE TABLE public.return_item (
    return_id character varying NOT NULL,
    item_id character varying NOT NULL,
    quantity integer NOT NULL,
    is_requested boolean DEFAULT true NOT NULL,
    requested_quantity integer,
    received_quantity integer,
    metadata jsonb,
    reason_id character varying,
    note character varying
);
    DROP TABLE public.return_item;
       public         heap    postgres    false                       1259    17836    return_reason    TABLE     �  CREATE TABLE public.return_reason (
    id character varying NOT NULL,
    value character varying NOT NULL,
    label character varying NOT NULL,
    description character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    parent_return_reason_id character varying
);
 !   DROP TABLE public.return_reason;
       public         heap    postgres    false            0           1259    18437    sales_channel    TABLE     ~  CREATE TABLE public.sales_channel (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    name character varying NOT NULL,
    description character varying,
    is_disabled boolean DEFAULT false NOT NULL,
    metadata jsonb
);
 !   DROP TABLE public.sales_channel;
       public         heap    postgres    false            :           1259    18686    sales_channel_location    TABLE     >  CREATE TABLE public.sales_channel_location (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    sales_channel_id text NOT NULL,
    location_id text NOT NULL,
    deleted_at timestamp with time zone
);
 *   DROP TABLE public.sales_channel_location;
       public         heap    postgres    false            �            1259    16687    shipping_method    TABLE     ]  CREATE TABLE public.shipping_method (
    id character varying NOT NULL,
    shipping_option_id character varying NOT NULL,
    order_id character varying,
    cart_id character varying,
    swap_id character varying,
    return_id character varying,
    price integer NOT NULL,
    data jsonb NOT NULL,
    claim_order_id character varying,
    CONSTRAINT "CHK_64c6812fe7815be30d688df513" CHECK ((price >= 0)),
    CONSTRAINT "CHK_a7020b08665bbd64d84a6641cf" CHECK (((claim_order_id IS NOT NULL) OR (order_id IS NOT NULL) OR (cart_id IS NOT NULL) OR (swap_id IS NOT NULL) OR (return_id IS NOT NULL)))
);
 #   DROP TABLE public.shipping_method;
       public         heap    postgres    false                        1259    18087    shipping_method_tax_line    TABLE     t  CREATE TABLE public.shipping_method_tax_line (
    id character varying NOT NULL,
    rate real NOT NULL,
    name character varying NOT NULL,
    code character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    shipping_method_id character varying NOT NULL
);
 ,   DROP TABLE public.shipping_method_tax_line;
       public         heap    postgres    false            �            1259    16545    shipping_option    TABLE     �  CREATE TABLE public.shipping_option (
    id character varying NOT NULL,
    name character varying NOT NULL,
    region_id character varying NOT NULL,
    profile_id character varying NOT NULL,
    provider_id character varying NOT NULL,
    price_type public.shipping_option_price_type_enum NOT NULL,
    amount integer,
    is_return boolean DEFAULT false NOT NULL,
    data jsonb NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    admin_only boolean DEFAULT false NOT NULL,
    CONSTRAINT "CHK_7a367f5901ae0a5b0df75aee38" CHECK ((amount >= 0))
);
 #   DROP TABLE public.shipping_option;
       public         heap    postgres    false    1026            �            1259    16533    shipping_option_requirement    TABLE       CREATE TABLE public.shipping_option_requirement (
    id character varying NOT NULL,
    shipping_option_id character varying NOT NULL,
    type public.shipping_option_requirement_type_enum NOT NULL,
    amount integer NOT NULL,
    deleted_at timestamp with time zone
);
 /   DROP TABLE public.shipping_option_requirement;
       public         heap    postgres    false    1020            �            1259    16563    shipping_profile    TABLE     c  CREATE TABLE public.shipping_profile (
    id character varying NOT NULL,
    name character varying NOT NULL,
    type public.shipping_profile_type_enum NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb
);
 $   DROP TABLE public.shipping_profile;
       public         heap    postgres    false    1032            #           1259    18115    shipping_tax_rate    TABLE       CREATE TABLE public.shipping_tax_rate (
    shipping_option_id character varying NOT NULL,
    rate_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
 %   DROP TABLE public.shipping_tax_rate;
       public         heap    postgres    false            �            1259    16915 
   staged_job    TABLE     �   CREATE TABLE public.staged_job (
    id character varying NOT NULL,
    event_name character varying NOT NULL,
    data jsonb NOT NULL,
    options jsonb DEFAULT '{}'::jsonb NOT NULL
);
    DROP TABLE public.staged_job;
       public         heap    postgres    false            �            1259    16922    store    TABLE     Y  CREATE TABLE public.store (
    id character varying NOT NULL,
    name character varying DEFAULT 'Medusa Store'::character varying NOT NULL,
    default_currency_code character varying DEFAULT 'usd'::character varying NOT NULL,
    swap_link_template character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb,
    payment_link_template character varying,
    invite_link_template character varying,
    default_sales_channel_id character varying,
    default_location_id character varying
);
    DROP TABLE public.store;
       public         heap    postgres    false            
           1259    17024    store_currencies    TABLE     �   CREATE TABLE public.store_currencies (
    store_id character varying NOT NULL,
    currency_code character varying NOT NULL
);
 $   DROP TABLE public.store_currencies;
       public         heap    postgres    false            �            1259    16753    swap    TABLE     �  CREATE TABLE public.swap (
    id character varying NOT NULL,
    fulfillment_status public.swap_fulfillment_status_enum NOT NULL,
    payment_status public.swap_payment_status_enum NOT NULL,
    order_id character varying NOT NULL,
    difference_due integer,
    shipping_address_id character varying,
    cart_id character varying,
    confirmed_at timestamp with time zone,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying,
    no_notification boolean,
    canceled_at timestamp with time zone,
    allow_backorder boolean DEFAULT false NOT NULL
);
    DROP TABLE public.swap;
       public         heap    postgres    false    1311    1212                       1259    18069    tax_provider    TABLE     x   CREATE TABLE public.tax_provider (
    id character varying NOT NULL,
    is_installed boolean DEFAULT true NOT NULL
);
     DROP TABLE public.tax_provider;
       public         heap    postgres    false                       1259    18060    tax_rate    TABLE     R  CREATE TABLE public.tax_rate (
    id character varying NOT NULL,
    rate real,
    code character varying,
    name character varying NOT NULL,
    region_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    metadata jsonb
);
    DROP TABLE public.tax_rate;
       public         heap    postgres    false                       1259    17822    tracking_link    TABLE     �  CREATE TABLE public.tracking_link (
    id character varying NOT NULL,
    url character varying,
    tracking_number character varying NOT NULL,
    fulfillment_id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    idempotency_key character varying
);
 !   DROP TABLE public.tracking_link;
       public         heap    postgres    false                        1259    16933    user    TABLE     �  CREATE TABLE public."user" (
    id character varying NOT NULL,
    email character varying NOT NULL,
    first_name character varying,
    last_name character varying,
    password_hash character varying,
    api_token character varying,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    deleted_at timestamp with time zone,
    metadata jsonb,
    role public.user_role_enum DEFAULT 'member'::public.user_role_enum
);
    DROP TABLE public."user";
       public         heap    postgres    false    1227    1227            A           1259    28364    wishlist    TABLE     ;  CREATE TABLE public.wishlist (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    product_id character varying NOT NULL,
    wishlist_name_id character varying NOT NULL,
    title character varying NOT NULL,
    description character varying,
    quantity integer NOT NULL,
    thumbnail character varying NOT NULL,
    original_total integer,
    sub_total integer,
    total integer,
    unit_price integer NOT NULL,
    variant_id character varying
);
    DROP TABLE public.wishlist;
       public         heap    postgres    false            B           1259    28373    wishlist_name    TABLE     a  CREATE TABLE public.wishlist_name (
    id character varying NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    title character varying NOT NULL,
    customer_id character varying NOT NULL,
    total integer NOT NULL,
    region_id character varying NOT NULL
);
 !   DROP TABLE public.wishlist_name;
       public         heap    postgres    false            C           2604    16452 
   country id    DEFAULT     h   ALTER TABLE ONLY public.country ALTER COLUMN id SET DEFAULT nextval('public.country_id_seq'::regclass);
 9   ALTER TABLE public.country ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    224    224            �           2604    17768    draft_order display_id    DEFAULT     �   ALTER TABLE ONLY public.draft_order ALTER COLUMN display_id SET DEFAULT nextval('public.draft_order_display_id_seq'::regclass);
 E   ALTER TABLE public.draft_order ALTER COLUMN display_id DROP DEFAULT;
       public          postgres    false    278    279    279            =           2604    16403    migrations id    DEFAULT     n   ALTER TABLE ONLY public.migrations ALTER COLUMN id SET DEFAULT nextval('public.migrations_id_seq'::regclass);
 <   ALTER TABLE public.migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �           2604    16866    order display_id    DEFAULT     v   ALTER TABLE ONLY public."order" ALTER COLUMN display_id SET DEFAULT nextval('public.order_display_id_seq'::regclass);
 A   ALTER TABLE public."order" ALTER COLUMN display_id DROP DEFAULT;
       public          postgres    false    248    249    249            �          0    16888    address 
   TABLE DATA           �   COPY public.address (id, customer_id, company, first_name, last_name, address_1, address_2, city, country_code, province, postal_code, phone, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    251   5      7          0    18656    analytics_config 
   TABLE DATA           o   COPY public.analytics_config (id, created_at, updated_at, deleted_at, user_id, opt_out, anonymize) FROM stdin;
    public          postgres    false    311   -8      /          0    18422 	   batch_job 
   TABLE DATA           �   COPY public.batch_job (id, type, created_by, context, result, dry_run, created_at, pre_processed_at, confirmed_at, processing_at, completed_at, failed_at, canceled_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    303   �8      �          0    16675    cart 
   TABLE DATA           �   COPY public.cart (id, email, billing_address_id, shipping_address_id, region_id, customer_id, payment_id, type, completed_at, created_at, updated_at, deleted_at, metadata, idempotency_key, context, payment_authorized_at, sales_channel_id) FROM stdin;
    public          postgres    false    241   �8                0    16988    cart_discounts 
   TABLE DATA           >   COPY public.cart_discounts (cart_id, discount_id) FROM stdin;
    public          postgres    false    262   �<                0    16997    cart_gift_cards 
   TABLE DATA           @   COPY public.cart_gift_cards (cart_id, gift_card_id) FROM stdin;
    public          postgres    false    263   �<                0    17443    claim_image 
   TABLE DATA           k   COPY public.claim_image (id, claim_item_id, url, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    267   �<                0    17471 
   claim_item 
   TABLE DATA           �   COPY public.claim_item (id, claim_order_id, item_id, variant_id, reason, note, quantity, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    269   �<                0    17528    claim_item_tags 
   TABLE DATA           :   COPY public.claim_item_tags (item_id, tag_id) FROM stdin;
    public          postgres    false    271   	=                0    17517    claim_order 
   TABLE DATA           �   COPY public.claim_order (id, payment_status, fulfillment_status, type, order_id, shipping_address_id, refund_amount, canceled_at, created_at, updated_at, deleted_at, metadata, idempotency_key, no_notification) FROM stdin;
    public          postgres    false    270   &=                0    17452 	   claim_tag 
   TABLE DATA           \   COPY public.claim_tag (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    268   C=      �          0    16449    country 
   TABLE DATA           \   COPY public.country (id, iso_2, iso_3, num_code, name, display_name, region_id) FROM stdin;
    public          postgres    false    224   `=      �          0    16441    currency 
   TABLE DATA           E   COPY public.currency (code, symbol, symbol_native, name) FROM stdin;
    public          postgres    false    222   �S                0    17992    custom_shipping_option 
   TABLE DATA           �   COPY public.custom_shipping_option (id, price, shipping_option_id, cart_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    284   �[      �          0    16875    customer 
   TABLE DATA           �   COPY public.customer (id, email, first_name, last_name, billing_address_id, password_hash, phone, has_account, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    250   �[      $          0    18183    customer_group 
   TABLE DATA           `   COPY public.customer_group (id, name, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    292   �]      %          0    18193    customer_group_customers 
   TABLE DATA           R   COPY public.customer_group_customers (customer_group_id, customer_id) FROM stdin;
    public          postgres    false    293   �]      �          0    16606    discount 
   TABLE DATA           �   COPY public.discount (id, code, is_dynamic, rule_id, is_disabled, parent_discount_id, starts_at, ends_at, created_at, updated_at, deleted_at, metadata, usage_limit, usage_count, valid_duration) FROM stdin;
    public          postgres    false    237   �]      &          0    18229    discount_condition 
   TABLE DATA           �   COPY public.discount_condition (id, type, operator, discount_rule_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    294   ^      '          0    18241 !   discount_condition_customer_group 
   TABLE DATA           ~   COPY public.discount_condition_customer_group (customer_group_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    295   )^      +          0    18277    discount_condition_product 
   TABLE DATA           p   COPY public.discount_condition_product (product_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    299   F^      (          0    18250 %   discount_condition_product_collection 
   TABLE DATA           �   COPY public.discount_condition_product_collection (product_collection_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    296   c^      )          0    18259    discount_condition_product_tag 
   TABLE DATA           x   COPY public.discount_condition_product_tag (product_tag_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    297   �^      *          0    18268    discount_condition_product_type 
   TABLE DATA           z   COPY public.discount_condition_product_type (product_type_id, condition_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    298   �^                0    16979    discount_regions 
   TABLE DATA           B   COPY public.discount_regions (discount_id, region_id) FROM stdin;
    public          postgres    false    261   �^      �          0    16597    discount_rule 
   TABLE DATA              COPY public.discount_rule (id, description, type, value, allocation, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    236   �^                0    16970    discount_rule_products 
   TABLE DATA           N   COPY public.discount_rule_products (discount_rule_id, product_id) FROM stdin;
    public          postgres    false    260   �^                0    17764    draft_order 
   TABLE DATA           �   COPY public.draft_order (id, status, display_id, cart_id, order_id, canceled_at, created_at, updated_at, completed_at, metadata, idempotency_key, no_notification_order) FROM stdin;
    public          postgres    false    279   _      �          0    16423    fulfillment 
   TABLE DATA           �   COPY public.fulfillment (id, swap_id, order_id, tracking_numbers, data, shipped_at, canceled_at, created_at, updated_at, metadata, idempotency_key, provider_id, claim_order_id, no_notification, location_id) FROM stdin;
    public          postgres    false    220   ._      �          0    16416    fulfillment_item 
   TABLE DATA           M   COPY public.fulfillment_item (fulfillment_id, item_id, quantity) FROM stdin;
    public          postgres    false    219   K_      �          0    16408    fulfillment_provider 
   TABLE DATA           @   COPY public.fulfillment_provider (id, is_installed) FROM stdin;
    public          postgres    false    218   h_      �          0    16654 	   gift_card 
   TABLE DATA           �   COPY public.gift_card (id, code, value, balance, region_id, order_id, is_disabled, ends_at, created_at, updated_at, deleted_at, metadata, tax_rate) FROM stdin;
    public          postgres    false    240   �_      �          0    16784    gift_card_transaction 
   TABLE DATA           u   COPY public.gift_card_transaction (id, gift_card_id, order_id, amount, created_at, is_taxable, tax_rate) FROM stdin;
    public          postgres    false    246   �_      �          0    16897    idempotency_key 
   TABLE DATA           �   COPY public.idempotency_key (id, idempotency_key, created_at, locked_at, request_method, request_params, request_path, response_code, response_body, recovery_point) FROM stdin;
    public          postgres    false    252   �_      �          0    16475    image 
   TABLE DATA           V   COPY public.image (id, url, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    227   ņ                0    17969    invite 
   TABLE DATA           �   COPY public.invite (id, user_email, role, accepted, created_at, updated_at, deleted_at, metadata, token, expires_at) FROM stdin;
    public          postgres    false    283   ��      �          0    16764 	   line_item 
   TABLE DATA           U  COPY public.line_item (id, cart_id, order_id, swap_id, title, description, thumbnail, is_giftcard, should_merge, allow_discounts, has_shipping, unit_price, variant_id, quantity, fulfilled_quantity, returned_quantity, shipped_quantity, created_at, updated_at, metadata, claim_order_id, is_return, original_item_id, order_edit_id) FROM stdin;
    public          postgres    false    245   ��      .          0    18398    line_item_adjustment 
   TABLE DATA           g   COPY public.line_item_adjustment (id, item_id, description, discount_id, amount, metadata) FROM stdin;
    public          postgres    false    302   Q�                0    18077    line_item_tax_line 
   TABLE DATA           m   COPY public.line_item_tax_line (id, rate, name, code, created_at, updated_at, metadata, item_id) FROM stdin;
    public          postgres    false    287   n�      �          0    16400 
   migrations 
   TABLE DATA           ;   COPY public.migrations (id, "timestamp", name) FROM stdin;
    public          postgres    false    217   ��      �          0    16484    money_amount 
   TABLE DATA           �   COPY public.money_amount (id, currency_code, amount, region_id, created_at, updated_at, deleted_at, min_quantity, max_quantity, price_list_id) FROM stdin;
    public          postgres    false    228   ��                0    17950    note 
   TABLE DATA           ~   COPY public.note (id, value, resource_type, resource_id, author_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    282   y�                0    17673    notification 
   TABLE DATA           �   COPY public.notification (id, event_name, resource_type, resource_id, customer_id, "to", data, parent_id, provider_id, created_at, updated_at) FROM stdin;
    public          postgres    false    273   ��                0    17665    notification_provider 
   TABLE DATA           A   COPY public.notification_provider (id, is_installed) FROM stdin;
    public          postgres    false    272   ��      �          0    16907    oauth 
   TABLE DATA           e   COPY public.oauth (id, display_name, application_name, install_url, uninstall_url, data) FROM stdin;
    public          postgres    false    253   Д      ?          0    18872    onboarding_state 
   TABLE DATA           m   COPY public.onboarding_state (id, created_at, updated_at, current_step, is_complete, product_id) FROM stdin;
    public          postgres    false    319   �      �          0    16860    order 
   TABLE DATA           G  COPY public."order" (id, status, fulfillment_status, payment_status, display_id, cart_id, customer_id, email, billing_address_id, shipping_address_id, region_id, currency_code, tax_rate, canceled_at, created_at, updated_at, metadata, idempotency_key, draft_order_id, no_notification, external_id, sales_channel_id) FROM stdin;
    public          postgres    false    249   U�                0    17006    order_discounts 
   TABLE DATA           @   COPY public.order_discounts (order_id, discount_id) FROM stdin;
    public          postgres    false    264   r�      3          0    18530 
   order_edit 
   TABLE DATA           �   COPY public.order_edit (id, created_at, updated_at, order_id, internal_note, created_by, requested_by, requested_at, confirmed_by, confirmed_at, declined_by, declined_reason, declined_at, canceled_by, canceled_at, payment_collection_id) FROM stdin;
    public          postgres    false    307   ��      	          0    17015    order_gift_cards 
   TABLE DATA           B   COPY public.order_gift_cards (order_id, gift_card_id) FROM stdin;
    public          postgres    false    265   ��      2          0    18515    order_item_change 
   TABLE DATA           �   COPY public.order_item_change (id, created_at, updated_at, deleted_at, type, order_edit_id, original_line_item_id, line_item_id) FROM stdin;
    public          postgres    false    306   ɕ      �          0    16640    payment 
   TABLE DATA           �   COPY public.payment (id, swap_id, cart_id, order_id, amount, currency_code, amount_refunded, provider_id, data, captured_at, canceled_at, created_at, updated_at, metadata, idempotency_key) FROM stdin;
    public          postgres    false    239   �      4          0    18585    payment_collection 
   TABLE DATA           �   COPY public.payment_collection (id, created_at, updated_at, deleted_at, type, status, description, amount, authorized_amount, region_id, currency_code, metadata, created_by) FROM stdin;
    public          postgres    false    308   �      6          0    18620    payment_collection_payments 
   TABLE DATA           X   COPY public.payment_collection_payments (payment_collection_id, payment_id) FROM stdin;
    public          postgres    false    310    �      5          0    18601    payment_collection_sessions 
   TABLE DATA           `   COPY public.payment_collection_sessions (payment_collection_id, payment_session_id) FROM stdin;
    public          postgres    false    309   =�      �          0    16458    payment_provider 
   TABLE DATA           <   COPY public.payment_provider (id, is_installed) FROM stdin;
    public          postgres    false    225   Z�      �          0    16629    payment_session 
   TABLE DATA           �   COPY public.payment_session (id, cart_id, provider_id, is_selected, status, data, created_at, updated_at, idempotency_key, payment_authorized_at, amount, is_initiated) FROM stdin;
    public          postgres    false    238   ��      ,          0    18363 
   price_list 
   TABLE DATA           �   COPY public.price_list (id, name, description, type, status, starts_at, ends_at, created_at, updated_at, deleted_at) FROM stdin;
    public          postgres    false    300   ��      -          0    18374    price_list_customer_groups 
   TABLE DATA           V   COPY public.price_list_customer_groups (price_list_id, customer_group_id) FROM stdin;
    public          postgres    false    301   ��      �          0    16572    product 
   TABLE DATA             COPY public.product (id, title, subtitle, description, handle, is_giftcard, thumbnail, weight, length, height, width, hs_code, origin_country, mid_code, material, created_at, updated_at, deleted_at, metadata, collection_id, type_id, discountable, status, external_id) FROM stdin;
    public          postgres    false    235   ז      <          0    18711    product_category 
   TABLE DATA           �   COPY public.product_category (id, name, handle, parent_category_id, mpath, is_active, is_internal, created_at, updated_at, rank, description) FROM stdin;
    public          postgres    false    316   -�      =          0    18727    product_category_product 
   TABLE DATA           S   COPY public.product_category_product (product_category_id, product_id) FROM stdin;
    public          postgres    false    317   J�                0    17700    product_collection 
   TABLE DATA           m   COPY public.product_collection (id, title, handle, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    274   g�                0    16961    product_images 
   TABLE DATA           >   COPY public.product_images (product_id, image_id) FROM stdin;
    public          postgres    false    259   ��      �          0    16518    product_option 
   TABLE DATA           m   COPY public.product_option (id, title, created_at, updated_at, deleted_at, metadata, product_id) FROM stdin;
    public          postgres    false    231   b�      �          0    16508    product_option_value 
   TABLE DATA           ~   COPY public.product_option_value (id, value, option_id, variant_id, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    230   ӟ      1          0    18447    product_sales_channel 
   TABLE DATA           M   COPY public.product_sales_channel (product_id, sales_channel_id) FROM stdin;
    public          postgres    false    305   ��      >          0    18864    product_shipping_profile 
   TABLE DATA           J   COPY public.product_shipping_profile (profile_id, product_id) FROM stdin;
    public          postgres    false    318   8�                0    17710    product_tag 
   TABLE DATA           ^   COPY public.product_tag (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    275   �                0    17728    product_tags 
   TABLE DATA           B   COPY public.product_tags (product_id, product_tag_id) FROM stdin;
    public          postgres    false    277   �      !          0    18097    product_tax_rate 
   TABLE DATA           a   COPY public.product_tax_rate (product_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    289   (�                0    17719    product_type 
   TABLE DATA           _   COPY public.product_type (id, value, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    276   E�      "          0    18106    product_type_tax_rate 
   TABLE DATA           k   COPY public.product_type_tax_rate (product_type_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    290   b�      �          0    16493    product_variant 
   TABLE DATA             COPY public.product_variant (id, title, product_id, sku, barcode, ean, upc, inventory_quantity, allow_backorder, manage_inventory, hs_code, origin_country, mid_code, material, weight, length, height, width, created_at, updated_at, deleted_at, metadata, variant_rank) FROM stdin;
    public          postgres    false    229   �      ;          0    18697    product_variant_inventory_item 
   TABLE DATA           �   COPY public.product_variant_inventory_item (id, created_at, updated_at, inventory_item_id, variant_id, required_quantity, deleted_at) FROM stdin;
    public          postgres    false    315   �      @          0    18882    product_variant_money_amount 
   TABLE DATA           {   COPY public.product_variant_money_amount (id, money_amount_id, variant_id, deleted_at, created_at, updated_at) FROM stdin;
    public          postgres    false    320   6�      9          0    18675    publishable_api_key 
   TABLE DATA           t   COPY public.publishable_api_key (id, created_at, updated_at, created_by, revoked_by, revoked_at, title) FROM stdin;
    public          postgres    false    313   ��      8          0    18668 !   publishable_api_key_sales_channel 
   TABLE DATA           a   COPY public.publishable_api_key_sales_channel (sales_channel_id, publishable_key_id) FROM stdin;
    public          postgres    false    312   a�      �          0    16803    refund 
   TABLE DATA           �   COPY public.refund (id, order_id, amount, note, reason, created_at, updated_at, metadata, idempotency_key, payment_id) FROM stdin;
    public          postgres    false    247   ��      �          0    16466    region 
   TABLE DATA           �   COPY public.region (id, name, currency_code, tax_rate, tax_code, created_at, updated_at, deleted_at, metadata, gift_cards_taxable, automatic_taxes, tax_provider_id) FROM stdin;
    public          postgres    false    226   ѫ                0    16952    region_fulfillment_providers 
   TABLE DATA           N   COPY public.region_fulfillment_providers (region_id, provider_id) FROM stdin;
    public          postgres    false    258   �                0    16943    region_payment_providers 
   TABLE DATA           J   COPY public.region_payment_providers (region_id, provider_id) FROM stdin;
    public          postgres    false    257   ٬      �          0    16711    return 
   TABLE DATA           �   COPY public.return (id, status, swap_id, order_id, shipping_data, refund_amount, received_at, created_at, updated_at, metadata, idempotency_key, claim_order_id, no_notification, location_id) FROM stdin;
    public          postgres    false    243   3�      �          0    16433    return_item 
   TABLE DATA           �   COPY public.return_item (return_id, item_id, quantity, is_requested, requested_quantity, received_quantity, metadata, reason_id, note) FROM stdin;
    public          postgres    false    221   P�                0    17836    return_reason 
   TABLE DATA           �   COPY public.return_reason (id, value, label, description, created_at, updated_at, deleted_at, metadata, parent_return_reason_id) FROM stdin;
    public          postgres    false    281   m�      0          0    18437    sales_channel 
   TABLE DATA           y   COPY public.sales_channel (id, created_at, updated_at, deleted_at, name, description, is_disabled, metadata) FROM stdin;
    public          postgres    false    304   ��      :          0    18686    sales_channel_location 
   TABLE DATA           w   COPY public.sales_channel_location (id, created_at, updated_at, sales_channel_id, location_id, deleted_at) FROM stdin;
    public          postgres    false    314   �      �          0    16687    shipping_method 
   TABLE DATA           �   COPY public.shipping_method (id, shipping_option_id, order_id, cart_id, swap_id, return_id, price, data, claim_order_id) FROM stdin;
    public          postgres    false    242   0�                 0    18087    shipping_method_tax_line 
   TABLE DATA           ~   COPY public.shipping_method_tax_line (id, rate, name, code, created_at, updated_at, metadata, shipping_method_id) FROM stdin;
    public          postgres    false    288   M�      �          0    16545    shipping_option 
   TABLE DATA           �   COPY public.shipping_option (id, name, region_id, profile_id, provider_id, price_type, amount, is_return, data, created_at, updated_at, deleted_at, metadata, admin_only) FROM stdin;
    public          postgres    false    233   j�      �          0    16533    shipping_option_requirement 
   TABLE DATA           g   COPY public.shipping_option_requirement (id, shipping_option_id, type, amount, deleted_at) FROM stdin;
    public          postgres    false    232   �      �          0    16563    shipping_profile 
   TABLE DATA           h   COPY public.shipping_profile (id, name, type, created_at, updated_at, deleted_at, metadata) FROM stdin;
    public          postgres    false    234   #�      #          0    18115    shipping_tax_rate 
   TABLE DATA           j   COPY public.shipping_tax_rate (shipping_option_id, rate_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    291   Ȱ      �          0    16915 
   staged_job 
   TABLE DATA           C   COPY public.staged_job (id, event_name, data, options) FROM stdin;
    public          postgres    false    254   �      �          0    16922    store 
   TABLE DATA           �   COPY public.store (id, name, default_currency_code, swap_link_template, created_at, updated_at, metadata, payment_link_template, invite_link_template, default_sales_channel_id, default_location_id) FROM stdin;
    public          postgres    false    255   �      
          0    17024    store_currencies 
   TABLE DATA           C   COPY public.store_currencies (store_id, currency_code) FROM stdin;
    public          postgres    false    266   ��      �          0    16753    swap 
   TABLE DATA           �   COPY public.swap (id, fulfillment_status, payment_status, order_id, difference_due, shipping_address_id, cart_id, confirmed_at, created_at, updated_at, deleted_at, metadata, idempotency_key, no_notification, canceled_at, allow_backorder) FROM stdin;
    public          postgres    false    244   ϱ                0    18069    tax_provider 
   TABLE DATA           8   COPY public.tax_provider (id, is_installed) FROM stdin;
    public          postgres    false    286   �                0    18060    tax_rate 
   TABLE DATA           e   COPY public.tax_rate (id, rate, code, name, region_id, created_at, updated_at, metadata) FROM stdin;
    public          postgres    false    285   	�                0    17822    tracking_link 
   TABLE DATA           �   COPY public.tracking_link (id, url, tracking_number, fulfillment_id, created_at, updated_at, deleted_at, metadata, idempotency_key) FROM stdin;
    public          postgres    false    280   &�                 0    16933    user 
   TABLE DATA           �   COPY public."user" (id, email, first_name, last_name, password_hash, api_token, created_at, updated_at, deleted_at, metadata, role) FROM stdin;
    public          postgres    false    256   C�      A          0    28364    wishlist 
   TABLE DATA           �   COPY public.wishlist (id, created_at, updated_at, product_id, wishlist_name_id, title, description, quantity, thumbnail, original_total, sub_total, total, unit_price, variant_id) FROM stdin;
    public          postgres    false    321   2�      B          0    28373    wishlist_name 
   TABLE DATA           i   COPY public.wishlist_name (id, created_at, updated_at, title, customer_id, total, region_id) FROM stdin;
    public          postgres    false    322   O�      N           0    0    country_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('public.country_id_seq', 250, true);
          public          postgres    false    223            O           0    0    draft_order_display_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public.draft_order_display_id_seq', 1, false);
          public          postgres    false    278            P           0    0    migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.migrations_id_seq', 90, true);
          public          postgres    false    216            Q           0    0    order_display_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.order_display_id_seq', 1, false);
          public          postgres    false    248            M           2606    16639    payment_session OneSelected 
   CONSTRAINT     h   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "OneSelected" UNIQUE (cart_id, is_selected);
 G   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "OneSelected";
       public            postgres    false    238    238            $           2606    16492 +   money_amount PK_022e49a7e21a8dfb820f788778a 
   CONSTRAINT     k   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "PK_022e49a7e21a8dfb820f788778a" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "PK_022e49a7e21a8dfb820f788778a";
       public            postgres    false    228            �           2606    17672 4   notification_provider PK_0425c2423e2ce9fdfd5c23761d9 
   CONSTRAINT     t   ALTER TABLE ONLY public.notification_provider
    ADD CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.notification_provider DROP CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9";
       public            postgres    false    272            �           2606    17030 /   store_currencies PK_0f2bff3bccc785c320a4df836de 
   CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "PK_0f2bff3bccc785c320a4df836de" PRIMARY KEY (store_id, currency_code);
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "PK_0f2bff3bccc785c320a4df836de";
       public            postgres    false    266    266            �           2606    16872 $   order PK_1031171c13130102495201e3e20 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "PK_1031171c13130102495201e3e20" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "PK_1031171c13130102495201e3e20";
       public            postgres    false    249            �           2606    16994 -   cart_discounts PK_10bd412c9071ccc0cf555afd9bb 
   CONSTRAINT        ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb" PRIMARY KEY (cart_id, discount_id);
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb";
       public            postgres    false    262    262            �           2606    16967 -   product_images PK_10de97980da2e939c4c0e8423f2 
   CONSTRAINT        ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "PK_10de97980da2e939c4c0e8423f2" PRIMARY KEY (product_id, image_id);
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "PK_10de97980da2e939c4c0e8423f2";
       public            postgres    false    259    259                        2606    17718 *   product_tag PK_1439455c6528caa94fcc8564fda 
   CONSTRAINT     j   ALTER TABLE ONLY public.product_tag
    ADD CONSTRAINT "PK_1439455c6528caa94fcc8564fda" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.product_tag DROP CONSTRAINT "PK_1439455c6528caa94fcc8564fda";
       public            postgres    false    275            �           2606    16985 /   discount_regions PK_15974566a8b6e04a7c754e85b75 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "PK_15974566a8b6e04a7c754e85b75" PRIMARY KEY (discount_id, region_id);
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "PK_15974566a8b6e04a7c754e85b75";
       public            postgres    false    261    261            ,           2606    16503 .   product_variant PK_1ab69c9935c61f7c70791ae0a9f 
   CONSTRAINT     n   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f";
       public            postgres    false    229            a           2606    18380 9   price_list_customer_groups PK_1afcbe15cc8782dc80c05707df9 
   CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9" PRIMARY KEY (price_list_id, customer_group_id);
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9";
       public            postgres    false    301    301                       2606    17734 +   product_tags PK_1cf5c9537e7198df494b71b993f 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "PK_1cf5c9537e7198df494b71b993f" PRIMARY KEY (product_id, product_tag_id);
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "PK_1cf5c9537e7198df494b71b993f";
       public            postgres    false    277    277            �           2606    16905 .   idempotency_key PK_213f125e14469be304f9ff1d452 
   CONSTRAINT     n   ALTER TABLE ONLY public.idempotency_key
    ADD CONSTRAINT "PK_213f125e14469be304f9ff1d452" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.idempotency_key DROP CONSTRAINT "PK_213f125e14469be304f9ff1d452";
       public            postgres    false    252            �           2606    17003 .   cart_gift_cards PK_2389be82bf0ef3635e2014c9ef1 
   CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1" PRIMARY KEY (cart_id, gift_card_id);
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1";
       public            postgres    false    263    263            #           2606    18068 '   tax_rate PK_23b71b53f650c0b39e99ccef4fd 
   CONSTRAINT     g   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd";
       public            postgres    false    285            0           2606    16516 3   product_option_value PK_2ab71ed3b21be5800905c621535 
   CONSTRAINT     s   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "PK_2ab71ed3b21be5800905c621535" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "PK_2ab71ed3b21be5800905c621535";
       public            postgres    false    230            f           2606    18404 3   line_item_adjustment PK_2b1360103753df2dc8257c2c8c3 
   CONSTRAINT     s   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3";
       public            postgres    false    302            <           2606    16555 .   shipping_option PK_2e56fddaa65f3a26d402e5d786e 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e";
       public            postgres    false    233            �           2606    28381 ,   wishlist_name PK_31afb60122a06a75ad03b69c913 
   CONSTRAINT     l   ALTER TABLE ONLY public.wishlist_name
    ADD CONSTRAINT "PK_31afb60122a06a75ad03b69c913" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.wishlist_name DROP CONSTRAINT "PK_31afb60122a06a75ad03b69c913";
       public            postgres    false    322            3           2606    18105 /   product_tax_rate PK_326257ce468df46cd5c8c5922e9 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "PK_326257ce468df46cd5c8c5922e9" PRIMARY KEY (product_id, rate_id);
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "PK_326257ce468df46cd5c8c5922e9";
       public            postgres    false    289    289            �           2606    16976 5   discount_rule_products PK_351c8c92f5d27283c445cd022ee 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "PK_351c8c92f5d27283c445cd022ee" PRIMARY KEY (discount_rule_id, product_id);
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "PK_351c8c92f5d27283c445cd022ee";
       public            postgres    false    260    260            W           2606    18276 >   discount_condition_product_type PK_35d538a5a24399d0df978df12ed 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "PK_35d538a5a24399d0df978df12ed" PRIMARY KEY (product_type_id, condition_id);
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "PK_35d538a5a24399d0df978df12ed";
       public            postgres    false    298    298                       2606    16440 *   return_item PK_46409dc1dd5f38509b9000c3069 
   CONSTRAINT     z   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "PK_46409dc1dd5f38509b9000c3069" PRIMARY KEY (return_id, item_id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "PK_46409dc1dd5f38509b9000c3069";
       public            postgres    false    221    221            �           2606    17021 /   order_gift_cards PK_49a8ec66a6625d7c2e3526e05b4 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4" PRIMARY KEY (order_id, gift_card_id);
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4";
       public            postgres    false    265    265            �           2606    17708 1   product_collection PK_49d419fc77d3aed46c835c558ac 
   CONSTRAINT     q   ALTER TABLE ONLY public.product_collection
    ADD CONSTRAINT "PK_49d419fc77d3aed46c835c558ac" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.product_collection DROP CONSTRAINT "PK_49d419fc77d3aed46c835c558ac";
       public            postgres    false    274            (           2606    18085 1   line_item_tax_line PK_4a0f4322fcd5ce4af85727f89a8 
   CONSTRAINT     q   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8";
       public            postgres    false    287                       2606    16761 #   swap PK_4a10d0f359339acef77e7f986d9 
   CONSTRAINT     c   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "PK_4a10d0f359339acef77e7f986d9" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "PK_4a10d0f359339acef77e7f986d9";
       public            postgres    false    244            4           2606    16526 -   product_option PK_4cf3c467e9bc764bdd32c4cd938 
   CONSTRAINT     m   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938";
       public            postgres    false    231                       2606    16432 *   fulfillment PK_50c102da132afffae660585981f 
   CONSTRAINT     j   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "PK_50c102da132afffae660585981f" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "PK_50c102da132afffae660585981f";
       public            postgres    false    220            ]           2606    18373 )   price_list PK_52ea7826468b1c889cb2c28df03 
   CONSTRAINT     i   ALTER TABLE ONLY public.price_list
    ADD CONSTRAINT "PK_52ea7826468b1c889cb2c28df03" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.price_list DROP CONSTRAINT "PK_52ea7826468b1c889cb2c28df03";
       public            postgres    false    300            �           2606    17534 .   claim_item_tags PK_54ab8ce0f7e99167068188fbd81 
   CONSTRAINT     {   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81" PRIMARY KEY (item_id, tag_id);
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81";
       public            postgres    false    271    271            -           2606    18095 7   shipping_method_tax_line PK_54c94f5908aacbd51cf0a73edb1 
   CONSTRAINT     w   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1" PRIMARY KEY (id);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1";
       public            postgres    false    288            �           2606    17479 )   claim_item PK_5679662039bc4c7c6bc7fa1be2d 
   CONSTRAINT     i   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d";
       public            postgres    false    269            z           2606    18538 )   order_edit PK_58ab6acf2e84b4e827f5f846f7a 
   CONSTRAINT     i   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a";
       public            postgres    false    307            �           2606    16958 ;   region_fulfillment_providers PK_5b7d928a1fb50d6803868cfab3a 
   CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a" PRIMARY KEY (region_id, provider_id);
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a";
       public            postgres    false    258    258                       2606    16474 %   region PK_5f48ffc3af96bc486f5f3f3a6da 
   CONSTRAINT     e   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da";
       public            postgres    false    226            �           2606    28372 '   wishlist PK_620bff4a240d66c357b5d820eaa 
   CONSTRAINT     g   ALTER TABLE ONLY public.wishlist
    ADD CONSTRAINT "PK_620bff4a240d66c357b5d820eaa" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.wishlist DROP CONSTRAINT "PK_620bff4a240d66c357b5d820eaa";
       public            postgres    false    321            �           2606    18674 @   publishable_api_key_sales_channel PK_68eaeb14bdac8954460054c567c 
   CONSTRAINT     �   ALTER TABLE ONLY public.publishable_api_key_sales_channel
    ADD CONSTRAINT "PK_68eaeb14bdac8954460054c567c" PRIMARY KEY (sales_channel_id, publishable_key_id);
 l   ALTER TABLE ONLY public.publishable_api_key_sales_channel DROP CONSTRAINT "PK_68eaeb14bdac8954460054c567c";
       public            postgres    false    312    312            �           2606    17681 +   notification PK_705b6c7cdf9b2c2ff7ac7872cb7 
   CONSTRAINT     k   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7";
       public            postgres    false    273                       2606    16447 '   currency PK_723472e41cae44beb0763f4039c 
   CONSTRAINT     i   ALTER TABLE ONLY public.currency
    ADD CONSTRAINT "PK_723472e41cae44beb0763f4039c" PRIMARY KEY (code);
 S   ALTER TABLE ONLY public.currency DROP CONSTRAINT "PK_723472e41cae44beb0763f4039c";
       public            postgres    false    222            �           2606    17460 (   claim_tag PK_7761180541142a5926501018d34 
   CONSTRAINT     h   ALTER TABLE ONLY public.claim_tag
    ADD CONSTRAINT "PK_7761180541142a5926501018d34" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.claim_tag DROP CONSTRAINT "PK_7761180541142a5926501018d34";
       public            postgres    false    268            �           2606    17451 *   claim_image PK_7c49e44bfe8840ca7d917890101 
   CONSTRAINT     j   ALTER TABLE ONLY public.claim_image
    ADD CONSTRAINT "PK_7c49e44bfe8840ca7d917890101" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.claim_image DROP CONSTRAINT "PK_7c49e44bfe8840ca7d917890101";
       public            postgres    false    267            >           2606    18191 -   customer_group PK_88e7da3ff7262d9e0a35aa3664e 
   CONSTRAINT     m   ALTER TABLE ONLY public.customer_group
    ADD CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e" PRIMARY KEY (id);
 Y   ALTER TABLE ONLY public.customer_group DROP CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e";
       public            postgres    false    292            �           2606    18880 /   onboarding_state PK_891b72628471aada55d7b8c9410 
   CONSTRAINT     o   ALTER TABLE ONLY public.onboarding_state
    ADD CONSTRAINT "PK_891b72628471aada55d7b8c9410" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.onboarding_state DROP CONSTRAINT "PK_891b72628471aada55d7b8c9410";
       public            postgres    false    319            �           2606    17527 *   claim_order PK_8981f5595a4424021466aa4c7a4 
   CONSTRAINT     j   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "PK_8981f5595a4424021466aa4c7a4" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "PK_8981f5595a4424021466aa4c7a4";
       public            postgres    false    270                       2606    16407 )   migrations PK_8c82d7f526340ab734260ea46be 
   CONSTRAINT     i   ALTER TABLE ONLY public.migrations
    ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.migrations DROP CONSTRAINT "PK_8c82d7f526340ab734260ea46be";
       public            postgres    false    217                       2606    18000 5   custom_shipping_option PK_8dfcb5c1172c29eec4a728420cc 
   CONSTRAINT     u   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc";
       public            postgres    false    284            �           2606    18666 /   analytics_config PK_93505647c5d7cb479becb810b0f 
   CONSTRAINT     o   ALTER TABLE ONLY public.analytics_config
    ADD CONSTRAINT "PK_93505647c5d7cb479becb810b0f" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.analytics_config DROP CONSTRAINT "PK_93505647c5d7cb479becb810b0f";
       public            postgres    false    311                       2606    17844 ,   return_reason PK_95fd1172973165790903e65660a 
   CONSTRAINT     l   ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT "PK_95fd1172973165790903e65660a" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.return_reason DROP CONSTRAINT "PK_95fd1172973165790903e65660a";
       public            postgres    false    281                       2606    17958 #   note PK_96d0c172a4fba276b1bbed43058 
   CONSTRAINT     c   ALTER TABLE ONLY public.note
    ADD CONSTRAINT "PK_96d0c172a4fba276b1bbed43058" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.note DROP CONSTRAINT "PK_96d0c172a4fba276b1bbed43058";
       public            postgres    false    282            [           2606    18285 9   discount_condition_product PK_994eb4529fdbf14450d64ec17e8 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8" PRIMARY KEY (product_id, condition_id);
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8";
       public            postgres    false    299    299            �           2606    18706 =   product_variant_inventory_item PK_9a1188b8d36f4d198303b4f7efa 
   CONSTRAINT     }   ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa" PRIMARY KEY (id);
 i   ALTER TABLE ONLY public.product_variant_inventory_item DROP CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa";
       public            postgres    false    315            �           2606    16921 )   staged_job PK_9a28fb48c46c5509faf43ac8c8d 
   CONSTRAINT     i   ALTER TABLE ONLY public.staged_job
    ADD CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d" PRIMARY KEY (id);
 U   ALTER TABLE ONLY public.staged_job DROP CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d";
       public            postgres    false    254            �           2606    18683 2   publishable_api_key PK_9e613278673a87de92c606b4494 
   CONSTRAINT     r   ALTER TABLE ONLY public.publishable_api_key
    ADD CONSTRAINT "PK_9e613278673a87de92c606b4494" PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.publishable_api_key DROP CONSTRAINT "PK_9e613278673a87de92c606b4494";
       public            postgres    false    313            �           2606    16949 7   region_payment_providers PK_9fa1e69914d3dd752de6b1da407 
   CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407" PRIMARY KEY (region_id, provider_id);
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407";
       public            postgres    false    257    257            7           2606    16539 :   shipping_option_requirement PK_a0ff15442606d9f783602cb23a7 
   CONSTRAINT     z   ALTER TABLE ONLY public.shipping_option_requirement
    ADD CONSTRAINT "PK_a0ff15442606d9f783602cb23a7" PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.shipping_option_requirement DROP CONSTRAINT "PK_a0ff15442606d9f783602cb23a7";
       public            postgres    false    232            O           2606    16637 .   payment_session PK_a1a91b20f7f3b1e5afb5485cbcd 
   CONSTRAINT     n   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd";
       public            postgres    false    238            �           2606    17012 .   order_discounts PK_a7418714ffceebc125bf6d8fcfe 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe" PRIMARY KEY (order_id, discount_id);
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe";
       public            postgres    false    264    264            �           2606    16884 '   customer PK_a7a13f4cacb744524e44dfdad32 
   CONSTRAINT     g   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32";
       public            postgres    false    250            S           2606    18267 =   discount_condition_product_tag PK_a95382c1e62205b121aa058682b 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "PK_a95382c1e62205b121aa058682b" PRIMARY KEY (product_tag_id, condition_id);
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "PK_a95382c1e62205b121aa058682b";
       public            postgres    false    297    297            �           2606    16913 $   oauth PK_a957b894e50eb16b969c0640a8d 
   CONSTRAINT     d   ALTER TABLE ONLY public.oauth
    ADD CONSTRAINT "PK_a957b894e50eb16b969c0640a8d" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.oauth DROP CONSTRAINT "PK_a957b894e50eb16b969c0640a8d";
       public            postgres    false    253            E           2606    16605 ,   discount_rule PK_ac2c280de3701b2d66f6817f760 
   CONSTRAINT     l   ALTER TABLE ONLY public.discount_rule
    ADD CONSTRAINT "PK_ac2c280de3701b2d66f6817f760" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.discount_rule DROP CONSTRAINT "PK_ac2c280de3701b2d66f6817f760";
       public            postgres    false    236            `           2606    16663 (   gift_card PK_af4e338d2d41035042843ad641f 
   CONSTRAINT     h   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "PK_af4e338d2d41035042843ad641f" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "PK_af4e338d2d41035042843ad641f";
       public            postgres    false    240            �           2606    18694 5   sales_channel_location PK_afd2c2c52634bc8280a9c9ee533 
   CONSTRAINT     u   ALTER TABLE ONLY public.sales_channel_location
    ADD CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533" PRIMARY KEY (id);
 a   ALTER TABLE ONLY public.sales_channel_location DROP CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533";
       public            postgres    false    314            %           2606    18076 +   tax_provider PK_b198bf82ba6a317c11763d99b99 
   CONSTRAINT     k   ALTER TABLE ONLY public.tax_provider
    ADD CONSTRAINT "PK_b198bf82ba6a317c11763d99b99" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.tax_provider DROP CONSTRAINT "PK_b198bf82ba6a317c11763d99b99";
       public            postgres    false    286            O           2606    18258 D   discount_condition_product_collection PK_b3508fc787aa4a38705866cbb6d 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d" PRIMARY KEY (product_collection_id, condition_id);
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d";
       public            postgres    false    296    296            q           2606    16695 .   shipping_method PK_b9b0adfad3c6b99229c1e7d4865 
   CONSTRAINT     n   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865" PRIMARY KEY (id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865";
       public            postgres    false    242                       2606    16422 /   fulfillment_item PK_bc3e8a388de75db146a249922e0 
   CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "PK_bc3e8a388de75db146a249922e0" PRIMARY KEY (fulfillment_id, item_id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "PK_bc3e8a388de75db146a249922e0";
       public            postgres    false    219    219            ;           2606    18123 0   shipping_tax_rate PK_bcd93b14d7e2695365d383f5eae 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae" PRIMARY KEY (shipping_option_id, rate_id);
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae";
       public            postgres    false    291    291            
           2606    16415 3   fulfillment_provider PK_beb35a6de60a6c4f91d5ae57e44 
   CONSTRAINT     s   ALTER TABLE ONLY public.fulfillment_provider
    ADD CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44" PRIMARY KEY (id);
 _   ALTER TABLE ONLY public.fulfillment_provider DROP CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44";
       public            postgres    false    218            A           2606    16581 &   product PK_bebc9158e480b949565b4dc7a82 
   CONSTRAINT     f   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "PK_bebc9158e480b949565b4dc7a82";
       public            postgres    false    235                       2606    16456 &   country PK_bf6e37c231c4f4ea56dcd887269 
   CONSTRAINT     f   ALTER TABLE ONLY public.country
    ADD CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.country DROP CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269";
       public            postgres    false    224            g           2606    16684 #   cart PK_c524ec48751b9b5bcfbf6e59be7 
   CONSTRAINT     c   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7" PRIMARY KEY (id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7";
       public            postgres    false    241            >           2606    16571 /   shipping_profile PK_c8120e4543a5a3a121f2968a1ec 
   CONSTRAINT     o   ALTER TABLE ONLY public.shipping_profile
    ADD CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.shipping_profile DROP CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec";
       public            postgres    false    234            x           2606    16720 %   return PK_c8ad68d13e76d75d803b5aeebc4 
   CONSTRAINT     e   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4";
       public            postgres    false    243            �           2606    16941 #   user PK_cace4a159ff9f2512dd42373760 
   CONSTRAINT     e   ALTER TABLE ONLY public."user"
    ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public."user" DROP CONSTRAINT "PK_cace4a159ff9f2512dd42373760";
       public            postgres    false    256            �           2606    16779 (   line_item PK_cce6b13e67fa506d1d9618ac68b 
   CONSTRAINT     h   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b";
       public            postgres    false    245            K           2606    18249 @   discount_condition_customer_group PK_cdc8b2277169a16b8b7d4c73e0e 
   CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e" PRIMARY KEY (customer_group_id, condition_id);
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e";
       public            postgres    false    295    295            �           2606    16791 4   gift_card_transaction PK_cfb5b4ba5447a507aef87d73fe7 
   CONSTRAINT     t   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7" PRIMARY KEY (id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7";
       public            postgres    false    246            I           2606    16615 '   discount PK_d05d8712e429673e459e7f1cddb 
   CONSTRAINT     g   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "PK_d05d8712e429673e459e7f1cddb" PRIMARY KEY (id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "PK_d05d8712e429673e459e7f1cddb";
       public            postgres    false    237            j           2606    18446 ,   sales_channel PK_d1eb0b923ea5a0eb1e0916191f1 
   CONSTRAINT     l   ALTER TABLE ONLY public.sales_channel
    ADD CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.sales_channel DROP CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1";
       public            postgres    false    304            !           2606    16483 $   image PK_d6db1ab4ee9ad9dbe86c64e4cc3 
   CONSTRAINT     d   ALTER TABLE ONLY public.image
    ADD CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.image DROP CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3";
       public            postgres    false    227            p           2606    18523 0   order_item_change PK_d6eb138f77ffdee83567b85af0c 
   CONSTRAINT     p   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c" PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c";
       public            postgres    false    306            �           2606    16896 &   address PK_d92de1f82754668b5f5f5dd4fd5 
   CONSTRAINT     f   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5";
       public            postgres    false    251            7           2606    18114 4   product_type_tax_rate PK_ddc9242de1d99bc7674969289f0 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "PK_ddc9242de1d99bc7674969289f0" PRIMARY KEY (product_type_id, rate_id);
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "PK_ddc9242de1d99bc7674969289f0";
       public            postgres    false    290    290                       2606    17727 +   product_type PK_e0843930fbb8854fe36ca39dae1 
   CONSTRAINT     k   ALTER TABLE ONLY public.product_type
    ADD CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.product_type DROP CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1";
       public            postgres    false    276            B           2606    18199 7   customer_group_customers PK_e28a55e34ad1e2d3df9a0ac86d3 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3" PRIMARY KEY (customer_group_id, customer_id);
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3";
       public            postgres    false    293    293            h           2606    18431 (   batch_job PK_e57f84d485145d5be96bc6d871e 
   CONSTRAINT     h   ALTER TABLE ONLY public.batch_job
    ADD CONSTRAINT "PK_e57f84d485145d5be96bc6d871e" PRIMARY KEY (id);
 T   ALTER TABLE ONLY public.batch_job DROP CONSTRAINT "PK_e57f84d485145d5be96bc6d871e";
       public            postgres    false    303            E           2606    18237 1   discount_condition PK_e6b81d83133ddc21a2baf2e2204 
   CONSTRAINT     q   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204" PRIMARY KEY (id);
 ]   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204";
       public            postgres    false    294                       2606    16465 /   payment_provider PK_ea94f42b6c88e9191c3649d7522 
   CONSTRAINT     o   ALTER TABLE ONLY public.payment_provider
    ADD CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.payment_provider DROP CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522";
       public            postgres    false    225            �           2606    16811 %   refund PK_f1cefa2e60d99b206c46c1116e5 
   CONSTRAINT     e   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5";
       public            postgres    false    247            �           2606    16932 $   store PK_f3172007d4de5ae8e7692759d79 
   CONSTRAINT     d   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "PK_f3172007d4de5ae8e7692759d79" PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "PK_f3172007d4de5ae8e7692759d79";
       public            postgres    false    255                       2606    17774 *   draft_order PK_f478946c183d98f8d88a94cfcd7 
   CONSTRAINT     j   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7" PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7";
       public            postgres    false    279                       2606    17979 %   invite PK_fc9fa190e5a3c5d80604a4f63e1 
   CONSTRAINT     e   ALTER TABLE ONLY public.invite
    ADD CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1" PRIMARY KEY (id);
 Q   ALTER TABLE ONLY public.invite DROP CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1";
       public            postgres    false    283            X           2606    16649 &   payment PK_fcaec7df5adf9cac408c686b2ab 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab" PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab";
       public            postgres    false    239                       2606    17830 ,   tracking_link PK_fcfd77feb9012ec2126d7c0bfb6 
   CONSTRAINT     l   ALTER TABLE ONLY public.tracking_link
    ADD CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6" PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.tracking_link DROP CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6";
       public            postgres    false    280            n           2606    18453 4   product_sales_channel PK_fd29b6a8bd641052628dee19583 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "PK_fd29b6a8bd641052628dee19583" PRIMARY KEY (product_id, sales_channel_id);
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "PK_fd29b6a8bd641052628dee19583";
       public            postgres    false    305    305            ~           2606    18593 +   payment_collection PK_payment_collection_id 
   CONSTRAINT     k   ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT "PK_payment_collection_id" PRIMARY KEY (id);
 W   ALTER TABLE ONLY public.payment_collection DROP CONSTRAINT "PK_payment_collection_id";
       public            postgres    false    308            �           2606    18626 :   payment_collection_payments PK_payment_collection_payments 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "PK_payment_collection_payments" PRIMARY KEY (payment_collection_id, payment_id);
 f   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "PK_payment_collection_payments";
       public            postgres    false    310    310            �           2606    18607 :   payment_collection_sessions PK_payment_collection_sessions 
   CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "PK_payment_collection_sessions" PRIMARY KEY (payment_collection_id, payment_session_id);
 f   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "PK_payment_collection_sessions";
       public            postgres    false    309    309            �           2606    18890 <   product_variant_money_amount PK_product_variant_money_amount 
   CONSTRAINT     |   ALTER TABLE ONLY public.product_variant_money_amount
    ADD CONSTRAINT "PK_product_variant_money_amount" PRIMARY KEY (id);
 h   ALTER TABLE ONLY public.product_variant_money_amount DROP CONSTRAINT "PK_product_variant_money_amount";
       public            postgres    false    320            �           2606    18721 /   product_category PK_qgguwbn1cwstxk93efl0px9oqwt 
   CONSTRAINT     o   ALTER TABLE ONLY public.product_category
    ADD CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt" PRIMARY KEY (id);
 [   ALTER TABLE ONLY public.product_category DROP CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt";
       public            postgres    false    316            s           2606    16697 .   shipping_method REL_1d9ad62038998c3a85c77a53cf 
   CONSTRAINT     p   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf" UNIQUE (return_id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf";
       public            postgres    false    242            �           2606    16763 #   swap REL_402e8182bc553e082f6380020b 
   CONSTRAINT     c   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "REL_402e8182bc553e082f6380020b" UNIQUE (cart_id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "REL_402e8182bc553e082f6380020b";
       public            postgres    false    244                       2606    17776 *   draft_order REL_5bd11d0e2a9628128e2c26fd0a 
   CONSTRAINT     j   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a" UNIQUE (cart_id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a";
       public            postgres    false    279            r           2606    18529 0   order_item_change REL_5f9688929761f7df108b630e64 
   CONSTRAINT     u   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "REL_5f9688929761f7df108b630e64" UNIQUE (line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "REL_5f9688929761f7df108b630e64";
       public            postgres    false    306            �           2606    16886 '   customer REL_8abe81b9aac151ae60bf507ad1 
   CONSTRAINT     r   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1" UNIQUE (billing_address_id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1";
       public            postgres    false    250                       2606    17778 *   draft_order REL_8f6dd6c49202f1466ebf21e77d 
   CONSTRAINT     k   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d" UNIQUE (order_id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d";
       public            postgres    false    279            i           2606    16686 #   cart REL_9d1a161434c610aae7c3df2dc7 
   CONSTRAINT     f   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7" UNIQUE (payment_id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7";
       public            postgres    false    241            z           2606    16722 %   return REL_bad82d7bff2b08b87094bfac3d 
   CONSTRAINT     e   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d" UNIQUE (swap_id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d";
       public            postgres    false    243            Z           2606    16651 &   payment REL_c17aff091441b7c25ec3d68d36 
   CONSTRAINT     f   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "REL_c17aff091441b7c25ec3d68d36" UNIQUE (swap_id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "REL_c17aff091441b7c25ec3d68d36";
       public            postgres    false    239            �           2606    16874 $   order REL_c99a206eb11ad45f6b7f04f2dc 
   CONSTRAINT     f   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc" UNIQUE (cart_id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc";
       public            postgres    false    249            !           2606    18002 5   custom_shipping_option UQ_0f838b122a9a01d921aa1cdb669 
   CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669" UNIQUE (shipping_option_id, cart_id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669";
       public            postgres    false    284    284            *           2606    18419 1   line_item_tax_line UQ_3c2af51043ed7243e7d9775a2ad 
   CONSTRAINT     w   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad" UNIQUE (item_id, code);
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad";
       public            postgres    false    287    287            t           2606    18527 0   order_item_change UQ_5b7a99181e4db2ea821be0b6196 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196" UNIQUE (order_edit_id, original_line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196";
       public            postgres    false    306    306            �           2606    18457 $   store UQ_61b0f48cccbb5f41c750bac7286 
   CONSTRAINT     u   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286" UNIQUE (default_sales_channel_id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286";
       public            postgres    false    255            |           2606    17538 %   return UQ_71773d56eb2bacb922bc3283398 
   CONSTRAINT     l   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "UQ_71773d56eb2bacb922bc3283398" UNIQUE (claim_order_id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "UQ_71773d56eb2bacb922bc3283398";
       public            postgres    false    243            �           2606    17783 $   order UQ_727b872f86c7378474a8fa46147 
   CONSTRAINT     m   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "UQ_727b872f86c7378474a8fa46147" UNIQUE (draft_order_id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "UQ_727b872f86c7378474a8fa46147";
       public            postgres    false    249            �           2606    18708 =   product_variant_inventory_item UQ_c9be7c1b11a1a729eb51d1b6bca 
   CONSTRAINT     �   ALTER TABLE ONLY public.product_variant_inventory_item
    ADD CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca" UNIQUE (variant_id, inventory_item_id);
 i   ALTER TABLE ONLY public.product_variant_inventory_item DROP CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca";
       public            postgres    false    315    315            /           2606    18421 7   shipping_method_tax_line UQ_cd147fca71e50bc954139fa3104 
   CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "UQ_cd147fca71e50bc954139fa3104" UNIQUE (shipping_method_id, code);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "UQ_cd147fca71e50bc954139fa3104";
       public            postgres    false    288    288            v           2606    18525 0   order_item_change UQ_da93cee3ca0dd50a5246268c2e9 
   CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9" UNIQUE (order_edit_id, line_item_id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9";
       public            postgres    false    306    306            �           2606    18685 9   customer UQ_unique_email_for_guests_and_customer_accounts 
   CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "UQ_unique_email_for_guests_and_customer_accounts" UNIQUE (email, has_account);
 e   ALTER TABLE ONLY public.customer DROP CONSTRAINT "UQ_unique_email_for_guests_and_customer_accounts";
       public            postgres    false    250    250            G           2606    18239    discount_condition dctypeuniq 
   CONSTRAINT     t   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT dctypeuniq UNIQUE (type, operator, discount_rule_id);
 G   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT dctypeuniq;
       public            postgres    false    294    294    294            �           2606    16793    gift_card_transaction gcuniq 
   CONSTRAINT     i   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT gcuniq UNIQUE (gift_card_id, order_id);
 F   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT gcuniq;
       public            postgres    false    246    246            5           1259    17623    IDX_012a62ba743e427b5ebe9dee18    INDEX     v   CREATE INDEX "IDX_012a62ba743e427b5ebe9dee18" ON public.shipping_option_requirement USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_012a62ba743e427b5ebe9dee18";
       public            postgres    false    232            P           1259    18291    IDX_01486cc9dc6b36bf658685535f    INDEX     u   CREATE INDEX "IDX_01486cc9dc6b36bf658685535f" ON public.discount_condition_product_tag USING btree (product_tag_id);
 4   DROP INDEX public."IDX_01486cc9dc6b36bf658685535f";
       public            postgres    false    297            �           1259    17649    IDX_017d58bf8260c6e1a2588d258e    INDEX     g   CREATE INDEX "IDX_017d58bf8260c6e1a2588d258e" ON public.claim_order USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_017d58bf8260c6e1a2588d258e";
       public            postgres    false    270            &           1259    17931    IDX_045d4a149c09f4704e0bc08dd4    INDEX     �   CREATE UNIQUE INDEX "IDX_045d4a149c09f4704e0bc08dd4" ON public.product_variant USING btree (barcode) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_045d4a149c09f4704e0bc08dd4";
       public            postgres    false    229    229            �           1259    17005    IDX_0fb38b6d167793192bc126d835    INDEX     d   CREATE INDEX "IDX_0fb38b6d167793192bc126d835" ON public.cart_gift_cards USING btree (gift_card_id);
 4   DROP INDEX public."IDX_0fb38b6d167793192bc126d835";
       public            postgres    false    263            �           1259    17014    IDX_0fc1ec4e3db9001ad60c19daf1    INDEX     c   CREATE INDEX "IDX_0fc1ec4e3db9001ad60c19daf1" ON public.order_discounts USING btree (discount_id);
 4   DROP INDEX public."IDX_0fc1ec4e3db9001ad60c19daf1";
       public            postgres    false    264            �           1259    17558    IDX_118e3c48f09a7728f41023c94e    INDEX     `   CREATE INDEX "IDX_118e3c48f09a7728f41023c94e" ON public.line_item USING btree (claim_order_id);
 4   DROP INDEX public."IDX_118e3c48f09a7728f41023c94e";
       public            postgres    false    245            �           1259    17661    IDX_19b0c6293443d1b464f604c331    INDEX     c   CREATE INDEX "IDX_19b0c6293443d1b464f604c331" ON public."order" USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_19b0c6293443d1b464f604c331";
       public            postgres    false    249            0           1259    18128    IDX_1d04aebeabb6a89f87e536a124    INDEX     c   CREATE INDEX "IDX_1d04aebeabb6a89f87e536a124" ON public.product_tax_rate USING btree (product_id);
 4   DROP INDEX public."IDX_1d04aebeabb6a89f87e536a124";
       public            postgres    false    289            j           1259    16702    IDX_1d9ad62038998c3a85c77a53cf    INDEX     a   CREATE INDEX "IDX_1d9ad62038998c3a85c77a53cf" ON public.shipping_method USING btree (return_id);
 4   DROP INDEX public."IDX_1d9ad62038998c3a85c77a53cf";
       public            postgres    false    242                       1259    17736    IDX_21683a063fe82dafdf681ecc9c    INDEX     c   CREATE INDEX "IDX_21683a063fe82dafdf681ecc9c" ON public.product_tags USING btree (product_tag_id);
 4   DROP INDEX public."IDX_21683a063fe82dafdf681ecc9c";
       public            postgres    false    277            �           1259    17620    IDX_21cbfedd83d736d86f4c6f4ce5    INDEX     a   CREATE INDEX "IDX_21cbfedd83d736d86f4c6f4ce5" ON public.claim_image USING btree (claim_item_id);
 4   DROP INDEX public."IDX_21cbfedd83d736d86f4c6f4ce5";
       public            postgres    false    267            �           1259    16969    IDX_2212515ba306c79f42c46a99db    INDEX     _   CREATE INDEX "IDX_2212515ba306c79f42c46a99db" ON public.product_images USING btree (image_id);
 4   DROP INDEX public."IDX_2212515ba306c79f42c46a99db";
       public            postgres    false    259            a           1259    17643    IDX_242205c81c1152fab1b6e84847    INDEX     X   CREATE INDEX "IDX_242205c81c1152fab1b6e84847" ON public.cart USING btree (customer_id);
 4   DROP INDEX public."IDX_242205c81c1152fab1b6e84847";
       public            postgres    false    241            1           1259    18127    IDX_2484cf14c437a04586b07e7ddd    INDEX     `   CREATE INDEX "IDX_2484cf14c437a04586b07e7ddd" ON public.product_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_2484cf14c437a04586b07e7ddd";
       public            postgres    false    289            4           1259    18130    IDX_25a3138bb236f63d9bb6c8ff11    INDEX     m   CREATE INDEX "IDX_25a3138bb236f63d9bb6c8ff11" ON public.product_type_tax_rate USING btree (product_type_id);
 4   DROP INDEX public."IDX_25a3138bb236f63d9bb6c8ff11";
       public            postgres    false    290            �           1259    16780    IDX_27283ee631862266d0f1c68064    INDEX     Y   CREATE INDEX "IDX_27283ee631862266d0f1c68064" ON public.line_item USING btree (cart_id);
 4   DROP INDEX public."IDX_27283ee631862266d0f1c68064";
       public            postgres    false    245            '           1259    17930    IDX_2ca8cfbdafb998ecfd6d340389    INDEX     }   CREATE UNIQUE INDEX "IDX_2ca8cfbdafb998ecfd6d340389" ON public.product_variant USING btree (sku) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_2ca8cfbdafb998ecfd6d340389";
       public            postgres    false    229    229            b           1259    18406    IDX_2f41b20a71f30e60471d7e3769    INDEX     h   CREATE INDEX "IDX_2f41b20a71f30e60471d7e3769" ON public.line_item_adjustment USING btree (discount_id);
 4   DROP INDEX public."IDX_2f41b20a71f30e60471d7e3769";
       public            postgres    false    302                       1259    17960    IDX_3287f98befad26c3a7dab088cf    INDEX     X   CREATE INDEX "IDX_3287f98befad26c3a7dab088cf" ON public.note USING btree (resource_id);
 4   DROP INDEX public."IDX_3287f98befad26c3a7dab088cf";
       public            postgres    false    282            8           1259    18131    IDX_346e0016cf045b998074774764    INDEX     a   CREATE INDEX "IDX_346e0016cf045b998074774764" ON public.shipping_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_346e0016cf045b998074774764";
       public            postgres    false    291            k           1259    18455    IDX_37341bad297fe5cca91f921032    INDEX     n   CREATE INDEX "IDX_37341bad297fe5cca91f921032" ON public.product_sales_channel USING btree (sales_channel_id);
 4   DROP INDEX public."IDX_37341bad297fe5cca91f921032";
       public            postgres    false    305            �           1259    18667    IDX_379ca70338ce9991f3affdeedf    INDEX     �   CREATE UNIQUE INDEX "IDX_379ca70338ce9991f3affdeedf" ON public.analytics_config USING btree (id, user_id) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_379ca70338ce9991f3affdeedf";
       public            postgres    false    311    311    311            �           1259    16960    IDX_37f361c38a18d12a3fa3158d0c    INDEX     p   CREATE INDEX "IDX_37f361c38a18d12a3fa3158d0c" ON public.region_fulfillment_providers USING btree (provider_id);
 4   DROP INDEX public."IDX_37f361c38a18d12a3fa3158d0c";
       public            postgres    false    258            �           1259    16951    IDX_3a6947180aeec283cd92c59ebb    INDEX     l   CREATE INDEX "IDX_3a6947180aeec283cd92c59ebb" ON public.region_payment_providers USING btree (provider_id);
 4   DROP INDEX public."IDX_3a6947180aeec283cd92c59ebb";
       public            postgres    false    257            ?           1259    18201    IDX_3c6412d076292f439269abe1a2    INDEX     l   CREATE INDEX "IDX_3c6412d076292f439269abe1a2" ON public.customer_group_customers USING btree (customer_id);
 4   DROP INDEX public."IDX_3c6412d076292f439269abe1a2";
       public            postgres    false    293            �           1259    16782    IDX_3fa354d8d1233ff81097b2fcb6    INDEX     Y   CREATE INDEX "IDX_3fa354d8d1233ff81097b2fcb6" ON public.line_item USING btree (swap_id);
 4   DROP INDEX public."IDX_3fa354d8d1233ff81097b2fcb6";
       public            postgres    false    245            �           1259    16781    IDX_43a2b24495fe1d9fc2a9c835bc    INDEX     Z   CREATE INDEX "IDX_43a2b24495fe1d9fc2a9c835bc" ON public.line_item USING btree (order_id);
 4   DROP INDEX public."IDX_43a2b24495fe1d9fc2a9c835bc";
       public            postgres    false    245                       1259    18003    IDX_44090cb11b06174cbcc667e91c    INDEX     q   CREATE INDEX "IDX_44090cb11b06174cbcc667e91c" ON public.custom_shipping_option USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_44090cb11b06174cbcc667e91c";
       public            postgres    false    284            Q           1259    17635    IDX_4665f17abc1e81dd58330e5854    INDEX     W   CREATE INDEX "IDX_4665f17abc1e81dd58330e5854" ON public.payment USING btree (cart_id);
 4   DROP INDEX public."IDX_4665f17abc1e81dd58330e5854";
       public            postgres    false    239            b           1259    17642    IDX_484c329f4783be4e18e5e2ff09    INDEX     V   CREATE INDEX "IDX_484c329f4783be4e18e5e2ff09" ON public.cart USING btree (region_id);
 4   DROP INDEX public."IDX_484c329f4783be4e18e5e2ff09";
       public            postgres    false    241            H           1259    18295    IDX_4d5f98645a67545d8dea42e2eb    INDEX     {   CREATE INDEX "IDX_4d5f98645a67545d8dea42e2eb" ON public.discount_condition_customer_group USING btree (customer_group_id);
 4   DROP INDEX public."IDX_4d5f98645a67545d8dea42e2eb";
       public            postgres    false    295            �           1259    16977    IDX_4e0739e5f0244c08d41174ca08    INDEX     o   CREATE INDEX "IDX_4e0739e5f0244c08d41174ca08" ON public.discount_rule_products USING btree (discount_rule_id);
 4   DROP INDEX public."IDX_4e0739e5f0244c08d41174ca08";
       public            postgres    false    260            �           1259    16968    IDX_4f166bb8c2bfcef2498d97b406    INDEX     a   CREATE INDEX "IDX_4f166bb8c2bfcef2498d97b406" ON public.product_images USING btree (product_id);
 4   DROP INDEX public."IDX_4f166bb8c2bfcef2498d97b406";
       public            postgres    false    259            &           1259    18086    IDX_5077fa54b0d037e984385dfe8a    INDEX     b   CREATE INDEX "IDX_5077fa54b0d037e984385dfe8a" ON public.line_item_tax_line USING btree (item_id);
 4   DROP INDEX public."IDX_5077fa54b0d037e984385dfe8a";
       public            postgres    false    287            k           1259    16699    IDX_5267705a43d547e232535b656c    INDEX     `   CREATE INDEX "IDX_5267705a43d547e232535b656c" ON public.shipping_method USING btree (order_id);
 4   DROP INDEX public."IDX_5267705a43d547e232535b656c";
       public            postgres    false    242            ^           1259    18381    IDX_52875734e9dd69064f0041f4d9    INDEX     p   CREATE INDEX "IDX_52875734e9dd69064f0041f4d9" ON public.price_list_customer_groups USING btree (price_list_id);
 4   DROP INDEX public."IDX_52875734e9dd69064f0041f4d9";
       public            postgres    false    301            }           1259    17654    IDX_52dd74e8c989aa5665ad2852b8    INDEX     U   CREATE INDEX "IDX_52dd74e8c989aa5665ad2852b8" ON public.swap USING btree (order_id);
 4   DROP INDEX public."IDX_52dd74e8c989aa5665ad2852b8";
       public            postgres    false    244            �           1259    16783    IDX_5371cbaa3be5200f373d24e3d5    INDEX     \   CREATE INDEX "IDX_5371cbaa3be5200f373d24e3d5" ON public.line_item USING btree (variant_id);
 4   DROP INDEX public."IDX_5371cbaa3be5200f373d24e3d5";
       public            postgres    false    245            \           1259    16666    IDX_53cb5605fa42e82b4d47b47bda    INDEX     ]   CREATE UNIQUE INDEX "IDX_53cb5605fa42e82b4d47b47bda" ON public.gift_card USING btree (code);
 4   DROP INDEX public."IDX_53cb5605fa42e82b4d47b47bda";
       public            postgres    false    240            �           1259    17660    IDX_5568d3b9ce9f7abeeb37511ecf    INDEX     b   CREATE INDEX "IDX_5568d3b9ce9f7abeeb37511ecf" ON public."order" USING btree (billing_address_id);
 4   DROP INDEX public."IDX_5568d3b9ce9f7abeeb37511ecf";
       public            postgres    false    249            �           1259    17657    IDX_579e01fb94f4f58db480857e05    INDEX     Z   CREATE INDEX "IDX_579e01fb94f4f58db480857e05" ON public."order" USING btree (display_id);
 4   DROP INDEX public."IDX_579e01fb94f4f58db480857e05";
       public            postgres    false    249            l           1259    18454    IDX_5a4d5e1e60f97633547821ec8d    INDEX     h   CREATE INDEX "IDX_5a4d5e1e60f97633547821ec8d" ON public.product_sales_channel USING btree (product_id);
 4   DROP INDEX public."IDX_5a4d5e1e60f97633547821ec8d";
       public            postgres    false    305                       1259    17735    IDX_5b0c6fc53c574299ecc7f9ee22    INDEX     _   CREATE INDEX "IDX_5b0c6fc53c574299ecc7f9ee22" ON public.product_tags USING btree (product_id);
 4   DROP INDEX public."IDX_5b0c6fc53c574299ecc7f9ee22";
       public            postgres    false    277                       1259    17780    IDX_5bd11d0e2a9628128e2c26fd0a    INDEX     [   CREATE INDEX "IDX_5bd11d0e2a9628128e2c26fd0a" ON public.draft_order USING btree (cart_id);
 4   DROP INDEX public."IDX_5bd11d0e2a9628128e2c26fd0a";
       public            postgres    false    279            8           1259    17624    IDX_5c58105f1752fca0f4ce69f466    INDEX     a   CREATE INDEX "IDX_5c58105f1752fca0f4ce69f466" ON public.shipping_option USING btree (region_id);
 4   DROP INDEX public."IDX_5c58105f1752fca0f4ce69f466";
       public            postgres    false    233            @           1259    18200    IDX_620330964db8d2999e67b0dbe3    INDEX     r   CREATE INDEX "IDX_620330964db8d2999e67b0dbe3" ON public.customer_group_customers USING btree (customer_group_id);
 4   DROP INDEX public."IDX_620330964db8d2999e67b0dbe3";
       public            postgres    false    293            �           1259    17482    IDX_64980511ca32c8e92b417644af    INDEX     ]   CREATE INDEX "IDX_64980511ca32c8e92b417644af" ON public.claim_item USING btree (variant_id);
 4   DROP INDEX public."IDX_64980511ca32c8e92b417644af";
       public            postgres    false    269            �           1259    16995    IDX_6680319ebe1f46d18f106191d5    INDEX     ^   CREATE INDEX "IDX_6680319ebe1f46d18f106191d5" ON public.cart_discounts USING btree (cart_id);
 4   DROP INDEX public."IDX_6680319ebe1f46d18f106191d5";
       public            postgres    false    262                       1259    17990    IDX_6b0ce4b4bcfd24491510bf19d1    INDEX     `   CREATE UNIQUE INDEX "IDX_6b0ce4b4bcfd24491510bf19d1" ON public.invite USING btree (user_email);
 4   DROP INDEX public."IDX_6b0ce4b4bcfd24491510bf19d1";
       public            postgres    false    283            c           1259    17640    IDX_6b9c66b5e36f7c827dfaa092f9    INDEX     _   CREATE INDEX "IDX_6b9c66b5e36f7c827dfaa092f9" ON public.cart USING btree (billing_address_id);
 4   DROP INDEX public."IDX_6b9c66b5e36f7c827dfaa092f9";
       public            postgres    false    241            �           1259    17481    IDX_6e0cad0daef76bb642675910b9    INDEX     Z   CREATE INDEX "IDX_6e0cad0daef76bb642675910b9" ON public.claim_item USING btree (item_id);
 4   DROP INDEX public."IDX_6e0cad0daef76bb642675910b9";
       public            postgres    false    269            T           1259    18288    IDX_6ef23ce0b1d9cf9b5b833e52b9    INDEX     t   CREATE INDEX "IDX_6ef23ce0b1d9cf9b5b833e52b9" ON public.discount_condition_product_type USING btree (condition_id);
 4   DROP INDEX public."IDX_6ef23ce0b1d9cf9b5b833e52b9";
       public            postgres    false    298            �           1259    17928    IDX_6f234f058bbbea810dce1d04d0    INDEX     �   CREATE UNIQUE INDEX "IDX_6f234f058bbbea810dce1d04d0" ON public.product_collection USING btree (handle) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_6f234f058bbbea810dce1d04d0";
       public            postgres    false    274    274            t           1259    17646    IDX_71773d56eb2bacb922bc328339    INDEX     ]   CREATE INDEX "IDX_71773d56eb2bacb922bc328339" ON public.return USING btree (claim_order_id);
 4   DROP INDEX public."IDX_71773d56eb2bacb922bc328339";
       public            postgres    false    243            �           1259    17032    IDX_82a6bbb0b527c20a0002ddcbd6    INDEX     f   CREATE INDEX "IDX_82a6bbb0b527c20a0002ddcbd6" ON public.store_currencies USING btree (currency_code);
 4   DROP INDEX public."IDX_82a6bbb0b527c20a0002ddcbd6";
       public            postgres    false    266            I           1259    18294    IDX_8486ee16e69013c645d0b8716b    INDEX     v   CREATE INDEX "IDX_8486ee16e69013c645d0b8716b" ON public.discount_condition_customer_group USING btree (condition_id);
 4   DROP INDEX public."IDX_8486ee16e69013c645d0b8716b";
       public            postgres    false    295            �           1259    16950    IDX_8aaa78ba90d3802edac317df86    INDEX     j   CREATE INDEX "IDX_8aaa78ba90d3802edac317df86" ON public.region_payment_providers USING btree (region_id);
 4   DROP INDEX public."IDX_8aaa78ba90d3802edac317df86";
       public            postgres    false    257            �           1259    17663    IDX_8abe81b9aac151ae60bf507ad1    INDEX     c   CREATE INDEX "IDX_8abe81b9aac151ae60bf507ad1" ON public.customer USING btree (billing_address_id);
 4   DROP INDEX public."IDX_8abe81b9aac151ae60bf507ad1";
       public            postgres    false    250            �           1259    16996    IDX_8df75ef4f35f217768dc113545    INDEX     b   CREATE INDEX "IDX_8df75ef4f35f217768dc113545" ON public.cart_discounts USING btree (discount_id);
 4   DROP INDEX public."IDX_8df75ef4f35f217768dc113545";
       public            postgres    false    262                       1259    17781    IDX_8f6dd6c49202f1466ebf21e77d    INDEX     \   CREATE INDEX "IDX_8f6dd6c49202f1466ebf21e77d" ON public.draft_order USING btree (order_id);
 4   DROP INDEX public."IDX_8f6dd6c49202f1466ebf21e77d";
       public            postgres    false    279            �           1259    17480    IDX_900a9c3834257304396b2b0fe7    INDEX     a   CREATE INDEX "IDX_900a9c3834257304396b2b0fe7" ON public.claim_item USING btree (claim_order_id);
 4   DROP INDEX public."IDX_900a9c3834257304396b2b0fe7";
       public            postgres    false    269            +           1259    18096    IDX_926ca9f29014af8091722dede0    INDEX     s   CREATE INDEX "IDX_926ca9f29014af8091722dede0" ON public.shipping_method_tax_line USING btree (shipping_method_id);
 4   DROP INDEX public."IDX_926ca9f29014af8091722dede0";
       public            postgres    false    288                       1259    18004    IDX_93caeb1bb70d37c1d36d6701a7    INDEX     f   CREATE INDEX "IDX_93caeb1bb70d37c1d36d6701a7" ON public.custom_shipping_option USING btree (cart_id);
 4   DROP INDEX public."IDX_93caeb1bb70d37c1d36d6701a7";
       public            postgres    false    284            �           1259    17664    IDX_9c9614b2f9d01665800ea8dbff    INDEX     [   CREATE INDEX "IDX_9c9614b2f9d01665800ea8dbff" ON public.address USING btree (customer_id);
 4   DROP INDEX public."IDX_9c9614b2f9d01665800ea8dbff";
       public            postgres    false    251            d           1259    17644    IDX_9d1a161434c610aae7c3df2dc7    INDEX     W   CREATE INDEX "IDX_9d1a161434c610aae7c3df2dc7" ON public.cart USING btree (payment_id);
 4   DROP INDEX public."IDX_9d1a161434c610aae7c3df2dc7";
       public            postgres    false    241            L           1259    18293    IDX_a0b05dc4257abe639cb75f8eae    INDEX     �   CREATE INDEX "IDX_a0b05dc4257abe639cb75f8eae" ON public.discount_condition_product_collection USING btree (product_collection_id);
 4   DROP INDEX public."IDX_a0b05dc4257abe639cb75f8eae";
       public            postgres    false    296            9           1259    17626    IDX_a0e206bfaed3cb63c186091734    INDEX     c   CREATE INDEX "IDX_a0e206bfaed3cb63c186091734" ON public.shipping_option USING btree (provider_id);
 4   DROP INDEX public."IDX_a0e206bfaed3cb63c186091734";
       public            postgres    false    233            M           1259    18292    IDX_a1c4f9cfb599ad1f0db39cadd5    INDEX     z   CREATE INDEX "IDX_a1c4f9cfb599ad1f0db39cadd5" ON public.discount_condition_product_collection USING btree (condition_id);
 4   DROP INDEX public."IDX_a1c4f9cfb599ad1f0db39cadd5";
       public            postgres    false    296            �           1259    16987    IDX_a21a7ffbe420d492eb46c305fe    INDEX     b   CREATE INDEX "IDX_a21a7ffbe420d492eb46c305fe" ON public.discount_regions USING btree (region_id);
 4   DROP INDEX public."IDX_a21a7ffbe420d492eb46c305fe";
       public            postgres    false    261            �           1259    16906    IDX_a421bf4588d0004a9b0c0fe84f    INDEX     n   CREATE UNIQUE INDEX "IDX_a421bf4588d0004a9b0c0fe84f" ON public.idempotency_key USING btree (idempotency_key);
 4   DROP INDEX public."IDX_a421bf4588d0004a9b0c0fe84f";
       public            postgres    false    252                       1259    17651    IDX_a52e234f729db789cf473297a5    INDEX     [   CREATE INDEX "IDX_a52e234f729db789cf473297a5" ON public.fulfillment USING btree (swap_id);
 4   DROP INDEX public."IDX_a52e234f729db789cf473297a5";
       public            postgres    false    220            (           1259    17933    IDX_aa16f61348be02dd07ce3fc54e    INDEX     }   CREATE UNIQUE INDEX "IDX_aa16f61348be02dd07ce3fc54e" ON public.product_variant USING btree (upc) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_aa16f61348be02dd07ce3fc54e";
       public            postgres    false    229    229            R           1259    18485    IDX_aac4855eadda71aa1e4b6d7684    INDEX     w   CREATE INDEX "IDX_aac4855eadda71aa1e4b6d7684" ON public.payment USING btree (cart_id) WHERE (canceled_at IS NOT NULL);
 4   DROP INDEX public."IDX_aac4855eadda71aa1e4b6d7684";
       public            postgres    false    239    239            F           1259    17631    IDX_ac2c280de3701b2d66f6817f76    INDEX     X   CREATE INDEX "IDX_ac2c280de3701b2d66f6817f76" ON public.discount USING btree (rule_id);
 4   DROP INDEX public."IDX_ac2c280de3701b2d66f6817f76";
       public            postgres    false    237                       1259    17622    IDX_b1aac8314662fa6b25569a575b    INDEX     Y   CREATE INDEX "IDX_b1aac8314662fa6b25569a575b" ON public.country USING btree (region_id);
 4   DROP INDEX public."IDX_b1aac8314662fa6b25569a575b";
       public            postgres    false    224            �           1259    17031    IDX_b4f4b63d1736689b7008980394    INDEX     a   CREATE INDEX "IDX_b4f4b63d1736689b7008980394" ON public.store_currencies USING btree (store_id);
 4   DROP INDEX public."IDX_b4f4b63d1736689b7008980394";
       public            postgres    false    266            )           1259    17932    IDX_b5b6225539ee8501082fbc0714    INDEX     }   CREATE UNIQUE INDEX "IDX_b5b6225539ee8501082fbc0714" ON public.product_variant USING btree (ean) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_b5b6225539ee8501082fbc0714";
       public            postgres    false    229    229            �           1259    17684    IDX_b5df0f53a74b9d0c0a2b652c88    INDEX     `   CREATE INDEX "IDX_b5df0f53a74b9d0c0a2b652c88" ON public.notification USING btree (customer_id);
 4   DROP INDEX public."IDX_b5df0f53a74b9d0c0a2b652c88";
       public            postgres    false    273            ]           1259    17638    IDX_b6bcf8c3903097b84e85154eed    INDEX     [   CREATE INDEX "IDX_b6bcf8c3903097b84e85154eed" ON public.gift_card USING btree (region_id);
 4   DROP INDEX public."IDX_b6bcf8c3903097b84e85154eed";
       public            postgres    false    240            �           1259    17991    IDX_ba8de19442d86957a3aa3b5006    INDEX     v   CREATE UNIQUE INDEX "IDX_ba8de19442d86957a3aa3b5006" ON public."user" USING btree (email) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_ba8de19442d86957a3aa3b5006";
       public            postgres    false    256    256            u           1259    17645    IDX_bad82d7bff2b08b87094bfac3d    INDEX     V   CREATE INDEX "IDX_bad82d7bff2b08b87094bfac3d" ON public.return USING btree (swap_id);
 4   DROP INDEX public."IDX_bad82d7bff2b08b87094bfac3d";
       public            postgres    false    243            �           1259    16978    IDX_be66106a673b88a81c603abe7e    INDEX     i   CREATE INDEX "IDX_be66106a673b88a81c603abe7e" ON public.discount_rule_products USING btree (product_id);
 4   DROP INDEX public."IDX_be66106a673b88a81c603abe7e";
       public            postgres    false    260            c           1259    18405    IDX_be9aea2ccf3567007b6227da4d    INDEX     d   CREATE INDEX "IDX_be9aea2ccf3567007b6227da4d" ON public.line_item_adjustment USING btree (item_id);
 4   DROP INDEX public."IDX_be9aea2ccf3567007b6227da4d";
       public            postgres    false    302                       1259    17653    IDX_beb35a6de60a6c4f91d5ae57e4    INDEX     _   CREATE INDEX "IDX_beb35a6de60a6c4f91d5ae57e4" ON public.fulfillment USING btree (provider_id);
 4   DROP INDEX public."IDX_beb35a6de60a6c4f91d5ae57e4";
       public            postgres    false    220            d           1259    18407    IDX_bf701b88d2041392a288785ada    INDEX     �   CREATE UNIQUE INDEX "IDX_bf701b88d2041392a288785ada" ON public.line_item_adjustment USING btree (discount_id, item_id) WHERE (discount_id IS NOT NULL);
 4   DROP INDEX public."IDX_bf701b88d2041392a288785ada";
       public            postgres    false    302    302    302            S           1259    17634    IDX_c17aff091441b7c25ec3d68d36    INDEX     W   CREATE INDEX "IDX_c17aff091441b7c25ec3d68d36" ON public.payment USING btree (swap_id);
 4   DROP INDEX public."IDX_c17aff091441b7c25ec3d68d36";
       public            postgres    false    239            �           1259    17535    IDX_c2c0f3edf39515bd15432afe6e    INDEX     _   CREATE INDEX "IDX_c2c0f3edf39515bd15432afe6e" ON public.claim_item_tags USING btree (item_id);
 4   DROP INDEX public."IDX_c2c0f3edf39515bd15432afe6e";
       public            postgres    false    271            �           1259    16914    IDX_c49c061b1a686843c5d673506f    INDEX     e   CREATE UNIQUE INDEX "IDX_c49c061b1a686843c5d673506f" ON public.oauth USING btree (application_name);
 4   DROP INDEX public."IDX_c49c061b1a686843c5d673506f";
       public            postgres    false    253            <           1259    18192    IDX_c4c3a5225a7a1f0af782c40abc    INDEX     }   CREATE UNIQUE INDEX "IDX_c4c3a5225a7a1f0af782c40abc" ON public.customer_group USING btree (name) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_c4c3a5225a7a1f0af782c40abc";
       public            postgres    false    292    292            _           1259    18382    IDX_c5516f550433c9b1c2630d787a    INDEX     t   CREATE INDEX "IDX_c5516f550433c9b1c2630d787a" ON public.price_list_customer_groups USING btree (customer_group_id);
 4   DROP INDEX public."IDX_c5516f550433c9b1c2630d787a";
       public            postgres    false    301            �           1259    16959    IDX_c556e14eff4d6f03db593df955    INDEX     n   CREATE INDEX "IDX_c556e14eff4d6f03db593df955" ON public.region_fulfillment_providers USING btree (region_id);
 4   DROP INDEX public."IDX_c556e14eff4d6f03db593df955";
       public            postgres    false    258            X           1259    18287    IDX_c759f53b2e48e8cfb50638fe4e    INDEX     m   CREATE INDEX "IDX_c759f53b2e48e8cfb50638fe4e" ON public.discount_condition_product USING btree (product_id);
 4   DROP INDEX public."IDX_c759f53b2e48e8cfb50638fe4e";
       public            postgres    false    299            :           1259    17625    IDX_c951439af4c98bf2bd7fb8726c    INDEX     b   CREATE INDEX "IDX_c951439af4c98bf2bd7fb8726c" ON public.shipping_option USING btree (profile_id);
 4   DROP INDEX public."IDX_c951439af4c98bf2bd7fb8726c";
       public            postgres    false    233            �           1259    17658    IDX_c99a206eb11ad45f6b7f04f2dc    INDEX     W   CREATE INDEX "IDX_c99a206eb11ad45f6b7f04f2dc" ON public."order" USING btree (cart_id);
 4   DROP INDEX public."IDX_c99a206eb11ad45f6b7f04f2dc";
       public            postgres    false    249            *           1259    17630    IDX_ca67dd080aac5ecf99609960cd    INDEX     b   CREATE INDEX "IDX_ca67dd080aac5ecf99609960cd" ON public.product_variant USING btree (product_id);
 4   DROP INDEX public."IDX_ca67dd080aac5ecf99609960cd";
       public            postgres    false    229            �           1259    17659    IDX_cd7812c96209c5bdd48a6b858b    INDEX     [   CREATE INDEX "IDX_cd7812c96209c5bdd48a6b858b" ON public."order" USING btree (customer_id);
 4   DROP INDEX public."IDX_cd7812c96209c5bdd48a6b858b";
       public            postgres    false    249            e           1259    17641    IDX_ced15a9a695d2b5db9dabce763    INDEX     `   CREATE INDEX "IDX_ced15a9a695d2b5db9dabce763" ON public.cart USING btree (shipping_address_id);
 4   DROP INDEX public."IDX_ced15a9a695d2b5db9dabce763";
       public            postgres    false    241            ?           1259    17929    IDX_cf9cc6c3f2e6414b992223fff1    INDEX     x   CREATE UNIQUE INDEX "IDX_cf9cc6c3f2e6414b992223fff1" ON public.product USING btree (handle) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_cf9cc6c3f2e6414b992223fff1";
       public            postgres    false    235    235            J           1259    17633    IDX_d18ad72f2fb7c87f075825b6f8    INDEX     c   CREATE INDEX "IDX_d18ad72f2fb7c87f075825b6f8" ON public.payment_session USING btree (provider_id);
 4   DROP INDEX public."IDX_d18ad72f2fb7c87f075825b6f8";
       public            postgres    false    238            K           1259    17632    IDX_d25ba0787e1510ddc5d442ebcf    INDEX     _   CREATE INDEX "IDX_d25ba0787e1510ddc5d442ebcf" ON public.payment_session USING btree (cart_id);
 4   DROP INDEX public."IDX_d25ba0787e1510ddc5d442ebcf";
       public            postgres    false    238            �           1259    17004    IDX_d38047a90f3d42f0be7909e8ae    INDEX     _   CREATE INDEX "IDX_d38047a90f3d42f0be7909e8ae" ON public.cart_gift_cards USING btree (cart_id);
 4   DROP INDEX public."IDX_d38047a90f3d42f0be7909e8ae";
       public            postgres    false    263            v           1259    17647    IDX_d4bd17f918fc6c332b74a368c3    INDEX     W   CREATE INDEX "IDX_d4bd17f918fc6c332b74a368c3" ON public.return USING btree (order_id);
 4   DROP INDEX public."IDX_d4bd17f918fc6c332b74a368c3";
       public            postgres    false    243                       1259    17650    IDX_d73e55964e0ff2db8f03807d52    INDEX     b   CREATE INDEX "IDX_d73e55964e0ff2db8f03807d52" ON public.fulfillment USING btree (claim_order_id);
 4   DROP INDEX public."IDX_d73e55964e0ff2db8f03807d52";
       public            postgres    false    220            l           1259    17557    IDX_d783a66d1c91c0858752c933e6    INDEX     f   CREATE INDEX "IDX_d783a66d1c91c0858752c933e6" ON public.shipping_method USING btree (claim_order_id);
 4   DROP INDEX public."IDX_d783a66d1c91c0858752c933e6";
       public            postgres    false    242            �           1259    17655    IDX_d7d441b81012f87d4265fa57d2    INDEX     f   CREATE INDEX "IDX_d7d441b81012f87d4265fa57d2" ON public.gift_card_transaction USING btree (order_id);
 4   DROP INDEX public."IDX_d7d441b81012f87d4265fa57d2";
       public            postgres    false    246            m           1259    16700    IDX_d92993a7d554d84571f4eea1d1    INDEX     _   CREATE INDEX "IDX_d92993a7d554d84571f4eea1d1" ON public.shipping_method USING btree (cart_id);
 4   DROP INDEX public."IDX_d92993a7d554d84571f4eea1d1";
       public            postgres    false    242            �           1259    17536    IDX_dc9bbf9fcb9ba458d25d512811    INDEX     ^   CREATE INDEX "IDX_dc9bbf9fcb9ba458d25d512811" ON public.claim_item_tags USING btree (tag_id);
 4   DROP INDEX public."IDX_dc9bbf9fcb9ba458d25d512811";
       public            postgres    false    271            �           1259    17682    IDX_df1494d263740fcfb1d09a98fc    INDEX     b   CREATE INDEX "IDX_df1494d263740fcfb1d09a98fc" ON public.notification USING btree (resource_type);
 4   DROP INDEX public."IDX_df1494d263740fcfb1d09a98fc";
       public            postgres    false    273            ^           1259    17639    IDX_dfc1f02bb0552e79076aa58dbb    INDEX     Z   CREATE INDEX "IDX_dfc1f02bb0552e79076aa58dbb" ON public.gift_card USING btree (order_id);
 4   DROP INDEX public."IDX_dfc1f02bb0552e79076aa58dbb";
       public            postgres    false    240            �           1259    17662    IDX_e1fcce2b18dbcdbe0a5ba9a68b    INDEX     Y   CREATE INDEX "IDX_e1fcce2b18dbcdbe0a5ba9a68b" ON public."order" USING btree (region_id);
 4   DROP INDEX public."IDX_e1fcce2b18dbcdbe0a5ba9a68b";
       public            postgres    false    249            �           1259    17022    IDX_e62ff11e4730bb3adfead979ee    INDEX     a   CREATE INDEX "IDX_e62ff11e4730bb3adfead979ee" ON public.order_gift_cards USING btree (order_id);
 4   DROP INDEX public."IDX_e62ff11e4730bb3adfead979ee";
       public            postgres    false    265            U           1259    18289    IDX_e706deb68f52ab2756119b9e70    INDEX     w   CREATE INDEX "IDX_e706deb68f52ab2756119b9e70" ON public.discount_condition_product_type USING btree (product_type_id);
 4   DROP INDEX public."IDX_e706deb68f52ab2756119b9e70";
       public            postgres    false    298                       1259    16457    IDX_e78901b1131eaf8203d9b1cb5f    INDEX     \   CREATE UNIQUE INDEX "IDX_e78901b1131eaf8203d9b1cb5f" ON public.country USING btree (iso_2);
 4   DROP INDEX public."IDX_e78901b1131eaf8203d9b1cb5f";
       public            postgres    false    224            �           1259    17013    IDX_e7b488cebe333f449398769b2c    INDEX     `   CREATE INDEX "IDX_e7b488cebe333f449398769b2c" ON public.order_discounts USING btree (order_id);
 4   DROP INDEX public."IDX_e7b488cebe333f449398769b2c";
       public            postgres    false    264            	           1259    17779    IDX_e87cc617a22ef4edce5601edab    INDEX     ^   CREATE INDEX "IDX_e87cc617a22ef4edce5601edab" ON public.draft_order USING btree (display_id);
 4   DROP INDEX public."IDX_e87cc617a22ef4edce5601edab";
       public            postgres    false    279            �           1259    17683    IDX_ea6a358d9ce41c16499aae55f9    INDEX     `   CREATE INDEX "IDX_ea6a358d9ce41c16499aae55f9" ON public.notification USING btree (resource_id);
 4   DROP INDEX public."IDX_ea6a358d9ce41c16499aae55f9";
       public            postgres    false    273            T           1259    17637    IDX_ea94f42b6c88e9191c3649d752    INDEX     [   CREATE INDEX "IDX_ea94f42b6c88e9191c3649d752" ON public.payment USING btree (provider_id);
 4   DROP INDEX public."IDX_ea94f42b6c88e9191c3649d752";
       public            postgres    false    239            �           1259    17461    IDX_ec10c54769877840c132260e4a    INDEX     W   CREATE INDEX "IDX_ec10c54769877840c132260e4a" ON public.claim_tag USING btree (value);
 4   DROP INDEX public."IDX_ec10c54769877840c132260e4a";
       public            postgres    false    268            5           1259    18129    IDX_ece65a774192b34253abc4cd67    INDEX     e   CREATE INDEX "IDX_ece65a774192b34253abc4cd67" ON public.product_type_tax_rate USING btree (rate_id);
 4   DROP INDEX public."IDX_ece65a774192b34253abc4cd67";
       public            postgres    false    290            �           1259    17656    IDX_eec9d9af4ca098e19ea6b499ea    INDEX     W   CREATE INDEX "IDX_eec9d9af4ca098e19ea6b499ea" ON public.refund USING btree (order_id);
 4   DROP INDEX public."IDX_eec9d9af4ca098e19ea6b499ea";
       public            postgres    false    247            C           1259    18240    IDX_efff700651718e452ca9580a62    INDEX     k   CREATE INDEX "IDX_efff700651718e452ca9580a62" ON public.discount_condition USING btree (discount_rule_id);
 4   DROP INDEX public."IDX_efff700651718e452ca9580a62";
       public            postgres    false    294            Y           1259    18286    IDX_f05132301e95bdab4ba1cf29a2    INDEX     o   CREATE INDEX "IDX_f05132301e95bdab4ba1cf29a2" ON public.discount_condition_product USING btree (condition_id);
 4   DROP INDEX public."IDX_f05132301e95bdab4ba1cf29a2";
       public            postgres    false    299                       1259    17652    IDX_f129acc85e346a10eed12b86fc    INDEX     \   CREATE INDEX "IDX_f129acc85e346a10eed12b86fc" ON public.fulfillment USING btree (order_id);
 4   DROP INDEX public."IDX_f129acc85e346a10eed12b86fc";
       public            postgres    false    220            �           1259    17023    IDX_f2bb9f71e95b315eb24b2b84cb    INDEX     e   CREATE INDEX "IDX_f2bb9f71e95b315eb24b2b84cb" ON public.order_gift_cards USING btree (gift_card_id);
 4   DROP INDEX public."IDX_f2bb9f71e95b315eb24b2b84cb";
       public            postgres    false    265            �           1259    16986    IDX_f4194aa81073f3fab8aa86906f    INDEX     d   CREATE INDEX "IDX_f4194aa81073f3fab8aa86906f" ON public.discount_regions USING btree (discount_id);
 4   DROP INDEX public."IDX_f4194aa81073f3fab8aa86906f";
       public            postgres    false    261            �           1259    17648    IDX_f49e3974465d3c3a33d449d3f3    INDEX     \   CREATE INDEX "IDX_f49e3974465d3c3a33d449d3f3" ON public.claim_order USING btree (order_id);
 4   DROP INDEX public."IDX_f49e3974465d3c3a33d449d3f3";
       public            postgres    false    270            U           1259    17636    IDX_f5221735ace059250daac9d980    INDEX     X   CREATE INDEX "IDX_f5221735ace059250daac9d980" ON public.payment USING btree (order_id);
 4   DROP INDEX public."IDX_f5221735ace059250daac9d980";
       public            postgres    false    239            G           1259    17934    IDX_f65bf52e2239ace276ece2b2f4    INDEX     w   CREATE UNIQUE INDEX "IDX_f65bf52e2239ace276ece2b2f4" ON public.discount USING btree (code) WHERE (deleted_at IS NULL);
 4   DROP INDEX public."IDX_f65bf52e2239ace276ece2b2f4";
       public            postgres    false    237    237            9           1259    18132    IDX_f672727ab020df6c50fb64c1a7    INDEX     l   CREATE INDEX "IDX_f672727ab020df6c50fb64c1a7" ON public.shipping_tax_rate USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_f672727ab020df6c50fb64c1a7";
       public            postgres    false    291                       1259    17959    IDX_f74980b411cf94af523a72af7d    INDEX     Z   CREATE INDEX "IDX_f74980b411cf94af523a72af7d" ON public.note USING btree (resource_type);
 4   DROP INDEX public."IDX_f74980b411cf94af523a72af7d";
       public            postgres    false    282            n           1259    16701    IDX_fb94fa8d5ca940daa2a58139f8    INDEX     _   CREATE INDEX "IDX_fb94fa8d5ca940daa2a58139f8" ON public.shipping_method USING btree (swap_id);
 4   DROP INDEX public."IDX_fb94fa8d5ca940daa2a58139f8";
       public            postgres    false    242            Q           1259    18290    IDX_fbb2499551ed074526f3ee3624    INDEX     s   CREATE INDEX "IDX_fbb2499551ed074526f3ee3624" ON public.discount_condition_product_tag USING btree (condition_id);
 4   DROP INDEX public."IDX_fbb2499551ed074526f3ee3624";
       public            postgres    false    297            o           1259    16698    IDX_fc963e94854bff2714ca84cd19    INDEX     j   CREATE INDEX "IDX_fc963e94854bff2714ca84cd19" ON public.shipping_method USING btree (shipping_option_id);
 4   DROP INDEX public."IDX_fc963e94854bff2714ca84cd19";
       public            postgres    false    242            "           1259    18652    IDX_money_amount_currency_code    INDEX     b   CREATE INDEX "IDX_money_amount_currency_code" ON public.money_amount USING btree (currency_code);
 4   DROP INDEX public."IDX_money_amount_currency_code";
       public            postgres    false    228            �           1259    18653    IDX_order_currency_code    INDEX     V   CREATE INDEX "IDX_order_currency_code" ON public."order" USING btree (currency_code);
 -   DROP INDEX public."IDX_order_currency_code";
       public            postgres    false    249            w           1259    18651    IDX_order_edit_order_id    INDEX     T   CREATE INDEX "IDX_order_edit_order_id" ON public.order_edit USING btree (order_id);
 -   DROP INDEX public."IDX_order_edit_order_id";
       public            postgres    false    307            x           1259    18639 $   IDX_order_edit_payment_collection_id    INDEX     n   CREATE INDEX "IDX_order_edit_payment_collection_id" ON public.order_edit USING btree (payment_collection_id);
 :   DROP INDEX public."IDX_order_edit_payment_collection_id";
       public            postgres    false    307            {           1259    18595 $   IDX_payment_collection_currency_code    INDEX     �   CREATE INDEX "IDX_payment_collection_currency_code" ON public.payment_collection USING btree (currency_code) WHERE (deleted_at IS NULL);
 :   DROP INDEX public."IDX_payment_collection_currency_code";
       public            postgres    false    308    308            �           1259    18627 5   IDX_payment_collection_payments_payment_collection_id    INDEX     �   CREATE INDEX "IDX_payment_collection_payments_payment_collection_id" ON public.payment_collection_payments USING btree (payment_collection_id);
 K   DROP INDEX public."IDX_payment_collection_payments_payment_collection_id";
       public            postgres    false    310            �           1259    18628 *   IDX_payment_collection_payments_payment_id    INDEX     z   CREATE INDEX "IDX_payment_collection_payments_payment_id" ON public.payment_collection_payments USING btree (payment_id);
 @   DROP INDEX public."IDX_payment_collection_payments_payment_id";
       public            postgres    false    310            |           1259    18594     IDX_payment_collection_region_id    INDEX     �   CREATE INDEX "IDX_payment_collection_region_id" ON public.payment_collection USING btree (region_id) WHERE (deleted_at IS NULL);
 6   DROP INDEX public."IDX_payment_collection_region_id";
       public            postgres    false    308    308                       1259    18608 5   IDX_payment_collection_sessions_payment_collection_id    INDEX     �   CREATE INDEX "IDX_payment_collection_sessions_payment_collection_id" ON public.payment_collection_sessions USING btree (payment_collection_id);
 K   DROP INDEX public."IDX_payment_collection_sessions_payment_collection_id";
       public            postgres    false    309            �           1259    18609 2   IDX_payment_collection_sessions_payment_session_id    INDEX     �   CREATE INDEX "IDX_payment_collection_sessions_payment_session_id" ON public.payment_collection_sessions USING btree (payment_session_id);
 H   DROP INDEX public."IDX_payment_collection_sessions_payment_session_id";
       public            postgres    false    309            V           1259    18654    IDX_payment_currency_code    INDEX     X   CREATE INDEX "IDX_payment_currency_code" ON public.payment USING btree (currency_code);
 /   DROP INDEX public."IDX_payment_currency_code";
       public            postgres    false    239            �           1259    18743    IDX_pcp_product_category_id    INDEX     q   CREATE INDEX "IDX_pcp_product_category_id" ON public.product_category_product USING btree (product_category_id);
 1   DROP INDEX public."IDX_pcp_product_category_id";
       public            postgres    false    317            �           1259    18744    IDX_pcp_product_id    INDEX     _   CREATE INDEX "IDX_pcp_product_id" ON public.product_category_product USING btree (product_id);
 (   DROP INDEX public."IDX_pcp_product_id";
       public            postgres    false    317            �           1259    18762 "   IDX_product_category_active_public    INDEX     �   CREATE INDEX "IDX_product_category_active_public" ON public.product_category USING btree (parent_category_id, is_active, is_internal) WHERE ((is_active IS TRUE) AND (is_internal IS FALSE));
 8   DROP INDEX public."IDX_product_category_active_public";
       public            postgres    false    316    316    316    316    316            �           1259    18761    IDX_product_category_handle    INDEX     c   CREATE UNIQUE INDEX "IDX_product_category_handle" ON public.product_category USING btree (handle);
 1   DROP INDEX public."IDX_product_category_handle";
       public            postgres    false    316            �           1259    18723    IDX_product_category_path    INDEX     Y   CREATE INDEX "IDX_product_category_path" ON public.product_category USING btree (mpath);
 /   DROP INDEX public."IDX_product_category_path";
       public            postgres    false    316            �           1259    18747 4   IDX_product_variant_inventory_item_inventory_item_id    INDEX     �   CREATE INDEX "IDX_product_variant_inventory_item_inventory_item_id" ON public.product_variant_inventory_item USING btree (inventory_item_id) WHERE (deleted_at IS NULL);
 J   DROP INDEX public."IDX_product_variant_inventory_item_inventory_item_id";
       public            postgres    false    315    315            �           1259    18748 -   IDX_product_variant_inventory_item_variant_id    INDEX     �   CREATE INDEX "IDX_product_variant_inventory_item_variant_id" ON public.product_variant_inventory_item USING btree (variant_id) WHERE (deleted_at IS NULL);
 C   DROP INDEX public."IDX_product_variant_inventory_item_variant_id";
       public            postgres    false    315    315            �           1259    18645    IDX_refund_payment_id    INDEX     P   CREATE INDEX "IDX_refund_payment_id" ON public.refund USING btree (payment_id);
 +   DROP INDEX public."IDX_refund_payment_id";
       public            postgres    false    247                       1259    18655    IDX_region_currency_code    INDEX     V   CREATE INDEX "IDX_region_currency_code" ON public.region USING btree (currency_code);
 .   DROP INDEX public."IDX_region_currency_code";
       public            postgres    false    226                       1259    18881    IDX_return_reason_value    INDEX     v   CREATE UNIQUE INDEX "IDX_return_reason_value" ON public.return_reason USING btree (value) WHERE (deleted_at IS NULL);
 -   DROP INDEX public."IDX_return_reason_value";
       public            postgres    false    281    281            �           1259    18746 &   IDX_sales_channel_location_location_id    INDEX     �   CREATE INDEX "IDX_sales_channel_location_location_id" ON public.sales_channel_location USING btree (location_id) WHERE (deleted_at IS NULL);
 <   DROP INDEX public."IDX_sales_channel_location_location_id";
       public            postgres    false    314    314            �           1259    18745 +   IDX_sales_channel_location_sales_channel_id    INDEX     �   CREATE INDEX "IDX_sales_channel_location_sales_channel_id" ON public.sales_channel_location USING btree (sales_channel_id) WHERE (deleted_at IS NULL);
 A   DROP INDEX public."IDX_sales_channel_location_sales_channel_id";
       public            postgres    false    314    314            �           1259    18742 '   IDX_upcp_product_id_product_category_id    INDEX     �   CREATE UNIQUE INDEX "IDX_upcp_product_id_product_category_id" ON public.product_category_product USING btree (product_category_id, product_id);
 =   DROP INDEX public."IDX_upcp_product_id_product_category_id";
       public            postgres    false    317    317            P           1259    18726 "   UniqPaymentSessionCartIdProviderId    INDEX     �   CREATE UNIQUE INDEX "UniqPaymentSessionCartIdProviderId" ON public.payment_session USING btree (cart_id, provider_id) WHERE (cart_id IS NOT NULL);
 8   DROP INDEX public."UniqPaymentSessionCartIdProviderId";
       public            postgres    false    238    238    238            �           1259    18751    UniqProductCategoryParentIdRank    INDEX     y   CREATE UNIQUE INDEX "UniqProductCategoryParentIdRank" ON public.product_category USING btree (parent_category_id, rank);
 5   DROP INDEX public."UniqProductCategoryParentIdRank";
       public            postgres    false    316    316            [           1259    18484    UniquePaymentActive    INDEX     o   CREATE UNIQUE INDEX "UniquePaymentActive" ON public.payment USING btree (cart_id) WHERE (canceled_at IS NULL);
 )   DROP INDEX public."UniquePaymentActive";
       public            postgres    false    239    239            �           1259    18852    idx_gin_product_collection    INDEX     �   CREATE INDEX idx_gin_product_collection ON public.product_collection USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 .   DROP INDEX public.idx_gin_product_collection;
       public            postgres    false    274    274    2    2    2    2    2    2    2    2    2    2    2    2            B           1259    18849    idx_gin_product_description    INDEX     �   CREATE INDEX idx_gin_product_description ON public.product USING gin (description public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 /   DROP INDEX public.idx_gin_product_description;
       public            postgres    false    235    235    2    2    2    2    2    2    2    2    2    2    2    2            C           1259    18848    idx_gin_product_title    INDEX     w   CREATE INDEX idx_gin_product_title ON public.product USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 )   DROP INDEX public.idx_gin_product_title;
       public            postgres    false    235    2    2    2    2    2    2    2    2    2    2    2    2    235            -           1259    18851    idx_gin_product_variant_sku    INDEX     �   CREATE INDEX idx_gin_product_variant_sku ON public.product_variant USING gin (sku public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 /   DROP INDEX public.idx_gin_product_variant_sku;
       public            postgres    false    229    2    2    2    2    2    2    2    2    2    2    2    2    229            .           1259    18850    idx_gin_product_variant_title    INDEX     �   CREATE INDEX idx_gin_product_variant_title ON public.product_variant USING gin (title public.gin_trgm_ops) WHERE (deleted_at IS NULL);
 1   DROP INDEX public.idx_gin_product_variant_title;
       public            postgres    false    229    2    2    2    2    2    2    2    2    2    2    2    2    229            %           1259    18764    idx_money_amount_region_id    INDEX     X   CREATE INDEX idx_money_amount_region_id ON public.money_amount USING btree (region_id);
 .   DROP INDEX public.idx_money_amount_region_id;
       public            postgres    false    228            1           1259    18766 "   idx_product_option_value_option_id    INDEX     h   CREATE INDEX idx_product_option_value_option_id ON public.product_option_value USING btree (option_id);
 6   DROP INDEX public.idx_product_option_value_option_id;
       public            postgres    false    230            2           1259    18765 #   idx_product_option_value_variant_id    INDEX     j   CREATE INDEX idx_product_option_value_variant_id ON public.product_option_value USING btree (variant_id);
 7   DROP INDEX public.idx_product_option_value_variant_id;
       public            postgres    false    230            �           1259    18870 '   idx_product_shipping_profile_product_id    INDEX     r   CREATE INDEX idx_product_shipping_profile_product_id ON public.product_shipping_profile USING btree (product_id);
 ;   DROP INDEX public.idx_product_shipping_profile_product_id;
       public            postgres    false    318            �           1259    18871 '   idx_product_shipping_profile_profile_id    INDEX     r   CREATE INDEX idx_product_shipping_profile_profile_id ON public.product_shipping_profile USING btree (profile_id);
 ;   DROP INDEX public.idx_product_shipping_profile_profile_id;
       public            postgres    false    318            �           1259    18869 9   idx_product_shipping_profile_profile_id_product_id_unique    INDEX     �   CREATE UNIQUE INDEX idx_product_shipping_profile_profile_id_product_id_unique ON public.product_shipping_profile USING btree (profile_id, product_id);
 M   DROP INDEX public.idx_product_shipping_profile_profile_id_product_id_unique;
       public            postgres    false    318    318            �           1259    18891 7   idx_product_variant_money_amount_money_amount_id_unique    INDEX     �   CREATE UNIQUE INDEX idx_product_variant_money_amount_money_amount_id_unique ON public.product_variant_money_amount USING btree (money_amount_id);
 K   DROP INDEX public.idx_product_variant_money_amount_money_amount_id_unique;
       public            postgres    false    320            �           1259    18892 +   idx_product_variant_money_amount_variant_id    INDEX     z   CREATE INDEX idx_product_variant_money_amount_variant_id ON public.product_variant_money_amount USING btree (variant_id);
 ?   DROP INDEX public.idx_product_variant_money_amount_variant_id;
       public            postgres    false    320            �           1259    18569 (   unique_li_original_item_id_order_edit_id    INDEX     �   CREATE UNIQUE INDEX unique_li_original_item_id_order_edit_id ON public.line_item USING btree (order_edit_id, original_item_id) WHERE ((original_item_id IS NOT NULL) AND (order_edit_id IS NOT NULL));
 <   DROP INDEX public.unique_li_original_item_id_order_edit_id;
       public            postgres    false    245    245    245    245            �           2606    17113 :   shipping_option_requirement FK_012a62ba743e427b5ebe9dee18e    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option_requirement
    ADD CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 f   ALTER TABLE ONLY public.shipping_option_requirement DROP CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e";
       public          postgres    false    232    5436    233            1           2606    18321 =   discount_condition_product_tag FK_01486cc9dc6b36bf658685535f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "FK_01486cc9dc6b36bf658685535f6" FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "FK_01486cc9dc6b36bf658685535f6";
       public          postgres    false    5632    297    275                       2606    17595 *   claim_order FK_017d58bf8260c6e1a2588d258e2    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2";
       public          postgres    false    5545    251    270                       2606    17695 +   notification FK_0425c2423e2ce9fdfd5c23761d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9" FOREIGN KEY (provider_id) REFERENCES public.notification_provider(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9";
       public          postgres    false    5621    272    273                       2606    17408 .   cart_gift_cards FK_0fb38b6d167793192bc126d835e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "FK_0fb38b6d167793192bc126d835e" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "FK_0fb38b6d167793192bc126d835e";
       public          postgres    false    5472    240    263                       2606    17418 .   order_discounts FK_0fc1ec4e3db9001ad60c19daf16    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16";
       public          postgres    false    5449    237    264            �           2606    17605 (   line_item FK_118e3c48f09a7728f41023c94ef    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_118e3c48f09a7728f41023c94ef" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_118e3c48f09a7728f41023c94ef";
       public          postgres    false    5615    270    245            �           2606    17308 $   order FK_19b0c6293443d1b464f604c3316    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_19b0c6293443d1b464f604c3316" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_19b0c6293443d1b464f604c3316";
       public          postgres    false    251    5545    249            $           2606    18153 /   product_tax_rate FK_1d04aebeabb6a89f87e536a124d    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d";
       public          postgres    false    235    5441    289            �           2606    17223 .   shipping_method FK_1d9ad62038998c3a85c77a53cfb    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb" FOREIGN KEY (return_id) REFERENCES public.return(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb";
       public          postgres    false    243    5496    242            @           2606    18554 )   order_edit FK_1f3a251488a91510f57e1bf93cd    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 U   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd";
       public          postgres    false    249    307    5531                       2606    17747 +   product_tags FK_21683a063fe82dafdf681ecc9c4    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4" FOREIGN KEY (product_tag_id) REFERENCES public.product_tag(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4";
       public          postgres    false    275    277    5632                       2606    17560 *   claim_image FK_21cbfedd83d736d86f4c6f4ce56    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_image
    ADD CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56" FOREIGN KEY (claim_item_id) REFERENCES public.claim_item(id);
 V   ALTER TABLE ONLY public.claim_image DROP CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56";
       public          postgres    false    267    5611    269            �           2606    17368 -   product_images FK_2212515ba306c79f42c46a99db7    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "FK_2212515ba306c79f42c46a99db7" FOREIGN KEY (image_id) REFERENCES public.image(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "FK_2212515ba306c79f42c46a99db7";
       public          postgres    false    227    259    5409                       2606    17935 ,   return_reason FK_2250c5d9e975987ab212f61a657    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_reason
    ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a657" FOREIGN KEY (parent_return_reason_id) REFERENCES public.return_reason(id);
 X   ALTER TABLE ONLY public.return_reason DROP CONSTRAINT "FK_2250c5d9e975987ab212f61a657";
       public          postgres    false    281    5652    281            �           2606    17143 '   discount FK_2250c5d9e975987ab212f61a663    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a663" FOREIGN KEY (parent_discount_id) REFERENCES public.discount(id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "FK_2250c5d9e975987ab212f61a663";
       public          postgres    false    237    5449    237            �           2606    17198 #   cart FK_242205c81c1152fab1b6e848470    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_242205c81c1152fab1b6e848470" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_242205c81c1152fab1b6e848470";
       public          postgres    false    250    5538    241            %           2606    18158 /   product_tax_rate FK_2484cf14c437a04586b07e7dddb    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tax_rate
    ADD CONSTRAINT "FK_2484cf14c437a04586b07e7dddb" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_tax_rate DROP CONSTRAINT "FK_2484cf14c437a04586b07e7dddb";
       public          postgres    false    289    5667    285            &           2606    18163 4   product_type_tax_rate FK_25a3138bb236f63d9bb6c8ff111    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111";
       public          postgres    false    5634    276    290            �           2606    17258 (   line_item FK_27283ee631862266d0f1c680646    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_27283ee631862266d0f1c680646" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_27283ee631862266d0f1c680646";
       public          postgres    false    241    5479    245            9           2606    18413 3   line_item_adjustment FK_2f41b20a71f30e60471d7e3769c    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c" FOREIGN KEY (discount_id) REFERENCES public.discount(id);
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c";
       public          postgres    false    302    237    5449            (           2606    18178 0   shipping_tax_rate FK_346e0016cf045b9980747747645    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "FK_346e0016cf045b9980747747645" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "FK_346e0016cf045b9980747747645";
       public          postgres    false    291    5667    285                       2606    17690 +   notification FK_371db513192c083f48ba63c33be    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_371db513192c083f48ba63c33be" FOREIGN KEY (parent_id) REFERENCES public.notification(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_371db513192c083f48ba63c33be";
       public          postgres    false    273    273    5626            <           2606    18478 4   product_sales_channel FK_37341bad297fe5cca91f921032b    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_sales_channel
    ADD CONSTRAINT "FK_37341bad297fe5cca91f921032b" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id) ON UPDATE CASCADE ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_sales_channel DROP CONSTRAINT "FK_37341bad297fe5cca91f921032b";
       public          postgres    false    5738    305    304            �           2606    17358 ;   region_fulfillment_providers FK_37f361c38a18d12a3fa3158d0cf    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf";
       public          postgres    false    5386    258    218            �           2606    17348 7   region_payment_providers FK_3a6947180aeec283cd92c59ebb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0" FOREIGN KEY (provider_id) REFERENCES public.payment_provider(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0";
       public          postgres    false    5404    257    225            �           2606    17073 %   region FK_3bdd5896ec93be2f1c62a3309a5    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5";
       public          postgres    false    226    5398    222            *           2606    18207 7   customer_group_customers FK_3c6412d076292f439269abe1a23    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "FK_3c6412d076292f439269abe1a23" FOREIGN KEY (customer_id) REFERENCES public.customer(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "FK_3c6412d076292f439269abe1a23";
       public          postgres    false    293    5538    250            �           2606    17268 (   line_item FK_3fa354d8d1233ff81097b2fcb6b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b";
       public          postgres    false    244    245    5503            �           2606    17278 4   gift_card_transaction FK_3ff5597f1d7e02bba41541846f4    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4";
       public          postgres    false    5472    240    246            �           2606    17253 #   swap FK_402e8182bc553e082f6380020b4    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_402e8182bc553e082f6380020b4" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_402e8182bc553e082f6380020b4";
       public          postgres    false    5479    244    241            �           2606    17263 (   line_item FK_43a2b24495fe1d9fc2a9c835bc7    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7";
       public          postgres    false    245    5531    249                       2606    18030 5   custom_shipping_option FK_44090cb11b06174cbcc667e91ca    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "FK_44090cb11b06174cbcc667e91ca" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "FK_44090cb11b06174cbcc667e91ca";
       public          postgres    false    5436    233    284            =           2606    18539 0   order_item_change FK_44feeebb258bf4cfa4cc4202281    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281" FOREIGN KEY (order_edit_id) REFERENCES public.order_edit(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281";
       public          postgres    false    5754    306    307            �           2606    17158 &   payment FK_4665f17abc1e81dd58330e58542    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_4665f17abc1e81dd58330e58542" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_4665f17abc1e81dd58330e58542";
       public          postgres    false    241    5479    239                       2606    17831 ,   tracking_link FK_471e9e4c96e02ba209a307db32b    FK CONSTRAINT     �   ALTER TABLE ONLY public.tracking_link
    ADD CONSTRAINT "FK_471e9e4c96e02ba209a307db32b" FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id);
 X   ALTER TABLE ONLY public.tracking_link DROP CONSTRAINT "FK_471e9e4c96e02ba209a307db32b";
       public          postgres    false    280    5394    220            �           2606    17193 #   cart FK_484c329f4783be4e18e5e2ff090    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_484c329f4783be4e18e5e2ff090" FOREIGN KEY (region_id) REFERENCES public.region(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_484c329f4783be4e18e5e2ff090";
       public          postgres    false    5407    226    241            �           2606    17737 &   product FK_49d419fc77d3aed46c835c558ac    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_49d419fc77d3aed46c835c558ac" FOREIGN KEY (collection_id) REFERENCES public.product_collection(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_49d419fc77d3aed46c835c558ac";
       public          postgres    false    235    274    5629            -           2606    18301 @   discount_condition_customer_group FK_4d5f98645a67545d8dea42e2eb8    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8";
       public          postgres    false    295    292    5694                        2606    17373 5   discount_rule_products FK_4e0739e5f0244c08d41174ca08a    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a" FOREIGN KEY (discount_rule_id) REFERENCES public.discount_rule(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a";
       public          postgres    false    260    236    5445            �           2606    17363 -   product_images FK_4f166bb8c2bfcef2498d97b4068    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_images
    ADD CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.product_images DROP CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068";
       public          postgres    false    5441    235    259            "           2606    18854 1   line_item_tax_line FK_5077fa54b0d037e984385dfe8ad    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_tax_line
    ADD CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad" FOREIGN KEY (item_id) REFERENCES public.line_item(id) ON DELETE CASCADE;
 ]   ALTER TABLE ONLY public.line_item_tax_line DROP CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad";
       public          postgres    false    287    5512    245            �           2606    17208 .   shipping_method FK_5267705a43d547e232535b656c2    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_5267705a43d547e232535b656c2" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_5267705a43d547e232535b656c2";
       public          postgres    false    242    5531    249            7           2606    18388 9   price_list_customer_groups FK_52875734e9dd69064f0041f4d92    FK CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "FK_52875734e9dd69064f0041f4d92" FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON UPDATE CASCADE ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "FK_52875734e9dd69064f0041f4d92";
       public          postgres    false    301    300    5725            �           2606    17243 #   swap FK_52dd74e8c989aa5665ad2852b8b    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b";
       public          postgres    false    5531    249    244            �           2606    17273 (   line_item FK_5371cbaa3be5200f373d24e3d5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id);
 T   ALTER TABLE ONLY public.line_item DROP CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b";
       public          postgres    false    229    5420    245            �           2606    17303 $   order FK_5568d3b9ce9f7abeeb37511ecf2    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2";
       public          postgres    false    5545    251    249            �           2606    17338 $   store FK_55beebaa09e947cccca554af222    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "FK_55beebaa09e947cccca554af222" FOREIGN KEY (default_currency_code) REFERENCES public.currency(code);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "FK_55beebaa09e947cccca554af222";
       public          postgres    false    5398    222    255                       2606    17742 +   product_tags FK_5b0c6fc53c574299ecc7f9ee22e    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_tags
    ADD CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.product_tags DROP CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e";
       public          postgres    false    5441    277    235                       2606    17806 *   draft_order FK_5bd11d0e2a9628128e2c26fd0a6    FK CONSTRAINT     �   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6";
       public          postgres    false    241    5479    279            �           2606    17118 .   shipping_option FK_5c58105f1752fca0f4ce69f4663    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663" FOREIGN KEY (region_id) REFERENCES public.region(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663";
       public          postgres    false    233    5407    226            >           2606    18549 0   order_item_change FK_5f9688929761f7df108b630e64a    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_5f9688929761f7df108b630e64a" FOREIGN KEY (line_item_id) REFERENCES public.line_item(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_5f9688929761f7df108b630e64a";
       public          postgres    false    245    5512    306            �           2606    18468 $   store FK_61b0f48cccbb5f41c750bac7286    FK CONSTRAINT     �   ALTER TABLE ONLY public.store
    ADD CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286" FOREIGN KEY (default_sales_channel_id) REFERENCES public.sales_channel(id);
 P   ALTER TABLE ONLY public.store DROP CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286";
       public          postgres    false    255    5738    304            +           2606    18202 7   customer_group_customers FK_620330964db8d2999e67b0dbe3e    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer_group_customers
    ADD CONSTRAINT "FK_620330964db8d2999e67b0dbe3e" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.customer_group_customers DROP CONSTRAINT "FK_620330964db8d2999e67b0dbe3e";
       public          postgres    false    292    293    5694                       2606    17575 )   claim_item FK_64980511ca32c8e92b417644afa    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_64980511ca32c8e92b417644afa" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_64980511ca32c8e92b417644afa";
       public          postgres    false    229    5420    269                       2606    17393 -   cart_discounts FK_6680319ebe1f46d18f106191d59    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "FK_6680319ebe1f46d18f106191d59" FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "FK_6680319ebe1f46d18f106191d59";
       public          postgres    false    241    262    5479            �           2606    17183 #   cart FK_6b9c66b5e36f7c827dfaa092f94    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94";
       public          postgres    false    5545    251    241            �           2606    17333 &   address FK_6df8c6bf969a51d24c1980c4ff4    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4" FOREIGN KEY (country_code) REFERENCES public.country(iso_2);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4";
       public          postgres    false    251    5400    224                       2606    17570 )   claim_item FK_6e0cad0daef76bb642675910b9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_6e0cad0daef76bb642675910b9d" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_6e0cad0daef76bb642675910b9d";
       public          postgres    false    269    245    5512            3           2606    18336 >   discount_condition_product_type FK_6ef23ce0b1d9cf9b5b833e52b9d    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d";
       public          postgres    false    294    298    5701            �           2606    18463 $   order FK_6ff7e874f01b478c115fdd462eb    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb";
       public          postgres    false    5738    304    249            �           2606    17585 %   return FK_71773d56eb2bacb922bc3283398    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_71773d56eb2bacb922bc3283398" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_71773d56eb2bacb922bc3283398";
       public          postgres    false    270    5615    243            �           2606    17318 $   order FK_717a141f96b76d794d409f38129    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_717a141f96b76d794d409f38129" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_717a141f96b76d794d409f38129";
       public          postgres    false    249    222    5398            �           2606    17918 3   product_option_value FK_7234ed737ff4eb1b6ae6e6d7b01    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01" FOREIGN KEY (variant_id) REFERENCES public.product_variant(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01";
       public          postgres    false    5420    229    230            �           2606    17816 $   order FK_727b872f86c7378474a8fa46147    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_727b872f86c7378474a8fa46147" FOREIGN KEY (draft_order_id) REFERENCES public.draft_order(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_727b872f86c7378474a8fa46147";
       public          postgres    false    279    249    5643            �           2606    17058 *   return_item FK_7edab75b4fc88ea6d4f2574f087    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087" FOREIGN KEY (return_id) REFERENCES public.return(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087";
       public          postgres    false    243    5496    221                       2606    17438 /   store_currencies FK_82a6bbb0b527c20a0002ddcbd60    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60" FOREIGN KEY (currency_code) REFERENCES public.currency(code) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60";
       public          postgres    false    222    266    5398            .           2606    18306 @   discount_condition_customer_group FK_8486ee16e69013c645d0b8716b6    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_customer_group
    ADD CONSTRAINT "FK_8486ee16e69013c645d0b8716b6" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 l   ALTER TABLE ONLY public.discount_condition_customer_group DROP CONSTRAINT "FK_8486ee16e69013c645d0b8716b6";
       public          postgres    false    294    5701    295            �           2606    17063 *   return_item FK_87774591f44564effd8039d7162    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_87774591f44564effd8039d7162" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_87774591f44564effd8039d7162";
       public          postgres    false    221    5512    245            �           2606    17343 7   region_payment_providers FK_8aaa78ba90d3802edac317df869    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_payment_providers
    ADD CONSTRAINT "FK_8aaa78ba90d3802edac317df869" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 c   ALTER TABLE ONLY public.region_payment_providers DROP CONSTRAINT "FK_8aaa78ba90d3802edac317df869";
       public          postgres    false    5407    226    257            �           2606    17323 '   customer FK_8abe81b9aac151ae60bf507ad15    FK CONSTRAINT     �   ALTER TABLE ONLY public.customer
    ADD CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15" FOREIGN KEY (billing_address_id) REFERENCES public.address(id);
 S   ALTER TABLE ONLY public.customer DROP CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15";
       public          postgres    false    251    5545    250                       2606    17398 -   cart_discounts FK_8df75ef4f35f217768dc1135458    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_discounts
    ADD CONSTRAINT "FK_8df75ef4f35f217768dc1135458" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 Y   ALTER TABLE ONLY public.cart_discounts DROP CONSTRAINT "FK_8df75ef4f35f217768dc1135458";
       public          postgres    false    262    237    5449                       2606    17811 *   draft_order FK_8f6dd6c49202f1466ebf21e77da    FK CONSTRAINT     �   ALTER TABLE ONLY public.draft_order
    ADD CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.draft_order DROP CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da";
       public          postgres    false    249    279    5531                       2606    17565 )   claim_item FK_900a9c3834257304396b2b0fe7c    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item
    ADD CONSTRAINT "FK_900a9c3834257304396b2b0fe7c" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 U   ALTER TABLE ONLY public.claim_item DROP CONSTRAINT "FK_900a9c3834257304396b2b0fe7c";
       public          postgres    false    269    270    5615            �           2606    18138 %   region FK_91f88052197680f9790272aaf5b    FK CONSTRAINT     �   ALTER TABLE ONLY public.region
    ADD CONSTRAINT "FK_91f88052197680f9790272aaf5b" FOREIGN KEY (tax_provider_id) REFERENCES public.tax_provider(id);
 Q   ALTER TABLE ONLY public.region DROP CONSTRAINT "FK_91f88052197680f9790272aaf5b";
       public          postgres    false    286    226    5669            #           2606    18148 7   shipping_method_tax_line FK_926ca9f29014af8091722dede08    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method_tax_line
    ADD CONSTRAINT "FK_926ca9f29014af8091722dede08" FOREIGN KEY (shipping_method_id) REFERENCES public.shipping_method(id);
 c   ALTER TABLE ONLY public.shipping_method_tax_line DROP CONSTRAINT "FK_926ca9f29014af8091722dede08";
       public          postgres    false    288    5489    242                        2606    18035 5   custom_shipping_option FK_93caeb1bb70d37c1d36d6701a7a    FK CONSTRAINT     �   ALTER TABLE ONLY public.custom_shipping_option
    ADD CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 a   ALTER TABLE ONLY public.custom_shipping_option DROP CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a";
       public          postgres    false    241    284    5479            �           2606    17328 &   address FK_9c9614b2f9d01665800ea8dbff7    FK CONSTRAINT     �   ALTER TABLE ONLY public.address
    ADD CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public.address DROP CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7";
       public          postgres    false    5538    250    251            �           2606    17203 #   cart FK_9d1a161434c610aae7c3df2dc7e    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e" FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e";
       public          postgres    false    5464    241    239            �           2606    17033 /   fulfillment_item FK_a033f83cc6bd7701a5687ab4b38    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38" FOREIGN KEY (fulfillment_id) REFERENCES public.fulfillment(id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38";
       public          postgres    false    220    219    5394            /           2606    18311 D   discount_condition_product_collection FK_a0b05dc4257abe639cb75f8eae2    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2" FOREIGN KEY (product_collection_id) REFERENCES public.product_collection(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2";
       public          postgres    false    274    296    5629            �           2606    17128 .   shipping_option FK_a0e206bfaed3cb63c1860917347    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_a0e206bfaed3cb63c1860917347" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_a0e206bfaed3cb63c1860917347";
       public          postgres    false    233    5386    218            0           2606    18316 D   discount_condition_product_collection FK_a1c4f9cfb599ad1f0db39cadd5f    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_collection
    ADD CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 p   ALTER TABLE ONLY public.discount_condition_product_collection DROP CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f";
       public          postgres    false    296    294    5701                       2606    17388 /   discount_regions FK_a21a7ffbe420d492eb46c305fec    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec";
       public          postgres    false    261    226    5407            �           2606    18458 #   cart FK_a2bd3c26f42e754b9249ba78fd6    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6" FOREIGN KEY (sales_channel_id) REFERENCES public.sales_channel(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6";
       public          postgres    false    5738    304    241            �           2606    17043 *   fulfillment FK_a52e234f729db789cf473297a5c    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_a52e234f729db789cf473297a5c" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_a52e234f729db789cf473297a5c";
       public          postgres    false    5503    244    220            �           2606    17138 '   discount FK_ac2c280de3701b2d66f6817f760    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount
    ADD CONSTRAINT "FK_ac2c280de3701b2d66f6817f760" FOREIGN KEY (rule_id) REFERENCES public.discount_rule(id);
 S   ALTER TABLE ONLY public.discount DROP CONSTRAINT "FK_ac2c280de3701b2d66f6817f760";
       public          postgres    false    237    5445    236            �           2606    17068 &   country FK_b1aac8314662fa6b25569a575bb    FK CONSTRAINT     �   ALTER TABLE ONLY public.country
    ADD CONSTRAINT "FK_b1aac8314662fa6b25569a575bb" FOREIGN KEY (region_id) REFERENCES public.region(id);
 R   ALTER TABLE ONLY public.country DROP CONSTRAINT "FK_b1aac8314662fa6b25569a575bb";
       public          postgres    false    224    5407    226            �           2606    17088 +   money_amount FK_b433e27b7a83e6d12ab26b15b03    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03" FOREIGN KEY (region_id) REFERENCES public.region(id);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03";
       public          postgres    false    228    5407    226            ?           2606    18544 0   order_item_change FK_b4d53b8d03c9f5e7d4317e818d9    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_item_change
    ADD CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9" FOREIGN KEY (original_line_item_id) REFERENCES public.line_item(id);
 \   ALTER TABLE ONLY public.order_item_change DROP CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9";
       public          postgres    false    5512    245    306                       2606    17433 /   store_currencies FK_b4f4b63d1736689b7008980394c    FK CONSTRAINT     �   ALTER TABLE ONLY public.store_currencies
    ADD CONSTRAINT "FK_b4f4b63d1736689b7008980394c" FOREIGN KEY (store_id) REFERENCES public.store(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.store_currencies DROP CONSTRAINT "FK_b4f4b63d1736689b7008980394c";
       public          postgres    false    266    255    5555                       2606    17685 +   notification FK_b5df0f53a74b9d0c0a2b652c88d    FK CONSTRAINT     �   ALTER TABLE ONLY public.notification
    ADD CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 W   ALTER TABLE ONLY public.notification DROP CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d";
       public          postgres    false    5538    250    273            �           2606    17173 (   gift_card FK_b6bcf8c3903097b84e85154eed3    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3" FOREIGN KEY (region_id) REFERENCES public.region(id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3";
       public          postgres    false    5407    240    226            !           2606    18133 '   tax_rate FK_b95a1e03b051993d208366cb960    FK CONSTRAINT     �   ALTER TABLE ONLY public.tax_rate
    ADD CONSTRAINT "FK_b95a1e03b051993d208366cb960" FOREIGN KEY (region_id) REFERENCES public.region(id);
 S   ALTER TABLE ONLY public.tax_rate DROP CONSTRAINT "FK_b95a1e03b051993d208366cb960";
       public          postgres    false    5407    285    226            �           2606    17233 %   return FK_bad82d7bff2b08b87094bfac3d6    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6";
       public          postgres    false    243    5503    244                       2606    17378 5   discount_rule_products FK_be66106a673b88a81c603abe7eb    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_rule_products
    ADD CONSTRAINT "FK_be66106a673b88a81c603abe7eb" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 a   ALTER TABLE ONLY public.discount_rule_products DROP CONSTRAINT "FK_be66106a673b88a81c603abe7eb";
       public          postgres    false    260    5441    235            :           2606    18859 3   line_item_adjustment FK_be9aea2ccf3567007b6227da4d2    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item_adjustment
    ADD CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2" FOREIGN KEY (item_id) REFERENCES public.line_item(id) ON DELETE CASCADE;
 _   ALTER TABLE ONLY public.line_item_adjustment DROP CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2";
       public          postgres    false    5512    302    245            �           2606    17053 *   fulfillment FK_beb35a6de60a6c4f91d5ae57e44    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44" FOREIGN KEY (provider_id) REFERENCES public.fulfillment_provider(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44";
       public          postgres    false    5386    218    220            �           2606    17153 &   payment FK_c17aff091441b7c25ec3d68d36c    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c";
       public          postgres    false    239    5503    244                       2606    17610 .   claim_item_tags FK_c2c0f3edf39515bd15432afe6e5    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5" FOREIGN KEY (item_id) REFERENCES public.claim_item(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5";
       public          postgres    false    271    5611    269            8           2606    18393 9   price_list_customer_groups FK_c5516f550433c9b1c2630d787a7    FK CONSTRAINT     �   ALTER TABLE ONLY public.price_list_customer_groups
    ADD CONSTRAINT "FK_c5516f550433c9b1c2630d787a7" FOREIGN KEY (customer_group_id) REFERENCES public.customer_group(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.price_list_customer_groups DROP CONSTRAINT "FK_c5516f550433c9b1c2630d787a7";
       public          postgres    false    5694    301    292            �           2606    17353 ;   region_fulfillment_providers FK_c556e14eff4d6f03db593df955e    FK CONSTRAINT     �   ALTER TABLE ONLY public.region_fulfillment_providers
    ADD CONSTRAINT "FK_c556e14eff4d6f03db593df955e" FOREIGN KEY (region_id) REFERENCES public.region(id) ON DELETE CASCADE;
 g   ALTER TABLE ONLY public.region_fulfillment_providers DROP CONSTRAINT "FK_c556e14eff4d6f03db593df955e";
       public          postgres    false    5407    226    258            5           2606    18341 9   discount_condition_product FK_c759f53b2e48e8cfb50638fe4e0    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0";
       public          postgres    false    235    299    5441            �           2606    17123 .   shipping_option FK_c951439af4c98bf2bd7fb8726cd    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_option
    ADD CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd" FOREIGN KEY (profile_id) REFERENCES public.shipping_profile(id);
 Z   ALTER TABLE ONLY public.shipping_option DROP CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd";
       public          postgres    false    233    5438    234            �           2606    17293 $   order FK_c99a206eb11ad45f6b7f04f2dcc    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc";
       public          postgres    false    241    5479    249            �           2606    17093 .   product_variant FK_ca67dd080aac5ecf99609960cd2    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_variant
    ADD CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2" FOREIGN KEY (product_id) REFERENCES public.product(id);
 Z   ALTER TABLE ONLY public.product_variant DROP CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2";
       public          postgres    false    229    5441    235            �           2606    17298 $   order FK_cd7812c96209c5bdd48a6b858b0    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0" FOREIGN KEY (customer_id) REFERENCES public.customer(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0";
       public          postgres    false    249    5538    250            �           2606    17098 3   product_option_value FK_cdf4388f294b30a25c627d69fe9    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option_value
    ADD CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9" FOREIGN KEY (option_id) REFERENCES public.product_option(id);
 _   ALTER TABLE ONLY public.product_option_value DROP CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9";
       public          postgres    false    230    5428    231            �           2606    17188 #   cart FK_ced15a9a695d2b5db9dabce763d    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart
    ADD CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.cart DROP CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d";
       public          postgres    false    241    251    5545            �           2606    17148 .   payment_session FK_d25ba0787e1510ddc5d442ebcfa    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_session
    ADD CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 Z   ALTER TABLE ONLY public.payment_session DROP CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa";
       public          postgres    false    238    5479    241                       2606    17403 .   cart_gift_cards FK_d38047a90f3d42f0be7909e8aea    FK CONSTRAINT     �   ALTER TABLE ONLY public.cart_gift_cards
    ADD CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea" FOREIGN KEY (cart_id) REFERENCES public.cart(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.cart_gift_cards DROP CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea";
       public          postgres    false    241    5479    263            �           2606    17238 %   return FK_d4bd17f918fc6c332b74a368c36    FK CONSTRAINT     �   ALTER TABLE ONLY public.return
    ADD CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Q   ALTER TABLE ONLY public.return DROP CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36";
       public          postgres    false    249    243    5531            �           2606    17600 *   fulfillment FK_d73e55964e0ff2db8f03807d52e    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e";
       public          postgres    false    5615    220    270            �           2606    17846 *   return_item FK_d742532378a65022e7ceb328828    FK CONSTRAINT     �   ALTER TABLE ONLY public.return_item
    ADD CONSTRAINT "FK_d742532378a65022e7ceb328828" FOREIGN KEY (reason_id) REFERENCES public.return_reason(id);
 V   ALTER TABLE ONLY public.return_item DROP CONSTRAINT "FK_d742532378a65022e7ceb328828";
       public          postgres    false    221    5652    281            �           2606    17580 .   shipping_method FK_d783a66d1c91c0858752c933e68    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_d783a66d1c91c0858752c933e68" FOREIGN KEY (claim_order_id) REFERENCES public.claim_order(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_d783a66d1c91c0858752c933e68";
       public          postgres    false    5615    242    270            �           2606    17283 4   gift_card_transaction FK_d7d441b81012f87d4265fa57d24    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card_transaction
    ADD CONSTRAINT "FK_d7d441b81012f87d4265fa57d24" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 `   ALTER TABLE ONLY public.gift_card_transaction DROP CONSTRAINT "FK_d7d441b81012f87d4265fa57d24";
       public          postgres    false    246    5531    249            �           2606    17213 .   shipping_method FK_d92993a7d554d84571f4eea1d13    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_d92993a7d554d84571f4eea1d13" FOREIGN KEY (cart_id) REFERENCES public.cart(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_d92993a7d554d84571f4eea1d13";
       public          postgres    false    241    5479    242                       2606    17615 .   claim_item_tags FK_dc9bbf9fcb9ba458d25d512811b    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_item_tags
    ADD CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b" FOREIGN KEY (tag_id) REFERENCES public.claim_tag(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.claim_item_tags DROP CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b";
       public          postgres    false    5606    271    268            �           2606    17853 (   gift_card FK_dfc1f02bb0552e79076aa58dbb0    FK CONSTRAINT     �   ALTER TABLE ONLY public.gift_card
    ADD CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 T   ALTER TABLE ONLY public.gift_card DROP CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0";
       public          postgres    false    5531    240    249            �           2606    17752 &   product FK_e0843930fbb8854fe36ca39dae1    FK CONSTRAINT     �   ALTER TABLE ONLY public.product
    ADD CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1" FOREIGN KEY (type_id) REFERENCES public.product_type(id);
 R   ALTER TABLE ONLY public.product DROP CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1";
       public          postgres    false    276    5634    235            �           2606    17038 /   fulfillment_item FK_e13ff60e74206b747a1896212d1    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment_item
    ADD CONSTRAINT "FK_e13ff60e74206b747a1896212d1" FOREIGN KEY (item_id) REFERENCES public.line_item(id);
 [   ALTER TABLE ONLY public.fulfillment_item DROP CONSTRAINT "FK_e13ff60e74206b747a1896212d1";
       public          postgres    false    5512    219    245            �           2606    17078 +   money_amount FK_e15811f81339e4bd8c440aebe1c    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c";
       public          postgres    false    228    5398    222            �           2606    17313 $   order FK_e1fcce2b18dbcdbe0a5ba9a68b8    FK CONSTRAINT     �   ALTER TABLE ONLY public."order"
    ADD CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8" FOREIGN KEY (region_id) REFERENCES public.region(id);
 R   ALTER TABLE ONLY public."order" DROP CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8";
       public          postgres    false    226    5407    249            
           2606    17423 /   order_gift_cards FK_e62ff11e4730bb3adfead979ee2    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2" FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2";
       public          postgres    false    249    5531    265            �           2606    17108 -   product_option FK_e634fca34f6b594b87fdbee95f6    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_option
    ADD CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6" FOREIGN KEY (product_id) REFERENCES public.product(id);
 Y   ALTER TABLE ONLY public.product_option DROP CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6";
       public          postgres    false    231    5441    235            4           2606    18331 >   discount_condition_product_type FK_e706deb68f52ab2756119b9e704    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_type
    ADD CONSTRAINT "FK_e706deb68f52ab2756119b9e704" FOREIGN KEY (product_type_id) REFERENCES public.product_type(id) ON DELETE CASCADE;
 j   ALTER TABLE ONLY public.discount_condition_product_type DROP CONSTRAINT "FK_e706deb68f52ab2756119b9e704";
       public          postgres    false    298    276    5634            	           2606    17413 .   order_discounts FK_e7b488cebe333f449398769b2cc    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_discounts
    ADD CONSTRAINT "FK_e7b488cebe333f449398769b2cc" FOREIGN KEY (order_id) REFERENCES public."order"(id) ON DELETE CASCADE;
 Z   ALTER TABLE ONLY public.order_discounts DROP CONSTRAINT "FK_e7b488cebe333f449398769b2cc";
       public          postgres    false    249    264    5531            '           2606    18168 4   product_type_tax_rate FK_ece65a774192b34253abc4cd672    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_type_tax_rate
    ADD CONSTRAINT "FK_ece65a774192b34253abc4cd672" FOREIGN KEY (rate_id) REFERENCES public.tax_rate(id) ON DELETE CASCADE;
 `   ALTER TABLE ONLY public.product_type_tax_rate DROP CONSTRAINT "FK_ece65a774192b34253abc4cd672";
       public          postgres    false    5667    290    285            �           2606    17288 %   refund FK_eec9d9af4ca098e19ea6b499eaa    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 Q   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa";
       public          postgres    false    249    5531    247            ,           2606    18296 1   discount_condition FK_efff700651718e452ca9580a624    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition
    ADD CONSTRAINT "FK_efff700651718e452ca9580a624" FOREIGN KEY (discount_rule_id) REFERENCES public.discount_rule(id);
 ]   ALTER TABLE ONLY public.discount_condition DROP CONSTRAINT "FK_efff700651718e452ca9580a624";
       public          postgres    false    294    236    5445            6           2606    18346 9   discount_condition_product FK_f05132301e95bdab4ba1cf29a24    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product
    ADD CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 e   ALTER TABLE ONLY public.discount_condition_product DROP CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24";
       public          postgres    false    294    299    5701            �           2606    17048 *   fulfillment FK_f129acc85e346a10eed12b86fca    FK CONSTRAINT     �   ALTER TABLE ONLY public.fulfillment
    ADD CONSTRAINT "FK_f129acc85e346a10eed12b86fca" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.fulfillment DROP CONSTRAINT "FK_f129acc85e346a10eed12b86fca";
       public          postgres    false    249    5531    220            �           2606    18383 +   money_amount FK_f249976b079375499662eb80c40    FK CONSTRAINT     �   ALTER TABLE ONLY public.money_amount
    ADD CONSTRAINT "FK_f249976b079375499662eb80c40" FOREIGN KEY (price_list_id) REFERENCES public.price_list(id) ON DELETE CASCADE;
 W   ALTER TABLE ONLY public.money_amount DROP CONSTRAINT "FK_f249976b079375499662eb80c40";
       public          postgres    false    5725    228    300                       2606    17428 /   order_gift_cards FK_f2bb9f71e95b315eb24b2b84cb3    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_gift_cards
    ADD CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3" FOREIGN KEY (gift_card_id) REFERENCES public.gift_card(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.order_gift_cards DROP CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3";
       public          postgres    false    265    5472    240            �           2606    17168 &   payment FK_f41553459a4b1491c9893ebc921    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_f41553459a4b1491c9893ebc921" FOREIGN KEY (currency_code) REFERENCES public.currency(code);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_f41553459a4b1491c9893ebc921";
       public          postgres    false    5398    239    222                       2606    17383 /   discount_regions FK_f4194aa81073f3fab8aa86906ff    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_regions
    ADD CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff" FOREIGN KEY (discount_id) REFERENCES public.discount(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.discount_regions DROP CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff";
       public          postgres    false    237    261    5449                       2606    17590 *   claim_order FK_f49e3974465d3c3a33d449d3f31    FK CONSTRAINT     �   ALTER TABLE ONLY public.claim_order
    ADD CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 V   ALTER TABLE ONLY public.claim_order DROP CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31";
       public          postgres    false    270    5531    249            �           2606    17248 #   swap FK_f5189d38b3d3bd496618bf54c57    FK CONSTRAINT     �   ALTER TABLE ONLY public.swap
    ADD CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57" FOREIGN KEY (shipping_address_id) REFERENCES public.address(id);
 O   ALTER TABLE ONLY public.swap DROP CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57";
       public          postgres    false    5545    251    244            �           2606    17163 &   payment FK_f5221735ace059250daac9d9803    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment
    ADD CONSTRAINT "FK_f5221735ace059250daac9d9803" FOREIGN KEY (order_id) REFERENCES public."order"(id);
 R   ALTER TABLE ONLY public.payment DROP CONSTRAINT "FK_f5221735ace059250daac9d9803";
       public          postgres    false    249    239    5531            )           2606    18173 0   shipping_tax_rate FK_f672727ab020df6c50fb64c1a70    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_tax_rate
    ADD CONSTRAINT "FK_f672727ab020df6c50fb64c1a70" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id) ON DELETE CASCADE;
 \   ALTER TABLE ONLY public.shipping_tax_rate DROP CONSTRAINT "FK_f672727ab020df6c50fb64c1a70";
       public          postgres    false    291    233    5436            ;           2606    18432 (   batch_job FK_fa53ca4f5fd90605b532802a626    FK CONSTRAINT     �   ALTER TABLE ONLY public.batch_job
    ADD CONSTRAINT "FK_fa53ca4f5fd90605b532802a626" FOREIGN KEY (created_by) REFERENCES public."user"(id);
 T   ALTER TABLE ONLY public.batch_job DROP CONSTRAINT "FK_fa53ca4f5fd90605b532802a626";
       public          postgres    false    5560    303    256            �           2606    17218 .   shipping_method FK_fb94fa8d5ca940daa2a58139f86    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86" FOREIGN KEY (swap_id) REFERENCES public.swap(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86";
       public          postgres    false    5503    244    242            2           2606    18326 =   discount_condition_product_tag FK_fbb2499551ed074526f3ee36241    FK CONSTRAINT     �   ALTER TABLE ONLY public.discount_condition_product_tag
    ADD CONSTRAINT "FK_fbb2499551ed074526f3ee36241" FOREIGN KEY (condition_id) REFERENCES public.discount_condition(id) ON DELETE CASCADE;
 i   ALTER TABLE ONLY public.discount_condition_product_tag DROP CONSTRAINT "FK_fbb2499551ed074526f3ee36241";
       public          postgres    false    294    5701    297            �           2606    17228 .   shipping_method FK_fc963e94854bff2714ca84cd193    FK CONSTRAINT     �   ALTER TABLE ONLY public.shipping_method
    ADD CONSTRAINT "FK_fc963e94854bff2714ca84cd193" FOREIGN KEY (shipping_option_id) REFERENCES public.shipping_option(id);
 Z   ALTER TABLE ONLY public.shipping_method DROP CONSTRAINT "FK_fc963e94854bff2714ca84cd193";
       public          postgres    false    242    233    5436            A           2606    18640 .   order_edit FK_order_edit_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.order_edit
    ADD CONSTRAINT "FK_order_edit_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id);
 Z   ALTER TABLE ONLY public.order_edit DROP CONSTRAINT "FK_order_edit_payment_collection_id";
       public          postgres    false    308    5758    307            E           2606    18629 P   payment_collection_payments FK_payment_collection_payments_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "FK_payment_collection_payments_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "FK_payment_collection_payments_payment_collection_id";
       public          postgres    false    310    5758    308            F           2606    18634 E   payment_collection_payments FK_payment_collection_payments_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_payments
    ADD CONSTRAINT "FK_payment_collection_payments_payment_id" FOREIGN KEY (payment_id) REFERENCES public.payment(id) ON DELETE CASCADE;
 q   ALTER TABLE ONLY public.payment_collection_payments DROP CONSTRAINT "FK_payment_collection_payments_payment_id";
       public          postgres    false    239    5464    310            B           2606    18596 2   payment_collection FK_payment_collection_region_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection
    ADD CONSTRAINT "FK_payment_collection_region_id" FOREIGN KEY (region_id) REFERENCES public.region(id);
 ^   ALTER TABLE ONLY public.payment_collection DROP CONSTRAINT "FK_payment_collection_region_id";
       public          postgres    false    5407    308    226            C           2606    18610 P   payment_collection_sessions FK_payment_collection_sessions_payment_collection_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "FK_payment_collection_sessions_payment_collection_id" FOREIGN KEY (payment_collection_id) REFERENCES public.payment_collection(id) ON DELETE CASCADE;
 |   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "FK_payment_collection_sessions_payment_collection_id";
       public          postgres    false    309    308    5758            D           2606    18615 M   payment_collection_sessions FK_payment_collection_sessions_payment_session_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.payment_collection_sessions
    ADD CONSTRAINT "FK_payment_collection_sessions_payment_session_id" FOREIGN KEY (payment_session_id) REFERENCES public.payment_session(id) ON DELETE CASCADE;
 y   ALTER TABLE ONLY public.payment_collection_sessions DROP CONSTRAINT "FK_payment_collection_sessions_payment_session_id";
       public          postgres    false    238    309    5455            G           2606    18732 /   product_category_product FK_product_category_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT "FK_product_category_id" FOREIGN KEY (product_category_id) REFERENCES public.product_category(id) ON DELETE CASCADE;
 [   ALTER TABLE ONLY public.product_category_product DROP CONSTRAINT "FK_product_category_id";
       public          postgres    false    316    5788    317            H           2606    18737 &   product_category_product FK_product_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.product_category_product
    ADD CONSTRAINT "FK_product_id" FOREIGN KEY (product_id) REFERENCES public.product(id) ON DELETE CASCADE;
 R   ALTER TABLE ONLY public.product_category_product DROP CONSTRAINT "FK_product_id";
       public          postgres    false    235    5441    317            �           2606    18646    refund FK_refund_payment_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.refund
    ADD CONSTRAINT "FK_refund_payment_id" FOREIGN KEY (payment_id) REFERENCES public.payment(id);
 G   ALTER TABLE ONLY public.refund DROP CONSTRAINT "FK_refund_payment_id";
       public          postgres    false    5464    239    247            �           2606    18564 !   line_item line_item_order_edit_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT line_item_order_edit_fk FOREIGN KEY (order_edit_id) REFERENCES public.order_edit(id);
 K   ALTER TABLE ONLY public.line_item DROP CONSTRAINT line_item_order_edit_fk;
       public          postgres    false    307    5754    245            �           2606    18559 $   line_item line_item_original_item_fk    FK CONSTRAINT     �   ALTER TABLE ONLY public.line_item
    ADD CONSTRAINT line_item_original_item_fk FOREIGN KEY (original_item_id) REFERENCES public.line_item(id);
 N   ALTER TABLE ONLY public.line_item DROP CONSTRAINT line_item_original_item_fk;
       public          postgres    false    245    5512    245            �     x���M��H��s�S侌T=��M���������!���&�{Y��o�azZ��5�@��P�T�'^���}F؞��S]�FBM[Az'1�����uκo��V�N���,�oU���i�,/_^�^�?�������_���ax�~?��/���$�PD� �'�?!8b����(�T���"Ҙ@�h$	s}����p��%��.�I��3�LR&��ߵ}�^�~[���TF��� |~��2ҩ��*�dI���"��4,x_7�l�[jI*4�I=�D���0QR� aUC��B�J[HQQ6����@Ap�!�n��E��ܱ���B���#�D���[�M�Pw�N�P��征{,�X��uC8�-1����)���}#��Dr���r��-��tH���W�(��%���#�͙����9�`��Q�ã�C�G���c�"�n�kI� ���aυϽ����)���VW����:��
:���&�@[��	1���#�"h1�uK�l�����|�}~���C#B)uEؔM��5J���N�}#q,$�k¶��(��S]qnǵ�\'~�%�`�'ܘ��hS)��t;0o5R���Z��p�4?g�UM�'\O��c@�_�sXmB(� ܲ���O�/�n���� =��.��n���<� 4�X��i+T׈���?�~�n��G������Ρ<M\��2�m�`G ����	q��� X�Z�[�gV�6#��>�`B�fB��$<F�����      7   j   x�KLNK�70�p	t64su357	��
wvwsq�t�4202�54�5�T00�20"=CCSms��1~���EP����CL}�]���\<�9�8Ӹb���� M �      /      x������ � �      �   �  x�ݗko�F�?'���Ӯ���}<�/�۲;֌m���V.!)��$ۛ��k�ljٕ���w�����ά[=}0
 ��+��L
]zVt�-?/n���Eww��ߞ~����[,����������\������J��mY5g��� �������n��T 1=�=?�r��,}GV�I�(�����y�4|D ����Ȁ�¦�d1�����@���F�D�S��_Lۘ�6��3&Ϗ�է�z~�4,����ewAM`��w���<ia@`�F����WF����r^�LOs3�M�w�rq37������������_@(L0<����V�u����=ξ$(d�MC =�I������|��3�Q�0�%��Sߍ�V{�Y�+�ʰA�C� ��l{D&�l��*�&&��T6n軥�zi[�yN��j}Ucx�呩DQ���"Y�_�/�U
c2�M�TS��ؑ�-uG�������pdynlB-K�N�6�A�W���9�nʜŀ$�/��(����F�"�NU�*>�|�)|�,�nƸKW��e�8B�D�~{a2`��~m�N��S-�Qe4�,����	�k�?�����3XzG~P�\f��aN`��&n	�hT��M8D�$ �?�uT0�T�ZŅ/����:�j��"/X6iXЗ�A��_��ԫ�F� ��~�����^�A |��mA�&���R�O�+u�i2"�}�&�Hl���� �U�CU�.R��ڿŭ�e��\�(� :� �-jm O1�&��B�:	@/A��Sٶ-�Qݻ����P1��$Z� +T� �1�� ��?��i��65�X���n����Zgā�<��� z����ض���O?��I���ix�&���l"YG}Ƥ��~y�B�Q�/����o�˯��(O���m�?����!-'�            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �            x������ � �      �      x�m�[s�H�ǟs>��v&�w���Q�jb�׎�8Q�jt�u��o�8������ίT�v�LDvϴ3+U��V�!�:H[����^������pTI�*�-~i�����Ş�Ŏ�(�m��R�h8~�>�a�E�P,���s�#{a�칇T��N%�J�i%����y'�b��>R�>Ͳ����:��d���7��CU̞�R���œ�;3�2��D_�7Q;�k���"��v;�B>��A�}-�N6��V���7�J:<��b��Pe�r_-C�ʠ��0�?qX�@:;,H�LCT�L,�2s��d�%1�z�}�N���f����0[�J(��ܬ־=��˼�TT+��2����U��c�w(�xv���~��~��
�w�m.�c.����=�W2TG�I����2i�5߷݅�g*4�����������df������}�+��l��Ͷ�i�6�=��g��>��Cl/��2i`��3�"H��J#Аm E��j����5��q�o����ok���hv��5�%ۯ�N6�^�S�
�m��P)������� �kw7;�-�D���nt���5a�`
E��B��}��4
_��X���qt�����'k�.֖��쵻YUQ���ze��,@ L
����˼
��2�A��?��(=6��J��񟝉���q��DZ�ld��!}�#��3� %=,��W_�J��ߔ�h�Wh/=�m���f|��5(,7�t�jY��Ah�/����d���0��M	S����kw5���إ.x#��׎Ϗ=��Ua�G�M�!u����2~�f�J^L�V"�m�p\k�ee�l�!+� ��:dr�*.Z8� Xwk3��:Q�etPu���������Z���C,;a6�^�i%��C">D[_�n8��*�t%Г���Z#{>�8��T�M������!vDԏt����	�4�b��޽���*,8������c�s`=پ��vCN�]�XK�i�A��V�^bh<U�P�)���|`Dբ�X��)Ӿ��g�HF1��e�����r��JEK���=*�2��cUԏ]$�c$�|4ugl�Ff��%0�]�$�`�pkwe�� ]�ҧ1Q��!7:ft'�ч�k�d��N,A�7�V֯i������.��y@H��d��B�y3o>�~J�4���l '��b]�`��=��:�435���; p@ cx4)�������K�T��0?Y�c���7������w�Yf�'�8�8��]F��n���ͪ����9~_o�{�p���񠝖�2����MRp,�p)-�_wBB�Ҫ4�����G�Z�d����J�#4�cFx2�=N��,e�F-�-xT��Q��:x���{�����mc�2S��2��7:�ϬƹOK�
F�s�	:ٽC��%�gg4������S�v��
��$�Ɵ]
�ڕ��p��E���|CJ�4��7w�B�4��>]�O
ň�o"��*�s��0�T��/�hC���ٕ����Hp�.�����Z���\T̮䯒G�Ҥ�93:���h�h��MKO��|C�+������ ��c��Tѐ���a�#�%� C���}-J��j���y�@K�����ɋ��0dNP@G⬧����1LϵHC^N���˽={�az�V��9'��~�{�t�^�'�D�U����K���۾��b�^ei�1�{-y�
q4�޽�ٕ��k�kR�%�@ԝ{wQ՘�0�����E�4I�{�Y_�Q7��,H/lXw�^O�/r�h��Ux�͞�ʽ�/��ym���p�4���1I���]gu]�"L�A����9�@
ڢ�+h!�5��s�!�xibW�m����ߐC aM�`�x�D�4;�-9!R��������T�C�������[&!8 `WB�����h��qF�L� �U5<p�`G���xBK�|�'����k��4C$Q����Eg@.;!����Y�!2,���l>��J(F����Z��U@��ư�1ik~��T��"K	��O��'dpKT�Cl������l����V�7�߇.�eSK�}�Z�J�^��]{�TY����P~(��;�AU2U��eTL��1�d��Ա�k�Uq>�@g��i��k�Y�_�|��F���4�ɫ�
�veJ|[+Ǳ~}�m�*8r��(��&S��Z\ݾ(����'�ؠ��A_�G<��L�Ř&�F�dO0���1`+�X��e��)�N�%��i���h�$�2�]�DC�"�h��ȩB��� k�P��д*d* 5ܖ�{�/��p=��H���n�ai������T�w�s�7Sɧʬ��m�h�H�-����Z~��^W� �ғ�9���IC	���hP�Xދ5�>	l��8�ʷ�B�
"3����X��-��3��V�`��z�8/Q��^���\�'������3�s��y�`���BL�8����4�_׷��.'f���`?����A����zO�`�=P���<8�'[��R�+��(Q]yp}wH��C��[e2��l{:�9;��/y��O����3�o������?}�g� =G���?y��~��O�Qk���O���}���^��=d��557wrz���1���@�7J��3�w�=yx�'O�Ƃ��py�YLAy� ]m�:��'��*3��8�_�S��%�����Z�ZO�3U�^o=�m!���g��^жf�V%i���D9Į�23g孧yZ��w%�Ё]�Tg�����5T��;� qA��%�����CK��hx�PQ-;S[K���ب���G!��S�@̵�X���� �"H�"��@��*����YO7ս�,,�����V���'���a6�������23U���r]��#��\�4��`|���'��:c���hq�����f�Q~�5T{��|q�f���SyH�G��A�H|�x�6cΜ�;�W#z���{P��4��ߠ������E&Ro&ǘ�����W�']@���Z?i)�+�z�6H����Af���`��#��t�Uf�W�o�%.��=�W��f����G(�N_��_M������*ˏ*�>�;=��P��՚5p�����`��20r�*�����6`���sU�n���q	a��]-�nV�XX�_mɅs��� �������(��a��Đ>��OwDp�Ý���X^򘳶��㛆�ɺw���M�^U!�2�����t��Q��8 �1h�M5�{����Ul�F���/�Cz���d��ܡw����%1F���Y�r��|���{2d"� �Й���08dFA�P&j��[���u%�������y��rX��~Tm*Kw�� 
�;)���>��Ε��w����g��cH_,��
3��AI��� ! l��W�]Y�4_����+ڎ$TJ��� .6�ˬ4ܮ$g�ȥl.��=�EpV�O3H'��ۇ��ҋ@�?���Kvz����3S7�}�F*2��H$y���+�gǮ���}�s ���!��	���@!S���c��{	�f��^��G��#�b��5\������`�NJ����'a��V���WϿ�f׫Y��K�>�5���3�t&?���Jpa�j+��5�W����6��$�89��/��^��aOc(��M�4���e{_�'9+�������R�n�/��󛜣7d:�̘���&8�P�\Wq˩M/R?Y��f�:c�����&�nW���؄	��D��cX��B����y>�/u� K{��-���T�RY:4~;���du�.ٸ4q�l�N8���Ltɟ�C�/�:�9��E���ԝ��%�[��F��̗��.[��.�.�^����X4,vJ#�J�!=����'��ut0�_�7�v[0��[�b3!ՖDAy���a��A�ti�K&�����<Y2��H3����� ����`������w@%ܾ��f���L����BMˈ�.m��DF�i|�&�v�oú�}���_W�J]����uQ�inK�)�u��]0L�o���ۑm�e����/Cz����9�'Y)�$1����(��	����Y5uf����i����)��e��>�� }  �y�X8��^��y�X���5�H�����u��Ƚ~hV��k�P�_�lՒ��[�^/i��o�B��a��3��&�ƀl�%�O��7zH,�w�0����5ː�M�u��j��V�;�� }��Gw�/�+5����*č��0��WkӀ�\z�➆��C�����������NNo���OL�[x�����X�%/�3r}�<k���ٖȏܥÒ�Z��9ג���\�4ɕ�;�n���ح@v�rVк�>O$gZ�0+��I����u�z��g[$؋�Wz�즡/�N��N����rD�ʹ����D��2a�g�E��ko����J;HY� ԣe��� ��w�	���&�� �f�TC��}��5V�D�8Y��!`����$��	�D�������N�� �<D&A�S�T��Z��:�_)�-�؊>�~��~<���+E���NM�L9e�w���y�b��lDW�]yWЋ�Z�f=���b�|�lO8�?M𳑭o	o!k~Jp���$ԏ�i]�U�-|�O	��[H���s˷�� 2�֍�����@�mG'H�F�+ߵ����Bk����{w�!��dVk��e���� C+�8��iy����;��!|s��ʥ'��Wm�ݙ>��*�.u0�����}я������h�v����
��[}q���!���q�g0��I�3�ކ��E#3�~���C�闷��m����Z�^U��%�y�[��M_O-3�P��k�텮�H�"�)�k��[C���� /M�g�)�*<��tJ�ӳ�Ǳa��wUͣ�$ԃ���fC�#�_��5���G�ÆͦD+lve��-�Y�q�����͖(Ev�&��S�T�]'(�hg�=8t��SPîf�#E
S �5�
K5l��])
�t�5!�m/koh�O]�^�`Y�[u�rO�D���5f���4P�MR�Ȑ������p��N�:�I�1{'V�ǚ����)��&7�4�q�#�r��@��dS� ,N�ֺLcS��k�k��7�T�_X?fs����Wt��<��$Y�%[M)B�hi�9\A�~ibp(O��l�/�8�9�_8���-*Eq�h�Ȫ����z�]IQU68q��zw=)c(\7�k�xN��-���Fp;m��������"��#~>y_ʋ���>��(Wa�MV^!�.��;��>y�y:um޷��,�0��P��֗G{���yTI�
c�6�"�45���<�Dly����<�-��4��D���<��ڢ��c��<4A���F�"�
�3���76XA1��~n~U�(h�k�0���԰���Z^��Zۑ�y�^�OZ}�g3�D���\�勊�Є�}I����Jp��E=��Nw_��ٔ �/:�3�kfG���=���J=yrHy
�:��{��³y){���5�y�7*��;��/�<��Vm�LHrp�]�c�V�ǿ?�q�ϏϚ&�z/AO}|�S�oL
���kLǏ��~������jx�}\��:��[�O�5=�co~U�@��k�N�P����m��'��E����$��$�/S �2���I0��dG���K�."��Jv5X�HEY]-���������]۳'q�_��gG�k�]=������_���_�"zC�      �   �  x�]W�n$I]���ZxK�����re����DV�3Ù��̬r֪�!�+V,F��M30=Ġi6��H����/p"��n�����[7�>ι7�.#������Y�[��z����$W[���]~�dP͸��3�ӻ?��]�������D����4�e�/M�s�OuN�����l��HƳ�:��DJ�,�+(��s�?�ӿ_��Y�:&N�7v7SRgf��X�J*њ�N�0:v����>����\�����n��=�\�����V,�9�vuu�㾷/�Z�z)o��Z
S�0��IYU4O��7���*�x$�D��<�,�u�&t����m��Y̍�l��$��O�+��.O��s�)�vk'�����a�p�`����؅B�mp��[��3�����&#dkf��Z����X�*��dJSXU�
9P�i����z���G7���u��j���5�8qn�L��=~�S��wi������:����H���u�dYn�g�Ft�̄���r��M���<[=��b�Cg�3�����,��_;��⭙\@������RP��^��ca"{�\���)��s'��X$HS���5��7g�j�9��P��Cq�4�~j�P�Ikh�,��������Q������w>uX�d�pH�X���o9(+�(�M�b".h�7%ؽ��3�MἙj`�	�hr�:Y脧���*���T�ԅ��4��aA�>���۫T�dR�,�F^�6�5��⤤����?m��7�ڞ��U�۞]{5
y���:����=�E�3��jQ��$�hh˼(�xl�����'hV��Q+/�tXbRJ�]=��K�Ж.��Be�~�6t��F����Ь��@E����K�dVN�89(�[�j�8�
�%ݾ����/o_������<���t`�����8�f�ݟ���]qg��2�_����-�@sv������Ϲ�&%g
�sw�#m"��?�hL��+���I(����e�E����&���3��ǿc�P��$"Os�T�i�64H�
���� I,ylɟ ��*�����G��a�����t]��dNo/����MC��i"�;΅�� �Q}��6��b$B�~��#%��	����(Y�ѨrKVI�9��%˖P�n�j�]�u��;�9Q��}^s�qǫ=���+��~y�Ѹ?�H/^k�ǜ�{/�~��TrӰ�#UN�BD��}���S��4�1�yk�`~媢�d������k-�uld�rt���tg���M�x��,�|#i��k�������?������7 ��.�|�i���`܎��k`�ٍE����0���?��
���򥓉�t�	��VRSoǮ	61<�mysm"B���<k&ڬD�i���������W�W?�}����%MD��|�A*��j��'���h���g����ɇ���k��O��v2E��=��<5g�P@ce*L�p5��R��@���L�;Y����L�3ہ^a�Tz&x�L���N�(5��I���M�ϝL}�,Z�am�a��Б������0�P�.�N��|{���e1�����͗������\L�츋3������:��t��pǈ�E	G��k�H������#eS���RG��P|����f�rV���@�t�m�J�v���a������)(x�;�֑�<�*	���o��.Qפbnb��k��8�y�����
t��&���?��5���44�U��z?�ப��s��CIF<jY���Xo��>'���t���:պ�y�x�j��wh���'ǩ�rB�o�%>�:��/��K���`�Դsl+�z'�'�^֡��s�����wۛ�c�ĺ���^M��~	��H����<��ul������׽ݎ@<jZ�A��.�>�?Uo�9d�0������2O��������`�וf���SO�nq���"�l����	n��!�+���c����            x������ � �      �   �  x�}�Ko�P���+��\��a5 (�R*hL&������חN�L3����]���}�M�@S��ss��յ�lY���.�X҆1cQȲK�G����,L�s�~C��âdwVՌ;���]�k@U�?�3��ԤFD��o��W���˦�g���{�-U�W�=�$sS�w�9��a1=�hd�v��):s��ޥ]�����;=�W�l<Jo�E���j�2%���9A0Bt��$H Mx@�!8��"E��D�'�ǜ���K���2���M�����%މ.���������r_��bY��#'��Q.�ĸƪ~ɏi�d�A˛�0C��c-��[5{u7�T���'������E�N��TJK�ذ-��F��������M"����a��{9P�3�/+�(,H"�5)HT&��	��W�IՅ�K      $      x������ � �      %      x������ � �      �      x������ � �      &      x������ � �      '      x������ � �      +      x������ � �      (      x������ � �      )      x������ � �      *      x������ � �            x������ � �      �      x������ � �            x������ � �            x������ � �      �      x������ � �      �      x������ � �      �      x��M�+M��,����� #&�      �      x������ � �      �      x������ � �      �      x��ks�H��?{~Q;kQyS����r5�m �s�B�2m>����D�����6���p�mc�y�+�ˀ��T*3_=���*����R���(R�Uy��/Wu�P�v�ݓ��]���"�kK�9.�V�� �v�::a�q���#g��aim;R��E��?k'����'��i|:K}���l~�N���� ���"��h7��������|��p0
��,���c��x���4�i��&�?��{;��/���`��\��owL�_����k�^�_���|�����p׊Lݫ�6����W����x��p~��*�r�Rw<M����`23?�nG�_��Ww���� �JUǳA��L����'ah^�����j<s�r����ee�\��7�f����ph^�ݝWq����,+�{uƳmZ)����\^U���w2������ƿ�����[}���w/�������C���{��N�q��`�e��8��׫���K�Z�d{uͻ����~���󰂦-v};�Zf�֕ٷ5[���`�m���n�����}[�ٷ�5޷u3����Zә��t^�[o8�^����FLj�h0/�ͦ7�n���v�Wm�լ9�.��Ƽ�#�z^����I�.7��_S�徒/��p��̽?�?	�Y|q�~�I�6u�?,M�o����w]-x��,K���͖��ϯxJ��H���^�8I�����\��v�
>Z��gܯn��+�˟.�ivy{퍖#��lvs���p����tv�����f8v��g*�c;\j)mj¦�ô�F-a޲�	����р��V��n�~�^Wݦ�L8gT���[�<O_�x��4��`6;c$m*�<�ԟnf�q<~���`:��S�DS�����LW�x�4�)o|�������g������9M����s�����25�9MM�K�nj�ݽ6����#����*���+uk�nܑ;M�c�?��n�R�q43�|~���>�����4���pp�������A���^���45É;�R�2�I">�xʿ^�Q4�\���x��Q��S��f����3Lݘ�.5��0H�����R��OS���,~��|��4umZdU�y�~5;��׃�Ӝ�njF����$��NF��L��nL���4�i��;H}N��W)��Lᖭ=����4��Nf�#�n�;Nݎ���r�qs����f��:��7�U���Y����r|;��߮N����=���\MRm��׿�m�R��z`��I�<4�����܍R�W���h�$^�6�ͦ�o���	�����Ԕov{�,�jo05,N^�8E�3�}� �$po�o�������NU�Z�7�Mx�ݚ���tӿNS�x6N����T��M׋ϩ�T8,f�gZ>��k����0�����M��A,>O��qg]�����7nS�qK�3rm*reJ�M3Lͼ�h��=������ڜ:�J_͇�&��p56=���7=Ҽ�8Բ�L4?��o����؁Y����f�y�˸�"O�_MMu�a%\TԿ�����dy�U���Ԫ�]�Y=.�4�1�lU�E�Y4���w'h�W��x�c3�����'�\����]u��E�
�f<���9�bq5��ߣh����L8��|�/sȑ;ܘ�/_�������N�x�L������g����x8�x����x2�:}�o1��|���)w5	�t�}l����ӂ�ǆ�x9���K�G��í���4]�ϒm?��p��皫wb.��4����L��M�ϷY�u�ڗ��5���7�	�6���Xۂ.'���`N�b�\;���ח8Y-�3�Ӱ�Y�]�^2�g���<=-͗��V�"�_I�Ur]N�싙���ٶ���[�z�s"��f�3����?\a,BT�5z�N�L��ɵ��fZ_� �5��lr�u�����7C��������8_��nƏ}k��W�L��r��}WYE���a�:��E7M|+��u�0���=�e��l�o,:�f=��o�<I.n/���uq"V�}��j1�Q�F�{ަY:o�LOW�/��?�W�q�6�����j1�6R%zm׿�3�^,���[\~����y|�^��rW�/O��i53�~�rw\�Z��l�,�(U�����Q*S��R�ӛ�RL��T�3믕J�k�*63�\a�T�d�T��a[1�ڪhf	3��K��,X�U3��F����r����"��˕G���j�`[+�y�Y��6;Wn,�}X0%_^���Ĉ�F���g��_څ|��K�<���F�z��M�a�P����ħ�m���z9�z9[݂9��n6��[��:��+\�B� ��i�!�nZ�ɽ��a����ֶ�o'�p�_��Sx;?�Y6�����b-祸�f�G�����O�won�t1=��]M����LfVX�u��|�%�0��������!v43��Ÿ~���Η SS
�>���T���6�g;MR��0�6M��f4N��H����Կ��[*sc�n7�*��g��4���VJ�ꯧ&[_���8��-������R'M��R-72��&�V�j����ı6	���7}��j'��vۊW*�VS�ٳ�l�\�G��D�4wUv�54y����LLҟ.f�Ǻ�gD�	a[�V4���wQ�G��	{��A�?�5ﻕgN��P��A0	�����Gb�~\/��f�W�3�·���Z�����#��V��ͫ�.��K�6���4���2]t�/O�P~��(�I���o�(�uЩw�M�l��\&S)
�f�<�h�#sy,v�x��������)�{��Sw9��*w��?�-��+߇�a�l�x�A�M8��;���l>�^�k+�Uט���Z�u�����gꮤ?���s�.��=s륷u-�� Zj����0�@�60�ΥI�^��qFsZ��=-\T�����wJ�F�Hr�$��q��:��'Ϳ��Y�_��҈>ġ�;i��8t�8T ������C7�y�3*Ҧ�����������O���~��e��wp�p�2�/�
�P�P�P�P�P�P���y�Xp� =>Z$�B�g���B�]�]-�̉v�H�^`��Ӗ0��rϷ���~I���
�ڦ��C*�C�C�C�Cw�r�������������������;8tw8t�{��š��P	





�8o�������G�Ci��˱�jV�Z4�Z��9Q�E>׎廎I���-�!�EC��A�iJ8g���ġp(p(p(p�.[8888888��P�y{��!�s�:Z�|� �������&�[ǂC�P�P��#ġ���S�3B�+���l�Ďlߍ���qKH",�W��4�eD���w��c�2����R


�˖}�<�޼��J �;�j�68F ��\�*$
$�	HHHHH�8��j1 &
&�	L���h]f[�
-�;��E�vN��}��D�Kخmy�-W+[G,�	L���ڶ�Dw�D�(�(�(��.[LLLLLLL�2Q���!�������s�&��D�D�D�D�D�D�D筣a�LLL��(�p�K5�)��ʳ�J)wB"�I*��,2aSR�	��R��r�D*���Qk%�Dw�D�(�(�(��.[HHHHHHH�"Q���� �!�iN��"Q�Q�� M����
 Q Q �#D��.��Z.kg[�R��w�'*�0ǒ�;� ��<G���k�#%���4���7��l��Y�g�j���|I8;b��-Q Q Q Q Q Q Q Q Q Q Q ��$J7���/�&�%�����4�����G�Q��(x(x�'�P�P�P���y�Xx(~C88�qhC0E��Us����l��TN�-݈z��Q��)\�qmq隠)�F�Cj�4;��r4�=5{7�P<�=�N7�;�r�I!i��T�uB�]��%Cf�C���S;ɴ���cu8I��-l�����oFy
������������{Gw���z�mt��y��
,[U�^�UK̋���_�6�m�t��Ti`�@��3�j��-4��;'o��    ���L&W)vh�Xe�~�g�&��=�����5Q��R���;�f�u��s���[�/+^�Z�V��.�}Y����o��	��.�����c1��Of�fy�g3�p�dZX!C���Ж�nhy��9Us_$4��fRυ��7���1c.F��P��o�����t�gf�׎�΃(̎!
np���\�x}$����W�:c$����\Z&���K��j��v�%q��:����t����j��t����.��?�.��\Vm�.�˺��a��L���3f*�T���k�r��PS�����oe.t�O
��y��T:�yB<!m껖p}j	���ʵ\�"ّt�Np9E�SaK�.'\N����p9�r���y8 .'\N��p9�r��˹w ��.���	��.'\�gr���;
np�˹G��m&	�s�.g��#u9�Gq9%\N��p9��r���	��x]N	�.'\�#t9��Ujez�^�a�:��X+�p7�,�%<�Y�	���YT��$^$"��r�i.l��r���	�s���.'\N��p9`���	�.'\N��p9�D����p9�r"������L��}G��.p9��r����r��匙�>R�S�S���	�3~.'\N��p9����p9�r��<F���λR�v�Bf.r��j�D+���V$Be�&S�١�BɣH	�l��rj���r���	�s���.'\N��p9`���	�.'\N��p9�D���2'dN�sȜ�9_�!s��,|��2�eN�]�L�9wesj[��y׹�ezY�9)��	�>g�6|N���9�s��y���	�3�(���:��̺e}��\�X��퓀�j۳��Lv`���̩=W
-#!��N��LK��sB��	�s���B'�N�:bA��	�B'�N�:��D�\�!tB�D8��	��šB����\ t�Q�7��ݒ	B�n�N�!�}�B��a�NB'�N���:!tB��y�B��B'�Σ:/�Km��v��o$���8~�0N-NDh	����:��}JA]�D��f�1	�B'�N����:!tB��y8B'�N�:!tB�йw$��B��B'�9�N�/�:�w>���s�B�܌.wK&��:m����A�N����N�:�!tB��	��NB'�N��(t2�4��:uD�Vn�u�Z:	8�^�P+�X"��JY!u%�J+*�D�SQ&m���9�s���7�8��	�>'|��aX�9�s���	�>'|νѷ�9��	��>'|��r���;nr�ϹG�S=�.>�}NE���w��]��u��Q���9�s�o���	�>����w����9���<�3�T��-�s粙a"g7N�+�R�Z�w�%\�[N7���~��O�9�h�B'�N�{��:!tB��y8B'�N�:!tB�йw$��B���	��B'���r��;nr�йG��y]���zi��)>��) tB����B'�N�G,t
�:!t��Y,隼н�,I��J�O�<���\n3KP�[��J$�=i�T{I߸��D	��N�:!t�~�B��	�B��@,�:!tB��	�B�ޑ��
B'�N�s�:_�!t��,|��B��N� �(�;:cj'�U�TF�T:!tB�߆�	�B'��#:�N�:�R��w;�UT/l^��B¨��Y���$�PPy,�����*-l%���	�B'��}ÏS�:!tB�<��B'�N�:!tB��;}k�s�!tB�D8�Y8��	�B�G��\ t�Q�d3�ܭ�`t����>R��s����ntr�F'���m�0:at��<^��n5 �Fg�Q�Gbt�t�� E��k�>ɩN��'�$X`91q�8�ҡo2g�$�y Gm��+�Ik���w����0:at���e����	�F'�N�0:ߡ��6o��;1:�]�UGkt�w�Dat���y��F'�N�9nr��	�F'��C�/�F���	�F��N�0:at��)`t���ytF�j1�y�yn�Z��-�/ʽ���Yd�g�&˕�o��g�	x�(}`t
~�E�ֶ�3:wjtJ�0:�`t��`t���	�F'�N�����7x$��������)�1��	�F�A�s�0:at~�,|��F'�N�0:=�l�F'�N�g0:at���y�F���	�F����2Ͷ�RJ�j��*^�x��xi+���'=n�	0������4� [D�	�x���!i)�xS�n�:B���6Y7:�|��F�C�>jt��m�6�muAI��g}�m��v�U����������&�M�!x��6�m�ۄ�	o�&���m���շ�C�69m�ʧ�s�ͤ����|�߭�>�Մ������=�=�={�����ڽ���-�Af��Ҷ�w�쒎���V..���\�ZN?S ծ�~��$✰�E�-,a��r�Yv�K�"��\lѝ�EĒ�q��B)�y��e�V1�/U:�v��e��z���K��ӹܖC���I+�V��j��+J�j�f~T�Q�EP�~;�ox�~�����?��;{;����cw�\�&��F�us�^��n�� �?����u�o^�V&�p���+ȋ��읝�ץy7��Z��`��7��.��LI.&�������o�8��fi2���OZ" ���Zv��Ե=�Eⱻo�,���[�����W�x������_���T�I���u�|�P���Y�=}0��趪���o%�/�r��r�-����V�|�4�7�����%o���=�~��6ҡ�9���9�O�9�)�}�`�lQvj�������7^���1.O �v�]hmp��M��S��)ģ�)�B[8Ek6���V8�\|�Məm�r��"�N��p�~�ev���oB�nG��9�U�i�V��M(��L%�B}
SY\F�x�C�������<�T�Q���2޲:��+����ݬ���(�i�T����ƪ`5�1�Xx$��'�����ꂦ?�Ē���/��a�3��=&"̛q<u=�]��6��g��d[O��_�����~=k7H>+�v_���I�#�U�6d(,������-����y��{�%�<}F�:Q�V�||||��s
������������!�׏_(0��+u[f��v�QvT��o�����ϕ��
��h�;��(����&�"�#�#�#�#�#�#�#�'F�7�&��Yt�{.�˶Y�,в��s�{��?��q�ѽ�辛��Ri�*�UH���VW��ǲV͕n�1'���k�*���V��D�qQ�U-'�9�7N|n^$暥��,aiˍ�$7A���X�̜����Q���Z�k5{B[=����������:m�%�O������~-�C᭮:ٻ�_W!�"������������������q��϶���>�������B\��
qu_��|�*�U��W!��q�Z��q����Ҿ�gX��>�*�	�V�R�������r�gFl����{qU��<�f�ci%�#䱉�q+v����l�ֲX`m���=���}u	oe�W�l��)����B���u0���������+	~�mU?}Ms����~S��%��Rm�WU&�/�1������+9/=�}-���/�cЯe= � � � ��~-��ľ3�8�YZ//t�/�/�/��d_��~G����y��m��h��G86�m���#m9A`[A�mx6S��W:)F�(3�1-����A�/�/����pNA�@�@�@�@�@�@�@�@�@�@�>&�JxdK|$O��^�P�$ò�6'�a�=��Z#3'd��O�#7U�ōY�\ߘ�o�[f,5k�V�^_��M��R,��R��Z��a��j��&�g�q?�2��|ŵ��^,j�.�T[�v�<�n3�5���s���ؚ�[�po}�wl]�;6y<��2�O�;6���A8�e8ϙA̬w�_?�K�I� �T��̺\
KDܷ\jK{.�3�R�)���3JM�$�?<��<;���Z8^���i8��h�E.E.E.}�\�\��?�>i  �  K���0O���4A��,������H�,�_)����h�n��Z�L٣�#I���`�-�<�&%�C�l�CI�z��t��T�2ae�ʄ��+S}8+s>Y��dI���	+V&�̃�2K�J�N5o��v=k�f={�4c>�r����$���_�'��C+��y>�5��?���qѫ�B���k�l�ܲ�^f�G��en9�鮼̸k�ݫ��Rg3R�����g{���`e���|a��ʄ�	+���c�/X������0�-�����-�e>�	����'l}�_��QƏg�|||��q$o�(��FtZ�C�y�/���_�{�u֯��t�Ԣu�+������맗�_�{���W;[�Jݯ�b���#r=���D/�4�-�*��5;B���Tz������K�;���iS�f _ _ _ _���|||||||||||}H��4��H��Y��R�.UX������Y����,Q�w�w�w�w�w�w�w�w��c�x�hBvߒ{.��6�WlY%e�G�%��5�%�^����J	�o�*���x��������R�1�ւC\��
q�ꡊ�]�e��9�*��R%�9qH�uJdQ%�?�r�m�$���B׻W)I�!O�3&Ҍr��G�ծ����n7O��,��~����j�G�.�n9���ո�R+uK��ju
v�A�W�� �U�/�/��6��������g_W��ז�sh����>�2�2�Lq5ik���}�- _ _ _��Ė��e,pH�v���I��B)�/��W_�{��V��˓l��ni��.��S/�����=~x�<|)��t��R�}~ޕ��B�9	"ߤ[[�S�B���
Ǣ�tJ7��{��R񷳈3�G�lIw����sJ'���t���F��R�ɻ9;�N\7R�Pqi��F�gG�e�!u���0���T"-�Z=Vs�|!�-7z����YՍN�)�Wg�G����tG/nE��J�.H�iK�d�|~���3�ߠT'[��Ґ/�-�@@���S�<�<�<�<�<�<�<��$�ǶU��A{g o[�98���D�T�\����O@^b^z��������ɛObD��:-��Vz�[L�*6^$�A�@�^��-�j�_��%��u22��t/��{�����ǏN���'y��溝ՙ^�tz����E���ܱ���%B�,m��}�FҌ�$$�Wg�L������^x�����R��Q�����f��̋<)���v=ˤ3j	�q,y�%m���c��WG�h<��`Rضr��,��FM����G��]�����$��$o�!NwE��V�Wz�^�Ro�U֗e��P{|3H�F�M*k�|�o�J��{�j�o�����=�Z�z}ޱ��n{��sUj�\�a;L�[�V�����0���Tf8��~�?�+�
�r�g��f�w�k��������nfvlM͎��ޏ�-ޱu�ؚ�w��v�����nn@�vI�r�Ip;qA�^��I�I� �T�@X���-�����K����~
�c�RS�7�t��잏ɔn��-{�C4��17y�vRRR�.�Z�|�?�z�@�̨�-`�>�=`Td[�O_�Q	�bH��RmYҿ�z�����W�K&@*�(�J��1H�-�R%%�C%Ul��;� U�
�
�
�j?���)�ZLd�"�ӂ�݀��d��1(�$��A��n���f���������T=�|�J��U�{�SA�?���_�?~��#      �   �  x���]kQ���+r_Fg�|�Q���Q+���c��B����E!���8w/�y�e^�=}A���żv�r\�<���r��!�<�N�b0�B�>��
�����������*+��JX�RQkف�L s��$p��S$��=>�0� B`wK��� �׎������c�_��yٔ��t;�/?#�e��zu�YZ�l��;ׁ'�@�6��g��DLy�s3c����/�(-���w��h�p�A#����z�(׺���vhYdu.�{dL���UHxI�s�� �$ߨ	Pޒ,��],�T�����Y��v�S�w���^�N�H�H�<#His�L�:8)1:�����jR����4+^.M3wjv�Z+B�'�aZ�G�يI�O*�.)Ԣe�]Ps�Q��?��>O/�����nX����jR�G���>uB�h� ��Ll�ph���1��ԏ�^����_            x������ � �      �   �  x����n�@�5~��W�s��=����H�`CB���Jm�w/nݤn��M�EѰ����4���������TG���˹�pZ�q"e#��9wܩ�E�K�\�j��&8���M�|���zW�~�=��loe²ݖ��b�����/ |8��WWP�;�|8ٵr�us2i�����;ӀN�^n�'��1��X��m���*���-�j�Ree�A�������V����+������X����ܩ��*��T�}�Y�0≂�����!a���t�1�3�Ԟ��9�§���S��W�Q�[�+u�,�?����܃�I�fG�h���'~�Dk�/�d�A�����H展@ԝ܁�����ˢٷ ��P��S�XM�}-�M�39T�A���	�*��F��A�($"�`*���}��ϵgb��N�|�tL�8�
�� qr��1�\���`:��Fbn8�|z	�mq�z�ا�-��d8��b��ڈ�Ʉ�#�S�ֹ�F��!s�M��)�U)������-ҙNl��X2�c�rj����%����SHb��D���j���dP� �����Fu�R}0}A=�6}�Ta�\&"����)˧9KS�ټ/%�b�?�tb&�&�c����2�^�ߌG��z��      .      x������ � �            x������ � �      �      x�uW�r�6}f��Ged���#�$'/[���ĘC*������3C(�T�9�}�^q�93�a��ھ�����Oq
��*mdUK?�m�v�8ƾ�S �B8��Uu��T�#�1RK敶�7�%���tI���++�~�ۇ�s;�Sa"S@e�<�R����q��8���� I��$��N�U3���zl�8rh4�inl5����������T��'�2Nioq����9�̅�8KH�<7�k_�q^��6�i�q���2.T�h�N9
_��w驰�1��	��a�$&�9\�3g�1�V��u�[o�4�Ʀ�O�RH���R"(�m�R؈�
%V�G�X����#~�ۿ��]] ���0�I��2�4<̗��3�}`�����T@��x
����i���8R���6v��ᥝ�J<�XX�cUh���i����AQ�x
�d�i�a�
]7������~�� �Ha�H���߆��n�}�G;?]Ƈ�t��[b�#�3Q�W�(��a�Օ}���LBd��N��U?B�6��xp�0�W�H�Ls�ֹ
_�cs��T H��(��XMs���?ylc$�$!�'<��&GC@)�7oI�s�q��I�������}~����Qn�_K;�}̂�pH$AH䥰Z+�+$aD�i�Nq�xn#	��HR%�Gd���2�þ\o*P$��VRk��*G�>��b��\֥*T`Hf �HB�q�����U�&��H2�^�j��1���^�}a!���Pe%2�^��q�4K���F2�Z�e��p�:�	�XӮg��I�L�\+�P���)�}|��'�E�܌m?��@I��+gRAY�3�3^�͟�����9��~C�/�TԀ��d
��1����%��ӯ÷/DTXI��k��;�)thlO��tc!��-�j�b�Vb�}�wal���O�^}���b�'���qw�q[��T�5�R쓜��kr�Oَ��+�y��B*WM�'��n��^�־G=io_I��JJf�3�+��]M�Y�����nN�5Ǧ��P�7RI����BB�9>$������@׭���6�Ϸ�[[�I*)�v��8�����]�ͤ��O�Up�:!\`�׹�'��},줒�u����o];=��Z���Z�I%=��#�yF���[���>��Y��+���(,sС�rU�ݩd55�I�[7��]�y86ލ�tA�<\���q*���m�j�j���!�@#�"o�xo\���h�T)7V�:�Q5��jɭ�LT] H��[���I�·�8u��t����yɠtV���8O�D:��b2S+�}�Ԧ �$ �G7�h9븱�J�%�s;�2� �SlJࡒ029�<0��Qs庯<O�:�Ȉ#�*���#���S�BF��'.H�����ؼCUd��Ի����ﲒ.�\1-�ȩz���_��Z� �1��pQ@�v�&�8�c��w�Β߀��7�c���P\��0ա�G��p�'�!���z��Ŵ ������x�|��=�TR-{��{[�-Q7��1i?Q�,z��"���6�Xo�d�vЋqLW&U������� �&�x�=���"��v�٤�; s�)�_s%ݎ�Y7���,�⚧��ݰ9�fD����,�`I����&!y�w\a�?P�Q��{
���C��k��a<�'gV�Ew�d���'9���ޡ����[��3�d'���=8��z�}��N���'��N�e�#Q���p���ED��w�      �   �  x�œM��@��ɯȽd�4�kn��8��#�,�B{�K���z�ݖ��);��z�W�߾��և�i/�u��2����t����F��6OՆ��aO�#��<���E_��i��C��xe#���չ��o��Y��3���n0��iڬ��x��p�c�$H3��e�)I��ퟹ�Eyo��kQ0�����y�N1��P�0��m·�n8��
c�a�#(d�NV툕uYw_]��CU�e�[k�>�1�j.{����!z`EZ�k�U�B�������P7��X����X��ꮑ�ebP�{�j���"7;R�W�a�%.ǂ����qu���aBz̋�ɕ.2���	5+0sC�v�
"�;�; �S�#�1�������q��N`���t��ȓU�4�]�cR����W�at�}WPT�!Ol�~M��	pnC��[)��
ßS�)@9����:7�����o{<j]            x������ � �            x������ � �            x������ � �      �      x������ � �      ?   X   x���K�O,J��K�70�p	�4�4176�6�

67��r�
�4202�54�5�T00�20�22�3441�4�60' �Ǚ$�b���� @KQ      �      x������ � �            x������ � �      3      x������ � �      	      x������ � �      2      x������ � �      �      x������ � �      4      x������ � �      6      x������ � �      5      x������ � �      �      x��M�+M��,����� #&�      �      x������ � �      ,      x������ � �      -      x������ � �      �   F  x��X�N#G}���(�����sy���`���X���{<�s�\��(�_ȗ�z�A ��K�d����NU����*�/�N���cz�8s���d4�?�l~��k��_�s=��WMbZ�l��Ѐ8�CB#�'�>Z5��6�7m���;!�Nن��c)`�[n����n>].|��snN�Wg�����ىe�hƋ��:VU���щ��<G���wE�"4��[tXI	�G����x��;�%B�MU �+�6�_�K	��S���a!nk��D��*��ȑE��4�U�c�Me�bT)�e�j�Ӛ���g�*Ժ�yO�lT�Q�8*y�k�:��G�%ZQ��{	�EJ�jPN+��9X�Tż�Â�:UB�5�B^PS���y�P�0�-�b�2-�(��*�������Y�J�B���G�V^���D��pv�B���0N��[�:�N��ϔ^ 3�*��ثd�V9�F�-�N���O ���
��_is 
�T��\�r-U�	������WP.Xi�l�J�s��Ң5܉~�y�+m-��v�\�1����
��|��Gҩ��S�P-x���6i+�x.8r8S�P�m~���h��ִ�F��Pՠ��&z����������f������@3m�=
���6�0.9�� EES��h f�㑇ڛ�K�j�\����� Hd
�%  �A���u|�.��-�5H���H@O�5�`�Ë��E���� �5lրi�B���7"�zQ� �`���Sۨ^�P\�R������~�1 �W�7s��M��j#d�N��J�1�^�,!���Qӣ���N�� �.�!�K ��-��8��z)S��F����6ޅ��(R+�S�����i�$�0�5��': ��S���L�@lx���*���qӔ��^Z�xu�����L.�=�|��,�3�P,l�r���+L�mX�>�llJ�
��L8��\?�Gc����=A�>`~��Pf0��j��B�;0�,P���˫���=]5&�3�,�Cϲ�	;������|U�X��f������H�~+oE�h����h|](;�µR���5��'�ifz&&�LD[^Ȱ-��C7�ؑ�r'���~����vO�6�v@��d�eZ�|Q(C���1f��c��z'�B0�<]^^����LGc��t��w�\h����	+	�1U@jh�������R�J��B��Iֿ�޲Hoe�wl�M��{D����l�������5z�f�k���?����+�(ۃ��m,M)Y�G8���m�%Wa��o�\A$4V�'�ø{�@�$ ,�!q��0���6��㼼�R�L�c�j�1��)c�S{�/NgO|5x��X3m�U��J�u� Cu|���w&�ufۮ�3lXE�0|�%�+V_�� ��t2?���g���ggCv�gE��2�Z2f����-o�����;ȍ3���BK뎽��E%��?�a�v��<�O���izk��m��@��r����F���\�tM¯yY��S�wf��E}_@d1ۑ���U�rj1˴9���$�#�25iĳ@̓}����\�zy�9��6vww��Q�      <      x������ � �      =      x������ � �            x������ � �         �   x��˽j�   �>L1&���5R�R(7=��C��7|�Ϗ�W8�����<k�i%{���r}?�u-�Cb�3�������Vݴ�nV�Hj�H���`�]��@A��+�a�8���Y�"G���_����6�]�g�̽����������(g���s�"畓���'��>�g�3�=֍�i�kVF
�� �A�j�      �   a  x����J�0���S�^��&�m�]�&)Zڦ�g��B*�+��*�ڱ
.�;���dz|�!�gC]��W��PU(�L�m���݆��@�T�@�\Ā�|C��~����x�n�K�t�$�밣VgǶʶ���Tv�6�Q�\�t�:h����Jb�1ǀA"�P�����g�K��<�ġQ~<3t�G��@˙ �3�����'lQ�xB2A?ߥ�S(���#X��#����b����� b:?�2 �`��K�[�O���h�c'h�d��h�"OӬ���1�Aar�r�#h˪S�I��cй"�������<�,)|�V��IpɈ�Iͺ�Vc�j�ӵ1�Bql��uf�      �   �  x�͖Kk�8F�ί�~����,K6屰,cK�a3Y4StB�4���q�]�T*4I�7��wt�+_��}���`c�.t�0�`㢜��6���ʮo���Tq��djZ�Q�%6]�±ɾ^�~��r��&�9�IZ/gR��@����!).0�)&�� ߯��q��+�����w�����Kc��Rj�շWW_N�x�tk'�������@�����CN>T�L0H���3�u)�:�2���j�[u2�Sa:�E�6-RӼ��O� ��/(( �������Q.)��TS�pi%1��o�+� XM� ��*R��T^��SA1��dH��m�*rK��,�]���E�]t3�4I�IS��/E`vr0�&.�ǫD��"~Y�K��X���=Cx���#���hڒ���X�J�����J�>�	#����a��>sr!��x��\?�( �ʷ���i">�a�e{T�g]��βiٿ�|�ʠ���{&!��nڛ��Mp9��@��HuŻ��
�: �s��/&�cJ�sH?t����=�s��9�7Ъ�'����^���w��,���pt����d�T<�i�aIT �	c�~D!O�����{�s�
 �s���x�|�b���&�3�ݞ��ۏ$����i��4�^7��"�`�5��{c���no����O�n�j�Ɇ��q�7�}�e�ɸ�$�〢@�Ž�B v0)E9CQr�z�#xGc7�	*�d�9B�l�f�*���r)j��]d�Az���+4k�"f?xм3G��r���Izٹ�^���jÃ�]�4$�z��e=����-�� ��w�H��T�1�׶���k]|,�bP����Y���b8(0��4M����!�>ܗWH���LO����򳳳�DX�_      1   �   x��˻�  �Y>��-��#%JIK����6�����v>9����U��eB���z�Q	�7��/����ܰ^xS���JA�쿝���o׉.�QXR��;�W�9V���1�y;��P$m����I׏!��[:Z� C�q�tVl[����*?�-\昲�)i`��L� �$go      >   �   x���=�  й��(#����(�&]����']z �w���aa���4�1:F��%��������}	D5M�pM]EW��aubʞ�G ;6
j�м�7�p�B��v6G��ƭ�*	v�Rj� �q�qi�r!�&���Ί��aҾ�Un>z�n1e#S҂��!��i            x������ � �            x������ � �      !      x������ � �            x������ � �      "      x������ � �      �   �  x����j�@�k�)|_����A�����N�`�4.��4�i(-}����#Z֍�[��<�}\��,o> ��A̪ym�5:)t˃R����sw��z�+�I�f|&i��7-êw����'�z~��}7f���h��g���8���a�}��T����_�����c�Y��"�3��(ȝA���<�}v́��|�>�.��N֮�$
<�Z�r�|�Ћ�\y�"�1Ӵ��~��f:�K��r%G ��Q��	�_��E3�e�7:��MWē�)W�8<������?Yy�Uړ�|z���&첌��27&�{�3��ߏ��Y�P�� \FZ��=��U��I����lW�匂g1�t"���������]��-D�&q���h0�i�P�5��@�=�S��
(v>=z��i�NTZAX-z�1>��j�����vJf�W7?Vϸ��lڒ�We�MºN�ܫo��␰��EGt��G� ���s�yJ��t���4]�O�Ϋ8�y=m49��������]������e�Ųo<&��k5������g�c�'��J�����c����X"��-�ҭ�r�K��v�kQ r�� *c(d�uu�`�`�?��@��"h�&N�X�Ճdo81]����7QW#C      ;      x������ � �      @   �  x���ˊ�8��u�Sd����$�66�e$��^�b�f���"�T��ɪ	x���cᷯ��� �ڲ��3ע ���bu.���Ԑ�8O��b���9>}}���׿��� �W8Zp*Դ|z�2?!��3�H~�����W���3࿮��#��0[Ғ�����h�6G��LF:/��ȋ�DRi�X[�}��%��.Pf��[�	XG�2c���MH�3��D��A�*'޹�q�b�
M$���w\�d�{��hƌ�K~�*hg9�t�l��\�Y�~�}�V�"W���<>m��a'�E�����8��'H,��B��?� �F�þXǳ�].:���52�4&k?с��mg`;ֵ.ݖ��T���;@�@p�o�|x�?M��$(�шf&���?���93Ft�r��\? o#G¼R��h�H�3�76�^���3��4#�YN�Q�:��?��"����q�-�[��H*��\�h畬C�� $�A� v����^} ";Y'�	�j�p⬆N�N���B���p�EK �q��a�6��'��b5=\���#p"���łP���@�1#����QG�` ���=Q�� � GE#�A��l�?ع>DA�܅�kR8��X��^/��д�V�p��"0qߨ@d�k���*�z�����r��3ޕ      9   Z   x�+Ȏ70�p	�s�
��05��sus36p�4202�54�5�T00�20�25�321542�60' ��B.�e�9���y%\1z\\\ yW      8   C   x�+N�70�p	�t73w�s70tvt��ruu�s�,ȆɆ9F�z��F����8p��qqq ST      �      x������ � �      �   �   x����
�0F��)�Ký7M�d��,R5�\,��N�ۡ�� �x�;gn�f���6��z�A7u�ɶ�<�a��3�)BJ6t ���2��W�/S�	�N��Fh��1��|���{>~�.��h��t�l�|������P��A�������7��9�         J   x�+JM�70�p	�3�
�w14�p2p�����M�+M��*BRed�eh��f�gi`�
S���� ֎�         J   x�+JM�70�p	�3�
�w14�p2p�����M�+M��*BRed�eh��f�gi`�
S���� ֎�      �      x������ � �      �      x������ � �            x������ � �      0   y   x�+N�70�p	�t73w�s70tvt��ruu�s�4202�54�5�T00�20�21�3��043�60' ��钚�X�S����Z����������\��X����T����RZ�șT����� ��#�      :      x������ � �      �      x������ � �             x������ � �      �   �  x����k�0������I4��MS�S+je0��Q�ڡ)�q�?z��
�XO�ۗ<|������p�)�1;#�*�Sߋ<a�KV�Aկ�X��V�����4Rq.R��P$�-X��s*�,�)��D:��x�\���cՂ���}_� !h���n;�ӗ|��f׶����g�!6g�03 �CsN�l���~����k&�;��*#&GV�Yh#H����z��$�#W>rl'�������2�����G�z\c�r����Bpi9�5�N�`����N��C�6W�mu�PvJ�E�9�n�sp���<L'��*��;�2��@g��ui�L���*Q����L������Vf$��B;-#���6y�G>�s��
H:��d��I~_;���f2��c��,      �      x������ � �      �   �   x�+.�70�p	�t7���1�4�0�t5�t�tIMK,�)Q��,(��KW(�O��I�L�Hp��Y*Z[��XX��h����"�b$:�y�z�D��8�s�g��(8'��mN��'E�`w� �@      #      x������ � �      �      x������ � �      �   {   x�+.�/J�70�p	�t7	�p�r
��4056
q���MM)-NT��,-N���4202�54�5�T00�20�21�3��043�60' �A��pk�̝�����\]��܁
�b���� z&�      
   2   x�+.�/J�70�p	�t7	�p�r
��4056
q��,-N����� ��      �      x������ � �            x������ � �            x������ � �            x������ � �          �   x����n�@���StO����U�j Q�)C`�r��ӗ�zr�mN����8p��N8e$Zo��c�+�����шr�se���B���Id6P��9�/(k���y��4tK+������ <ߣ�3#w��;�w{V0����ܓ�I���9\�ˊ��_�׮J�h�����{�g��k~���wt����`P4��Kb����e0�Yg}��;�J���K7      A      x������ � �      B      x������ � �     