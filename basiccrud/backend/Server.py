from tools import * 


@app.route("/")
def Page():
    return '0'

@app.route("/read")
def PageRead():
    return jsonify(sqlshow())

@app.route("/add")
def PageAdd():
    return jsonify(sqladd(request.args))

@app.route("/update")
def PageEdit():
    return jsonify(sqledit(request.args))

@app.route("/del")
def PageDel():
    return jsonify(sqldel(request.args))



if __name__ == '__main__' :
    app.run(host,port)
