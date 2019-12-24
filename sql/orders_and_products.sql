create table orders_and_products (
	id INTEGER NOT NULL PRIMARY KEY,
  products_id INTEGER REFERENCES products(id) NOT NULL,
  orders_id INTEGER REFERENCES orders(id) NOT NULL,
  quantity SMALLINT NOT NULL CONSTRAINT positive_quantity CHECK (quantity > 0)
);
insert into orders_and_products (id, products_id, orders_id, quantity) values (1, 16, 3, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (2, 13, 23, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (3, 29, 23, 2);
insert into orders_and_products (id, products_id, orders_id, quantity) values (4, 30, 20, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (5, 16, 18, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (6, 3, 6, 2);
insert into orders_and_products (id, products_id, orders_id, quantity) values (7, 9, 3, 3);
insert into orders_and_products (id, products_id, orders_id, quantity) values (8, 26, 6, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (9, 3, 4, 2);
insert into orders_and_products (id, products_id, orders_id, quantity) values (10, 12, 22, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (11, 22, 29, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (12, 13, 26, 5);
insert into orders_and_products (id, products_id, orders_id, quantity) values (13, 1, 19, 4);
insert into orders_and_products (id, products_id, orders_id, quantity) values (14, 26, 29, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (15, 5, 27, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (16, 20, 19, 2);
insert into orders_and_products (id, products_id, orders_id, quantity) values (17, 27, 30, 10);
insert into orders_and_products (id, products_id, orders_id, quantity) values (18, 9, 22, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (19, 20, 7, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (20, 10, 21, 2);
insert into orders_and_products (id, products_id, orders_id, quantity) values (21, 1, 18, 2);
insert into orders_and_products (id, products_id, orders_id, quantity) values (22, 7, 19, 3);
insert into orders_and_products (id, products_id, orders_id, quantity) values (23, 9, 21, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (24, 11, 3, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (25, 14, 4, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (26, 5, 17, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (27, 20, 18, 2);
insert into orders_and_products (id, products_id, orders_id, quantity) values (28, 1, 16, 2);
insert into orders_and_products (id, products_id, orders_id, quantity) values (29, 8, 14, 1);
insert into orders_and_products (id, products_id, orders_id, quantity) values (30, 21, 11, 1);
