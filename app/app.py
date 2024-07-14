from flask import Flask, render_template, request, redirect
from controller import *

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("index.html")

#select
@app.route("/guarda")
def cargarmedicacion():
    listado = Consulta()
    return render_template("guarda.html", listado=listado)

#insert
@app.route("/cargar_med", methods=['GET'])
def cargarMed():
    return render_template("form_nueva_med.html")

@app.route("/insertar_med", methods=['POST'])
def insert_prod():
    hc_nueva= request.form['hc']
    pte_nuevo=request.form['paciente']
    descripcion_nueva= request.form['descripcion']
    cant_nueva= request.form['cantidad']
    vto_nuevo= request.form['vencimiento']
    cargar_nuevo_producto(hc_nueva, pte_nuevo, descripcion_nueva, cant_nueva, vto_nuevo)
    return redirect("/guarda")

@app.route("/prevencion")
def prevencionRoute():
    return render_template("prevencion.html")

@app.route("/servicios")
def serviciosRoute():
    return render_template("servicios.html")

#Update
@app.route("/editar_med/<int:id_>")
def editar_med(id_):
    title = "Editar Medicacion"
    pte_por_id= obtener_datos_por_id(id_)
    return render_template("form_edit_med.html", title= title, medicacion=pte_por_id)
    

@app.route("/update_med", methods=['POST'])
def update_guarda():
    id_edit= request.form['pte_por_id']
    hc_edit= request.form['hc']
    pte_edit=request.form['paciente']
    descripcion_edit= request.form['descripcion']
    cant_edit= request.form['cantidad']
    vto_edit= request.form['vencimiento']
    actualizar_info(hc_edit, pte_edit, descripcion_edit, cant_edit, vto_edit, id_edit)
    return redirect("/guarda")

#delete
@app.route("/eliminar_med/<int:id_>")
def delete_med(id_):
    eliminar_med(id_)
    return redirect ("/guarda")