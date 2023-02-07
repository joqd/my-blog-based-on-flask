from flask import Blueprint, render_template
from core.auth import login_required

bp = Blueprint("status", __name__)


@bp.route("/status")
@login_required
def status():
	return render_template("status/index.html")