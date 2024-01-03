--liquibase formatted sql
--changeSet dev_0002:003-01

INSERT INTO sales (client_id, product_id, quantity, sales_date)
values ((SELECT client_id FROM clients WHERE full_name = 'Ivan' AND address = 'Gomel'),
        (SELECT product_id FROM products WHERE product_name = 'IPhone pro max'),
        1,
        CURRENT_DATE),
       ((SELECT client_id FROM clients WHERE full_name = 'Ivan' AND address = 'Gomel'),
        (SELECT product_id FROM products WHERE product_name = 'Xiaomi'),
        1,
        '2023-11-11'),
       ((SELECT client_id FROM clients WHERE full_name = 'Ivan' AND address = 'Gomel'),
        (SELECT product_id FROM products WHERE product_name = 'MackBook'),
        1,
        '2023-12-26');