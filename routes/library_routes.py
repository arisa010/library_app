from flask import Blueprint
from controllers.library_controller import home, index, new, create, edit, update, delete, add_comment, read_more

library_routes = Blueprint('library_routes', __name__)

library_routes.route('')(home)
library_routes.route('/index')(index)

library_routes.route('/new')(new)
library_routes.route('/new', methods=['POST'])(create)
library_routes.route('/<id>/edit')(edit)
library_routes.route('/<id>', methods=["POST"])(update)
library_routes.route('/<id>/delete', methods=["POST"])(delete)
library_routes.route('/<id>/comments', methods=["POST"])(add_comment)
library_routes.route('/<id>/')(read_more)