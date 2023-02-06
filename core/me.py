from flask import Blueprint, redirect, render_template

bp = Blueprint("me", __name__)


@bp.route("/")
def me():
    return render_template("me.html")