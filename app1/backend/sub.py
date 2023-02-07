import sqlite3

class setData :
    def __init__(self,id,user,password):
        self.id = id
        self.user = user
        self.password = password
    def __str__(self):
        self.user,
        self.password


def callDB():
    conn = sqlite3.connect('db.sqlite')
    conn = conn.cursor()
    db_list = []
    for i in conn.execute('select * from db'):
        db = setData(i[0],i[1],i[2])
        db_list.append({
        "id":db.id,
        "user":db.user,
        "password":str(db.password)        
        })
    return (db_list)
