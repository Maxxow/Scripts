from flask import Flask, request, jsonify, render_template

from Arbol import Nodo

app = Flask(__name__)
  # Habilitar CORS para permitir peticiones desde el frontend

# Servir el archivo HTML
@app.route("/")
def index():
    return render_template("index.html")

def buscar_solucion(estado_inicial, solucion, lifo=True):
    solucionado = False
    nodos_visitados = []
    nodos_frontera = []
    nodoInicial = Nodo(estado_inicial)
    nodos_frontera.append(nodoInicial)
    
    while (not solucionado) and len(nodos_frontera) != 0:
        nodo = nodos_frontera.pop() if lifo else nodos_frontera.pop(0)  # LIFO o FIFO
        nodos_visitados.append(nodo)
        
        if nodo.get_datos() == solucion:
            solucionado = True
            return nodo
        else:
            dato_nodo = nodo.get_datos()

            hijo_izquierdo = Nodo([dato_nodo[1], dato_nodo[0], dato_nodo[2], dato_nodo[3]])
            hijo_izquierdo.padre = nodo
            if not hijo_izquierdo.en_lista(nodos_visitados) and not hijo_izquierdo.en_lista(nodos_frontera):
                nodos_frontera.append(hijo_izquierdo)

            hijo_central = Nodo([dato_nodo[0], dato_nodo[2], dato_nodo[1], dato_nodo[3]])
            hijo_central.padre = nodo
            if not hijo_central.en_lista(nodos_visitados) and not hijo_central.en_lista(nodos_frontera):
                nodos_frontera.append(hijo_central)

            hijo_derecho = Nodo([dato_nodo[0], dato_nodo[1], dato_nodo[3], dato_nodo[2]])
            hijo_derecho.padre = nodo
            if not hijo_derecho.en_lista(nodos_visitados) and not hijo_derecho.en_lista(nodos_frontera):
                nodos_frontera.append(hijo_derecho)

def buscar_solucion_BFS_rec(nodo_inicial, solucion, visitados):
    visitados.append(nodo_inicial.get_datos())

    if nodo_inicial.get_datos() == solucion:
        return nodo_inicial
    else:
        dato_nodo = nodo_inicial.get_datos()

        hijo_izquierdo = Nodo([dato_nodo[1], dato_nodo[0], dato_nodo[2], dato_nodo[3]])
        hijo_central = Nodo([dato_nodo[0], dato_nodo[2], dato_nodo[1], dato_nodo[3]])
        hijo_derecho = Nodo([dato_nodo[0], dato_nodo[1], dato_nodo[3], dato_nodo[2]])

        hijo_izquierdo.padre = nodo_inicial
        hijo_central.padre = nodo_inicial
        hijo_derecho.padre = nodo_inicial

        nodo_inicial.set_hijos([hijo_izquierdo, hijo_central, hijo_derecho])

        for nodo_hijo in nodo_inicial.get_hijos():
            if nodo_hijo.get_datos() not in visitados:
                sol = buscar_solucion_BFS_rec(nodo_hijo, solucion, visitados)
                if sol is not None:
                    return sol
        return None

@app.route("/resolver/lifo", methods=["POST"])
def resolver_lifo():
    data = request.json
    estado_inicial = data.get("estado_inicial")
    solucion = data.get("solucion")
    nodo_solucion = buscar_solucion(estado_inicial, solucion, lifo=True)
    
    resultado = []
    nodo = nodo_solucion
    while nodo.get_padre() is not None:
        resultado.append(nodo.get_datos())
        nodo = nodo.get_padre()
    resultado.append(estado_inicial)
    resultado.reverse()
    
    return jsonify({"solucion": resultado})

@app.route("/resolver/fifo", methods=["POST"])
def resolver_fifo():
    data = request.json
    estado_inicial = data.get("estado_inicial")
    solucion = data.get("solucion")
    nodo_solucion = buscar_solucion(estado_inicial, solucion, lifo=False)
    
    resultado = []
    nodo = nodo_solucion
    while nodo.get_padre() is not None:
        resultado.append(nodo.get_datos())
        nodo = nodo.get_padre()
    resultado.append(estado_inicial)
    resultado.reverse()
    
    return jsonify({"solucion": resultado})

@app.route("/resolver/recursivo", methods=["POST"])
def resolver_recursivo():
    data = request.json
    estado_inicial = data.get("estado_inicial")
    solucion = data.get("solucion")
    
    nodo_inicial = Nodo(estado_inicial)
    visitados = []
    nodo_solucion = buscar_solucion_BFS_rec(nodo_inicial, solucion, visitados)

    resultado = []
    while nodo_solucion is not None:
        resultado.append(nodo_solucion.get_datos())
        nodo_solucion = nodo_solucion.get_padre()

    resultado.reverse()
    return jsonify({"solucion": resultado})

if __name__ == "__main__":
    app.run(debug=True)
