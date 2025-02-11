import mysql.connector


if __name__ == "__main__":
    myDb = mysql.connector.connect(
        host='sql3.freesqldatabase.com',
        user='sql3515916',
        password='fWfgyAagH1',
        database='sql3515916'
    )

    myCursor = myDb.cursor()

    try:
        myCursor.execute("CREATE TABLE customers (name VARCHAR(255), address VARCHAR(255));")
        myCursor.close()
        myDb.close()

    except:
        myCursor.close()
        myDb.close()
        print("ERROR: table was not created")
