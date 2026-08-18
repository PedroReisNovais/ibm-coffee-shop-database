-- IBM Coffee Shop Database Project
-- Generated schema used in Task 6.

BEGIN;

DROP TABLE IF EXISTS public.staff CASCADE;
DROP TABLE IF EXISTS public.sales_outlet CASCADE;
DROP TABLE IF EXISTS public.customer CASCADE;
DROP TABLE IF EXISTS public.sales_detail CASCADE;
DROP TABLE IF EXISTS public.product CASCADE;
DROP TABLE IF EXISTS public.product_type CASCADE;
DROP TABLE IF EXISTS public.sales_transaction CASCADE;

CREATE TABLE public.staff
(
    staff_id integer,
    first_name character varying(50),
    last_name character varying(50),
    "position" character varying(50),
    start_date date,
    location character varying(5),
    PRIMARY KEY (staff_id)
);

CREATE TABLE public.sales_outlet
(
    sales_outlet_id integer,
    sales_outlet_type character varying(20),
    store_square_feet integer,
    store_address character varying(100),
    store_city character varying(50),
    store_state_province character varying(50),
    store_telephone character varying(15),
    store_postal_code character varying(10),
    store_longitude numeric,
    store_latitude numeric,
    manager integer,
    neighborhood character varying(50),
    PRIMARY KEY (sales_outlet_id)
);

CREATE TABLE public.customer
(
    customer_id integer,
    home_store integer,
    customer_first_name character varying(50),
    customer_email character varying(100),
    customer_since date,
    loyalty_card_number character varying(20),
    birthdate date,
    gender character varying(1),
    birth_year integer,
    PRIMARY KEY (customer_id)
);

CREATE TABLE public.product_type
(
    product_type_id integer,
    product_category character varying(50),
    product_type character varying(50),
    PRIMARY KEY (product_type_id)
);

CREATE TABLE public.product
(
    product_id integer,
    product_name character varying(100),
    description character varying(500),
    price numeric(10,2),
    product_type_id integer,
    PRIMARY KEY (product_id),
    FOREIGN KEY (product_type_id) REFERENCES public.product_type(product_type_id)
);

CREATE TABLE public.sales_transaction
(
    transaction_id integer,
    transaction_date date,
    transaction_time time without time zone,
    sales_outlet_id integer,
    staff_id integer,
    customer_id integer,
    PRIMARY KEY (transaction_id)
);

CREATE TABLE public.sales_detail
(
    sales_detail_id integer,
    transaction_id integer,
    product_id integer,
    quantity integer,
    price numeric(10,2),
    PRIMARY KEY (sales_detail_id),
    FOREIGN KEY (transaction_id) REFERENCES public.sales_transaction(transaction_id),
    FOREIGN KEY (product_id) REFERENCES public.product(product_id)
);

COMMIT;