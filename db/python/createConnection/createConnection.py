import sqlite3
from sqlite3 import Error

def createConnection(dbFile):
    """ 
        create a database connection to the SQLite database
        specified by db_file
    """
    conn = None
    try:
        conn = sqlite3.connect(dbFile)
    except Error as e:
        print(e)
    return conn