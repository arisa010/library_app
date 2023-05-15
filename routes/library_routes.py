from flask import Blueprint
from controllers.library_controller import home, index

library_routes = Blueprint('library_routes', __name__)

library_routes.route('')(home)
library_routes.route('/index')(index)