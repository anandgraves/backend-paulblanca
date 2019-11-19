create table orders_and_products (
	id INTEGER NOT NULL PRIMARY KEY,
  products_id INTEGER REFERENCES products(id) NOT NULL,
  orders_id INTEGER REFERENCES orders(id) NOT NULL
);
insert into orders_and_products (id, products_id, orders_id) values (1, 16, 3);
insert into orders_and_products (id, products_id, orders_id) values (2, 13, 23);
insert into orders_and_products (id, products_id, orders_id) values (3, 29, 23);
insert into orders_and_products (id, products_id, orders_id) values (4, 30, 20);
insert into orders_and_products (id, products_id, orders_id) values (5, 16, 18);
insert into orders_and_products (id, products_id, orders_id) values (6, 3, 6);
insert into orders_and_products (id, products_id, orders_id) values (7, 9, 3);
insert into orders_and_products (id, products_id, orders_id) values (8, 26, 6);
insert into orders_and_products (id, products_id, orders_id) values (9, 3, 4);
insert into orders_and_products (id, products_id, orders_id) values (10, 12, 22);
insert into orders_and_products (id, products_id, orders_id) values (11, 22, 29);
insert into orders_and_products (id, products_id, orders_id) values (12, 13, 26);
insert into orders_and_products (id, products_id, orders_id) values (13, 1, 19);
insert into orders_and_products (id, products_id, orders_id) values (14, 26, 29);
insert into orders_and_products (id, products_id, orders_id) values (15, 5, 27);
insert into orders_and_products (id, products_id, orders_id) values (16, 20, 19);
insert into orders_and_products (id, products_id, orders_id) values (17, 27, 30);
insert into orders_and_products (id, products_id, orders_id) values (18, 9, 22);
insert into orders_and_products (id, products_id, orders_id) values (19, 20, 7);
insert into orders_and_products (id, products_id, orders_id) values (20, 10, 21);
insert into orders_and_products (id, products_id, orders_id) values (21, 1, 18);
insert into orders_and_products (id, products_id, orders_id) values (22, 7, 19);
insert into orders_and_products (id, products_id, orders_id) values (23, 9, 21);
insert into orders_and_products (id, products_id, orders_id) values (24, 11, 3);
insert into orders_and_products (id, products_id, orders_id) values (25, 14, 4);
insert into orders_and_products (id, products_id, orders_id) values (26, 5, 17);
insert into orders_and_products (id, products_id, orders_id) values (27, 20, 18);
insert into orders_and_products (id, products_id, orders_id) values (28, 1, 16);
insert into orders_and_products (id, products_id, orders_id) values (29, 8, 14);
insert into orders_and_products (id, products_id, orders_id) values (30, 21, 11);
