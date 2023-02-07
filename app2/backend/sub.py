import sqlite3


class SetDB:
    def __init__(self, id, user, password) -> None:
        self.id = id
        self.user = user
        self.password = password


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
    

