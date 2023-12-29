--liquibase formatted sql
--changeSet dev_0001:003-01

INSERT INTO transactions (client_id, product_id, quantity, transaction_date)
values ((SELECT client_id FROM clients WHERE full_name = 'Ivan' AND address = 'Gomel'),
        (SELECT product_id FROM products WHERE product_name = 'IPhone pro max'),
        1,
        CURRENT_DATE);