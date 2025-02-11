import mysql.connector


class SQLDatabase:
    def __init__(self, host_name: str, user_name: str, password_name: str, database_name: str):
        self.host = host_name
        self.user_name = user_name
        self.password = password_name
        self.name = database_name

    def get_connection(self):
        return mysql.connector.connect(
            host=self.host,
            user=self.user_name,
            password=self.password,
            database=self.name
        )

    def execute_query(self, query):
        # establishes connections
        connection = self.get_connection()
        cursor = connection.cursor()

        cursor.execute("CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255))")  # executes query

        # close connections
        cursor.close()
        connection.close()

    # prints all the tables within the database
    def display_tables(self):
        connection = self.get_connection()  # establishes a connection
        cursor = connection.cursor()  # instantiates a cursor

        cursor.execute("SHOW TABLES")

        # displays each table within the database
        for table in cursor:
            print(table)

        # closes connections
        cursor.close()
        connection.close()


class SQLTable:
    def __init__(self, tables_database: SQLDatabase, name: str):
        self.table_db = tables_database
        self.name = name


if __name__ == "__main__":

    dbConnect = mysql.connector.connect(
            host='sql3.freesqldatabase.com',
            user='sql3515916',
            password='fWfgyAagH1',
            database='sql3515916'
        )

    cursor = dbConnect.cursor()

    cursor.execute("CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255))")

    cursor.close()
    dbConnect.close()
