import MySQLdb
import qi
import sys

class MySQLService:

    def __init__(self, session):
        self.i = 7
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

    def createShapeInfo(self, zero, alpha, beta, sizeX, sizeY):
        self.cur.execute("INSERT INTO shape_info (id_face, zero,alpha,beta,sizeX,sizeY) VALUES (%(id)s, %(zero)s, %(alpha)s, %(beta)s, %(sizeX)s, %(sizeY)s)"
                         % { 'id': self.i, 'zero': zero, 'alpha': alpha, 'beta': beta, 'sizeX': sizeX, 'sizeY': sizeY})
        self.db.commit()
        self.i = self.i + 1
        print "Shape Info created"
        pass

    def createUser(self, nom):
        self.cur.execute("INSERT INTO user (name) VALUES ('"+nom+"')")
        self.db.commit()
        print "User added"
        pass

    def createResponse(self, answer, id_user, id_question):
        self.cur.execute("INSERT INTO reponse (content, user_id, question_id) VALUES ('"+answer+"', %(user_id)s, %(question_id)s)" %
                         { 'user_id': id_user, 'question_id': id_question})
        self.db.commit()
        print "Response added"
        pass

    def createQuestion(self, label, content):
        self.cur.execute("INSERT INTO question (label, content) VALUES ('"+label+"', '"+content+"')")
        self.db.commit()
        print "Question added"
        pass

    def createKnownFace(self, id_shape_info, id_extra_info, id_user):
        self.cur.execute("INSERT INTO known_face (shape_info, extra_info, id_user) VALUES (%(shape_info_id)s, %(extra_info_id)s, %(user_id)s)" %
            {'shape_info_id': id_shape_info, 'extra_info_id': id_extra_info, 'user_id': id_user})
        self.db.commit()
        print "Face created"
        pass

    def getAllResponsesByName(self, name):
        #self.cur.execute("select id_user from user WHERE name = '"+name+"'")
        self.cur.execute("SELECT * FROM reponse WHERE user_id = (select id_user from user WHERE name = '"+name+"')")
        data = self.cur.fetchall()
        print("Responses retrieved")
        return data
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