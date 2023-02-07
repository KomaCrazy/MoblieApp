from flask import Flask , jsonify
from flask_cors import CORS 
from sub import *

app = Flask(__name__)
CORS(app)
@app.route("/")
def pageMain():
    return jsonify(callDB())

if __name__ == '__main__':
    app.run()