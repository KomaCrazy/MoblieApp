from flask import Flask , jsonify
from flask_cors import CORS 

app = Flask(__name__)




@app.route("/")
def pageMain():
    return jsonify({"id"})