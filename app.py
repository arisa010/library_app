import os
from flask import Flask, redirect
from routes.library_routes import library_routes
from routes.users_routes import users_routes
from routes.sessions_routes import sessions_routes

SECRET_KEY = os.environ.get("FLASK_SECRET_KEY", "pretend key for testing only")

app = Flask(__name__)
app.config['SECRET_KEY'] = SECRET_KEY

app.register_blueprint(library_routes, url_prefix='/library' )
app.register_blueprint(users_routes, url_prefix='/users')
app.register_blueprint(users_routes, name="some_unique_name", url_prefix='/sessions')

@app.route('/')
def index():
    return redirect('/library')