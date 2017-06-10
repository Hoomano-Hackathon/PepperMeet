import MySQLdb
import qi
import sys

class MySQLService:

    def __init__(self, session):
        self.i = 3
        self.db = MySQLdb.connect(host="localhost",  # your host, usually localhost
                             user="root",  # your username
                             passwd="",  # your password
                             db="pepper")  # name of the data base
        self.cur = self.db.cursor()
        pass

    def getShapeInfo(self):
        self.cur.execute("SELECT * FROM shape_info")

        # print all the first cell of all the rows
        for row in self.cur.fetchall():
            print row[2]
        pass

    def createShapeInfo(self):
        self.cur.execute("""INSERT INTO shape_info (id_face, zero,alpha,beta,sizeX,sizeY) VALUES (%s,%s,%s,%s,%s,%s)""",
                    (self.i, 0, 9.2, 5.222, 5.6, 6.5))
        self.db.commit()
        print "ca marche"
        self.i = self.i + 1
        pass

    def exit(self):
        self.db.close()


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