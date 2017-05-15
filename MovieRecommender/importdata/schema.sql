DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS medicine;
DROP TABLE IF EXISTS genres;
DROP TABLE IF EXISTS medicine_genres;
DROP TABLE IF EXISTS sellers;
DROP TABLE IF EXISTS medicine_sellers;

CREATE TABLE users (
  username TEXT PRIMARY KEY,
  password TEXT,
  CHECK (username SIMILAR TO '[a-zA-Z0-9_]+' AND username NOT LIKE 'movielens_%')
);

CREATE TABLE medicine (
  medicine_id INT PRIMARY KEY,
  price  numeric,
  num  INT,
  name    TEXT
);

CREATE TABLE genres (
  genres TEXT PRIMARY KEY
);

CREATE TABLE medicine_genres (
  medicine_id INT REFERENCES medicine,
  genres    TEXT REFERENCES genres
);

CREATE TABLE sellers (
  seller_name TEXT PRIMARY KEY
);

CREATE TABLE medicine_sellers (
  medicine_id INT REFERENCES medicine,
  seller_name TEXT REFERENCES sellers
);