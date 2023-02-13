import requests
from flask_cors import *
from flask  import*
import json
import mysql.connector
app=Flask(__name__)
cros=CORS(app)
app.config['CORS_HEADERS'] ='Content-Type'
@app.route('/',methods=['POST'],strict_slashes=False)
def otp():
    import random
    x=random.randint(1000,9999)
    value=str(x)
    return str(x)
@app.route('/students_api_1',methods=['POST'],strict_slashes=False)
def student_api_1():
    a=request.json
    mydb=mysql.connector.connect(host="localhost",user="root",password="",database="students_api")
    mycursor =mydb.cursor()
    e="insert into students_api_1(Rollno,Name,Email_id)values('%s','%s','%s')"%(a["rollno"],a["name"],a["email"])
    mycursor.execute(e)
   
    mydb.commit()
    e="select * from students_api_1"
    mycursor.execute(e)
    r=mycursor.fetchall()
    
    return  json.dumps(r)
@app.route('/students_api_2',methods=['POST'],strict_slashes=False)
def student_api_2():
    a=request.json
    mydb=mysql.connector.connect(host="localhost",user="root",password="",database="students_api")
    mycursor =mydb.cursor()
    e="insert into students_api_2(Rollno,Father_name,Mothers_name,city)values('%s','%s','%s','%s')"%(a["rollno"],a["father_name"],a["mother_name"],a["city"])
    mycursor.execute(e)
    
    mydb.commit()
    e="select * from students_api_2"
    mycursor.execute(e)
    r=mycursor.fetchall()
   
    return  json.dumps(r)

@app.route('/students_api',methods=['POST'],strict_slashes=False)
def student_api():
    a=request.json
    mydb=mysql.connector.connect(host="localhost",user="root",password="",database="students_api")
    mycursor =mydb.cursor()
    e="select a1.Rollno,a1.Name,a1.Email_id,a2.Father_name,a2.Mothers_name,a2.city from students_api_1 a1 join students_api_2 a2 on a1.Rollno=a2.Rollno where a1.Rollno='%s'" %(a["rollno"])
    print(e)
    mycursor.execute(e)
    r=mycursor.fetchall()
   
    return  json.dumps(r)
if __name__=='__main__':
    app.run(debug=True)