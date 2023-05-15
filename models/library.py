from db.db import sql

def all_books():
 return sql('SELECT * FROM books ORDER BY id')


