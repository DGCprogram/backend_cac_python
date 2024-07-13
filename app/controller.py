import pymysql
from db import conectarbd

def Consulta():
    #conexion mysql
    conexion= conectarbd()
    listado = []
    with conexion.cursor() as cursor:
        # Create a new record
        sql = "SELECT * FROM medicacionguarda"
        cursor.execute(sql)
        listado = cursor.fetchall()
        return listado
    
def cargar_nuevo_producto(hc, paciente, descripcion, cantidad, vencimiento):
    conexion = conectarbd()
    with conexion.cursor() as cursor:
        query = "INSERT INTO medicacionguarda (HC, Paciente, Medicacion, Cantidad, Vencimiento) VALUES (%s, %s, %s, %s, %s)"
        hc = int(hc)
        cantidad = int(cantidad)
        print(hc, type(hc))
        cursor.execute(query,(hc, paciente, descripcion, cantidad, vencimiento))
        result = cursor
        return result
    
