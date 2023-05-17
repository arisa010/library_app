from db.db import sql

def all_books():
 return sql('SELECT * FROM books ORDER BY id')


def get_book(id):
  books = sql("SELECT * FROM books WHERE id = %s", [id])
  return books[0]

def create_book(title, image_url):
  sql('INSERT INTO books(title, image_url) VALUES(%s, %s) RETURNING *', [title, image_url])

def update_book(id, title, image_url):
  sql('UPDATE books SET title=%s, image_url=%s WHERE id=%s RETURNING *', [title, image_url, id])

def delete_book(id):
  sql('DELETE FROM books WHERE id=%s RETURNING *', [id])

def comment_under_book(book, comment):
  sql('INSERT INTO comments (book_id, comment) VALUES (%s, %s)', [book['id'], comment])
