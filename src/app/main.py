from flask import Flask

app = Flask(__name__)


@app.route("/")
def index():
    return "Server is up and running", 200


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=1447)
