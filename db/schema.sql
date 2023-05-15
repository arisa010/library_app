CREATE DATABASE library_system_db;
\c library_system_db

CREATE TABLE books (
  id INTEGER PRIMARY KEY,
  title TEXT,
  image_url TEXT,
  author TEXT,
  publication_year INTEGER,
  is_available BOOLEAN,
  description TEXT,
);

INSERT INTO books(title, image_url, author, publication_year, is_available, description)
VALUES
  ('To Kill a Mockingbird', 'https://s2982.pcdn.co/wp-content/uploads/2015/07/To-Kill-a-Mockingbird-1st-ed.gif', 'Harper Lee', 1960, TRUE, 'A Pulitzer Prize-winning novel about racial injustice in a small Alabama town.'),
  ('1984', 'https://i0.wp.com/www.printmag.com/wp-content/uploads/2017/01/2a34d8_a6741e88335241308890543d203ad89dmv2.jpg?resize=500%2C815&ssl=1', 'George Orwell', 1949, TRUE, 'A dystopian novel set in a totalitarian society where the government has complete control over every aspect of citizens\' lives.'),
  ('The Catcher in the Rye', 'https://i0.wp.com/americanwritersmuseum.org/wp-content/uploads/2016/01/Catcher-in-the-Rye.jpg?w=223&ssl=1', 'J.D. Salinger', 1951, TRUE, 'A controversial novel about a teenage boy who is disillusioned with the adult world and struggles with his own identity.'),
  ('One Hundred Years of Solitude', 'https://s26162.pcdn.co/wp-content/uploads/2018/02/100_Years_First_Ed_Hi_Res-768x1153.jpg', 'Gabriel Garcia Marquez', 1967, TRUE, 'A novel that tells the multi-generational story of the Buendía family in the fictional town of Macondo.'),
  ('Brave New World', 'https://upload.wikimedia.org/wikipedia/en/6/62/BraveNewWorld_FirstEdition.jpg', 'Aldous Huxley', 1932, TRUE, 'A dystopian novel set in a future world where genetic engineering, conditioning, and drugs are used to maintain social stability.'),
  ('Animal Farm', 'https://wp.penguin.co.uk/wp-content/uploads/2021/08/Book13.jpg', 'George Orwell', 1945, TRUE, 'An allegorical novella that tells the story of a group of farm animals who rebel against their human farmer, hoping to create a society where the animals can be equal, free, and happy.'),
  ('Slaughterhouse-Five', 'https://s26162.pcdn.co/wp-content/uploads/2019/03/110268.jpg', 'Kurt Vonnegut', 1969, TRUE, 'A satirical novel that tells the story of Billy Pilgrim, a World War II veteran who has become "unstuck in time" and experiences his life out of chronological order.'),
  ('Fahrenheit 451', 'https://www.slate.com/content/dam/slideshows/arts/brow_beat/2012/06/06/ray-bradburys-fahrenheit-451-book-covers-through-time/jcr%3acontent/slideshow/0/images%252Fslides%252F1953-1st-edition.jpg', 'Ray Bradbury', 1953, TRUE, 'A dystopian novel set in a future American society where books are outlawed and "firemen" burn any that are found.'),
  

CREATE TABLE borrowed_books (
  id INTEGER PRIMARY KEY,
  book_id INTEGER,
  book_title TEXT,
  reguser_id INTEGER,
  borrow_date DATE,
  due_date DATE
 
); 

ALTER TABLE borrowed_books
DROP COLUMN due_date;
ADD COLUMN due_date;

CREATE TABLE users(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT,
  email TEXT
);

ALTER TABLE  users ADD COLUMN password_digest TEXT;


