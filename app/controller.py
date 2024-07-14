import pymysql
from db import conectarbd

#Consult
def Consulta():
    #conexion mysql
    conexion= conectarbd()
    listado = []
    with conexion.cursor() as cursor:
        # Create a new record
        sql = "SELECT * FROM medicacionguarda"
        cursor.execute(sql)
        listado = cursor.fetchall()
        conexion.commit()
        conexion.close()
        return listado
#Insert    
def cargar_nuevo_producto(hc, paciente, descripcion, cantidad, vencimiento):
    conexion = conectarbd()
    with conexion.cursor() as cursor:
        query = "INSERT INTO medicacionguarda (HC, Paciente, Medicacion, Cantidad, Vencimiento) VALUES (%s, %s, %s, %s, %s)"
        hc = int(hc)
        cantidad = int(cantidad)
        cursor.execute(query,(hc, paciente, descripcion, cantidad, vencimiento))
        result = cursor
        conexion.commit()
        conexion.close()
        return result
#Update 
def obtener_datos_por_id(id):
    conexion = conectarbd()
    med= None
    with conexion.cursor() as cursor:
        cursor.execute( "SELECT * FROM medicacionguarda WHERE id_=%s", (id) )
        med= cursor.fetchone()
    conexion.close()
    return med   

def actualizar_info(hc, paciente, medicacion, cantidad, vencimiento,id):
    conexion= conectarbd()
    with conexion.cursor() as cursor:
        cursor.execute("UPDATE medicacionguarda SET hc=%s, paciente=%s, medicacion=%s, cantidad=%s, vencimiento=%s WHERE id_=%s", (hc, paciente, medicacion, cantidad, vencimiento,id))
        result = cursor
        conexion.commit()
        conexion.close()
        return result
#delete
def eliminar_med(id_): 
    conexion=conectarbd()
    with conexion.cursor() as cursor:
        cursor.execute("DELETE FROM medicacionguarda WHERE id_=%s", (id_))
        result= cursor
        conexion.commit()
        conexion.close()    
        return result
