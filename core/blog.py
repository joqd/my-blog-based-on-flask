from flask import Blueprint, flash, g
from flask import redirect, render_template
from flask import request, url_for, session

from core.db import get_db

bp = Blueprint("blog", __name__)


@bp.route("/blog")
def index():
    return render_template("blog/index.html")
