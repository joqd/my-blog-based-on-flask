if !(type tmux >/dev/null 2>/dev/null); then
    echo "Tmux is not installed!";
    echo "Run it: sudo apt install tmux";
    exit;
fi

if [ ! -d ".venv" ]; then
    "python3 -m venv .venv && source .venv/bin/activate && pip install -r requirements.txt";
fi

export FLASK_DEBUG=true;

tmux kill-session -t my-blog-based-on-flask;
tmux new-session -d -s my-blog-based-on-flask 'source .venv/bin/activate && flask --app core run --reload ';
tmux split-window;
tmux send 'npx tailwindcss -i ./core/static/src/input.css -o ./core/static/css/main.css --watch' ENTER;
tmux a;