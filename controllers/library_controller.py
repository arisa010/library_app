from flask import render_template, request, redirect, session
from models.library import all_books
from services.session_info import current_user

def home():
    books = all_books()
    return render_template('library/home.html', books=books)
# current_user=current_user()
def index():
    return render_template('library/index.html')