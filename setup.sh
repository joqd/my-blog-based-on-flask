if !(type tmux >/dev/null 2>/dev/null); then
    echo "Tmux is not installed!"
    echo "Run it: sudo apt install tmux"
    exit
fi

tmux kill-session -t my-blog-based-on-flask
tmux new-session -d -s my-blog-based-on-flask 'python3 -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt && python3 wsgi.py';
tmux split-window;
tmux send 'npx tailwindcss -i ./static/src/style.css -o ./static/css/main.css --watch' ENTER;
tmux a;