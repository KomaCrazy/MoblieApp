from sub import * 
from flask import Flask , jsonify
from flask_cors import CORS 
app = Flask(__name__)
CORS(app)


@app.route("/read")
def PageRead():
    return jsonify(ReadDB())

if __name__ == "__main__":
    app.run()