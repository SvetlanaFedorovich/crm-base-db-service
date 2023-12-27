--liquibase formatted sql
--changeSet dev_0001:002-02

INSERT INTO products (product_name, price, quantity, unit)
values ('IPhone pro max', '1200', '2', 'ps');



