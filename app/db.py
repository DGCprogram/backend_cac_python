#importar pymysql
import pymysql

#conectar con el servidor
def conectarbd(): 
    host= "localhost"
    user= "root"
    clave="B4S3D3D4T0S2223lul?"
    db="bdo1"
    return pymysql.connect(host=host, user=user,password=clave, database=db)

