from flask import render_template, request, redirect, session
# from models.library import home
from services.session_info import current_user

def index():
    # library = home()
    return render_template('library/home.html', current_user=current_user())