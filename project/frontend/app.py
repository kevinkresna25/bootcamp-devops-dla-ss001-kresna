import os
from flask import Flask, render_template
import requests

app = Flask(__name__)

BACKEND_URL = os.environ.get("BACKEND_URL", "http://backend:5000/hello")

@app.route('/')
def index():
    try:
        response = requests.get(BACKEND_URL)
        message = response.text
    except:
        message = "Gagal terhubung ke backend"

    return render_template("index.html", message=message)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=3000)
