from flask import Flask

app = Flask(__name__)

@app.route("/health")
def health():
    return "OK"

@app.route("/")
def hello():
    return "Hello, Flask!"


if __name__ == "__main__":
    app.run(debug=True,host='0.0.0.0')
