from flask import Flask
import os

app = Flask(__name__)

@app.route('/hello')
def hello():
    return "Halo dari kresna :)"

if __name__ == '__main__':
    debug_mode = os.environ.get("FLASK_DEBUG", "false").lower() == "true"
    app.run(host='0.0.0.0', port=5000, debug=debug_mode)