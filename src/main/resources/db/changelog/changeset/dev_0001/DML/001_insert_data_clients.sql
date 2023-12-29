--liquibase formatted sql
--changeSet dev_0001:001-02

INSERT INTO clients (full_name, address, payer_account_number, bank_details)
values ('Ivan', 'Gomel', '1234567', 'bank');



