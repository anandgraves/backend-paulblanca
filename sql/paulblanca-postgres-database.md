CREATE TABLE series (
  id INTEGER NOT NULL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  subtitle VARCHAR(100) NOT NULL,
  quantity INTEGER NOT NULL,
  year DATE NOT NULL,
  description TEXT NOT NULL,
  dimensions VARCHAR(50),
  medium VARCHAR(50)
);

CREATE TABLE country (
  id BIGINT NOT NULL PRIMARY KEY,
  country VARCHAR(60) NOT NULL
);

CREATE TABLE products (
  id INTEGER NOT NULL PRIMARY KEY,
  series_id INTEGER REFERENCES series(id),
  title VARCHAR(100) NOT NULL,
  subtitle VARCHAR(100),
  description TEXT,
  dimensions VARCHAR(50),
  medium VARCHAR(50),
  inventory INTEGER NOT NULL,
  price INTEGER NOT NULL,
  photo_small_url VARCHAR(255) NOT NULL,
  photo_medium_url VARCHAR(255) NOT NULL,
  photo_large_url VARCHAR(255) NOT NULL
);

CREATE TABLE orders (
  id INTEGER NOT NULL PRIMARY KEY,
  country_id INTEGER REFERENCES countries(id),
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(80) NOT NULL,
  street_address1 TEXT NOT NULL,
  street_address2 TEXT,
  province TEXT NOT NULL,
  postal_code VARCHAR(7) NOT NULL,
  city TEXT NOT NULL,
  email_address TEXT UNIQUE NOT NULL,
  phone_number VARCHAR(50),
  company VARCHAR(80),
  payment_timestamp TIMESTAMP NOT NULL,
  payment_method payment_method_type NULL,
  payment_status payment_status_type NOT NULL
);

CREATE TABLE orders_and_products (
  id INTEGER NOT NULL PRIMARY KEY,
  products_id INTEGER REFERENCES products(id) NOT NULL,
  orders_id INTEGER REFERENCES orders(id) NOT NULL
);

CREATE TYPE payment_status_type AS ENUM ('inactive', 'pending', 'complete');
CREATE TYPE payment_method_type AS ENUM ('visa', 'mastercard', 'ideal', 'bitcoin');

ALTER TABLE products ADD CONSTRAINT price_constraint CHECK(price > 0);
ALTER TABLE products ADD CONSTRAINT inventory_constraint CHECK(inventory >= 0);
ALTER TABLE serie ADD CONSTRAINT edition_constraint CHECK(quantity > 0);
