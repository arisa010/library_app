CREATE DATABASE library_system_db;
\c library_system_db

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  image_url TEXT,
  author TEXT,
  publication_year INTEGER,
  is_available BOOLEAN,
);

INSERT INTO books(title, image_url, author, publication_year, is_available)
VALUES
  ('harry potter', "")


CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

ALTER TABLE  users ADD COLUMN password_digest TEXT;


