from sub import * 
from flask import Flask , jsonify , request as req
from flask_cors import CORS 
app = Flask(__name__)
CORS(app)


@app.route("/read")
def PageRead():
    return jsonify(ReadDB())
    


@app.route('/login')
def PageLogin():
    return jsonify(LoginDB(req.args))

if __name__ == "__main__":
    app.run()