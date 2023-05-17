from flask import render_template, request, redirect, session
from models.library import all_books,  get_book, create_book, update_book, delete_book, comment_under_book
from services.session_info import current_user

def home():
    books = all_books()
    return render_template('library/home.html', books=books, current_user=current_user())

def index():
    return render_template('library/index.html')

def new():
      return render_template('library/new.html')

def create():
  title = request.form.get('title')
  image_url = request.form.get('image_url')
  create_book(title, image_url)
  return redirect('/')

def edit(id):
  book = get_book(id)
  return render_template('library/edit.html', book=book)

def update(id):
  title = request.form.get('title')
  image_url = request.form.get('image_url')
  update_book(id, title, image_url)
  return redirect('/')

def delete(id):
  delete_book(id)
  return redirect('/')

def add_comment(id):
  comment = request.form.get('comment')
  book = get_book(id)
  comment_under_book(book, comment)
  return redirect('/')