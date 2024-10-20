import mysql.connector
from mysql.connector import errorcode


def create_database():
    try:
        # Connect to MySQL server
        conn = mysql.connector.connect(
            host='localhost',
            user='your_username',
            password='your_password'
        )
        cursor = conn.cursor()

        try:
            cursor.execute("CREATE DATABASE IF NOT EXISTS alx_book_store")
            print("Database 'alx_book_store' created successfully!")
        except mysql.connector.Error as err:
            print(f"Failed creating database: {err}")
        finally:
            cursor.close()

    except mysql.connector.Error as err:

        if err.errno == errorcode.ER_ACCESS_DENIED_ERROR:
            print("Error: Incorrect username or password")

        elif err.errno == errorcode.ER_BAD_DB_ERROR:
            print("Error: Database does not exist")

        else:
            print(f"Error: {err}")
    else:
        conn.close()
