create table customer (customer_id varchar primary key, customer_name varchar);

create table "order"(order_id varchar, customer_id varchar references customer);