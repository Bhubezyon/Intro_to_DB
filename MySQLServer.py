#!/user/bin/env python3
import mysql.connector # type: ignore

def create_database():
    try:
         # Connect to MySQL Server (adjust credentials as needed)
         connection = mysql.connector.connect(host='localhost', user='root', password='@2pac$666SQL')
    if connection.is_connected():
      cursor = connection.cursor()
      cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
    'print("Database 'alx_book_store' created successfully!")

except Error as e:
mysql.connector.Error
print(f"Error while connecting to MySQL: {e}")
finally: if'cursor' in locals():
cursor.close() # type: ignore
if 'connection' in locals():
    connection.close()

    if __name__ == "__main__":
        create_database()








