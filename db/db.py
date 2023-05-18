import psycopg2
import psycopg2.extras 
import os

# DB_URL = "dbname=library_system_db"

DB_URL = os.environ.get("DATABASE_URL", "dbname=library_system_db")

def sql(query, parameters=[]):
  connection = psycopg2.connect(DB_URL) # open connection
  cursor = connection.cursor(cursor_factory=psycopg2.extras.RealDictCursor) # we use cursor to run SQL commands
  cursor.execute(query, parameters) # begin transaction
  results = cursor.fetchall()
  connection.commit() # end transaction
  connection.close() # close connection
  return results