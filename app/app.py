from flask import Flask, render_template, request, redirect
from controller import *

app = Flask(__name__)

@app.route("/")
def hello_world():
    return render_template("index.html")

@app.route("/guarda")
def cargarmedicacion():
    listado = Consulta()
    return render_template("guarda.html", listado=listado)

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

#@app.route("/editar_med", methods=['GET'])
#def cargarMed():
 #   return render_template("form_nueva_med.html")

#@app.route("/borrar_med", methods=['GET'])
#def cargarMed():
#    return render_template("form_nueva_med.html")