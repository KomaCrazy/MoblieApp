import sqlite3

class SetDB:
    def __init__(self, id, user, password) -> None:
        self.id = id
        self.user = user
        self.password = password
    def __str__(self):
        self.user,
        self.password
        


def LoginDB(raw):
    _db = SetDB("0",raw["user"],raw["password"])
    _cli = f'select * from db where user="{_db.user}" and password="{_db.password}"'
    list = (_db.user)
    print(list)
    _db = sqlite3.connect('db.db')
    __db = _db.cursor()
    print(_cli)
    for db in __db.execute(_cli):
        print(db)
        _db =  SetDB(db[0],db[1],db[2])
        return {"id":_db.id,"user":str(_db.user),"password":str(_db.password)}
    
    
    
def ReadDB():
    list = []
    conn = sqlite3.connect('db.db')
    conn = conn.cursor()
    for i in conn.execute("select * from db"):
        db = SetDB(i[0], i[1], i[2])
        list.append(
            {
                "id":db.id,
                "user":db.user,
                "password":db.password,
            }
        )
    return list
    

