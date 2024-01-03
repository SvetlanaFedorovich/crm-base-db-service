--liquibase formatted sql
--changeSet dev_0002:004-01

INSERT INTO products (product_name, price, quantity, unit)
values ('Xiaomi', '1300', '2', 'ps'),
('MackBook', '4500', '5', 'ps');



