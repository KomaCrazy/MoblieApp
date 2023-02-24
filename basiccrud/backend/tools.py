import sqlite3
from flask import Flask , request , jsonify
from flask_cors import CORS 

app = Flask(__name__)
CORS(app)
host = '0.0.0.0'
port = 5000


path = "./sql.db"


class EditName :
    def __init__(self,id,name) -> None:
        self.id = id
        self.name = name
    def __str__(self) -> str:
        self.name
        
class sqlAdd :
    def __init__(self,user,age) -> None:
        self.user = user 
        self.age = age
        
class sqlRead :
    def __init__(self,id, user,age) -> None:
        self.id = id 
        self.user = user
        self.age = age
        

def sqlshow():
    ListRaw = []
    with sqlite3.connect(path) as conn :
        for i in conn.execute("select * from db"):
            _data = sqlRead(i[0],i[1],i[2])
            ListRaw.append({"id":_data.id,"user":_data.user,"age":_data.age})
    return ListRaw

def sqledit(raw):
    _edit = EditName(raw["id"],raw["name"])
    with sqlite3.connect(path) as conn : 
        cmd = f'update db set user="{_edit.name}"where id={_edit.id} '
        conn.execute(cmd)
        return {'status':'success'}


def sqladd(raw):
    _new = sqlAdd(raw["name"],raw["age"])
    with sqlite3.connect(path) as conn:
        cmd = f'insert into db(user,age)values("{_new.user}","{_new.age}")'
        conn.execute(cmd)
    return {"status":"success"}
    
    
class SqlDel :
    def __init__(self,id) -> None:
        self.id = id
    
def sqldel(raw):
    _raw = SqlDel(raw["id"])
    with sqlite3.connect(path) as conn :
        _cmd = f'delete from db where id={_raw.id};'
        conn.execute(_cmd)
    return {"status":"success"}