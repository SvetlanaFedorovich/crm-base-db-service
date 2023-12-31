--liquibase formatted sql
--changeSet dev_0002:002-01

CREATE TABLE sales
(
    id   BIGINT GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    client_id        BIGINT NOT NULL,
    product_id       BIGINT NOT NULL,
    quantity         INTEGER NOT NULL,
    sales_date DATE NOT NULL,
    FOREIGN KEY (client_id) REFERENCES clients(client_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

-- rollback DROP TABLE transactions;
