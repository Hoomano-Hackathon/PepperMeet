import MySQLdb
import qi
import sys

class MySQLService:

    def __init__(self, session):
        db = MySQLdb.connect(host="sql8.freemysqlhosting.net",  # your host, usually localhost
                             user="sql8179497",  # your username
                             passwd="C9BtB7VMLW",  # your password
                             db="sql8179497")  # name of the data base
        self.cur = db.cursor()
        pass

    def getShapeInfo(self):
        cur.execute("SELECT * FROM shape_info")

        # print all the first cell of all the rows
        for row in self.cur.fetchall():
            print row[2]
        pass

    def post(self):
        cur.execute("""INSERT INTO known_face (zero,alpha,beta,sizeX,sizeY) VALUES (%s,%s,%s,%s,%s)""",
                    (0, 9.2, 5.222, 5.6, 6.5))
        db.commit()
        pass

    def exit(self):
        db.close()


if __name__=='__main__':
    # create an application
    app = qi.Application()
    app.start()

    s = app.session
    sqlService = MySQLService(s)


    # let's register our service with the name "foo"
    id = s.registerService("mysql", sqlService)

    # let the application run
    app.run()