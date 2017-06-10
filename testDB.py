import MySQLdb

db = MySQLdb.connect(host="sql8.freemysqlhosting.net",    # your host, usually localhost
                     user="sql8179497",         # your username
                     passwd="C9BtB7VMLW",  # your password
                     db="sql8179497")        # name of the data base

# you must create a Cursor object. It will let
#  you execute all the queries you need
cur = db.cursor()

# Use all the SQL you like
cur.execute("SELECT * FROM shape_info")

# print all the first cell of all the rows
for row in cur.fetchall():
    print row[0]

db.close()
