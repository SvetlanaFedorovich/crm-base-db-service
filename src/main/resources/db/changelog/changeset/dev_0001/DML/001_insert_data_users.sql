--liquibase formatted sql
--changeSet dev_0001:001-02

INSERT INTO users (first_name, sur_name, middle_name, email)
values ('Ivan', 'Ivanov', 'Ivanovich', 'ivano@mail.ru');



