from Arbol import Nodo

def buscar_solucion_BFS_rec(nodo_inicial, solucion, visitados):
    visitados.append(nodo_inicial.get_datos())
    
    if nodo_inicial.get_datos() == solucion:
        return nodo_inicial
    else:
        # Expandir los nodos sucesores (hijos)
        dato_nodo = nodo_inicial.get_datos()
        
        hijo_izquierdo = Nodo([dato_nodo[1], dato_nodo[0], dato_nodo[2], dato_nodo[3]])
        hijo_central = Nodo([dato_nodo[0], dato_nodo[2], dato_nodo[1], dato_nodo[3]])
        hijo_derecho = Nodo([dato_nodo[0], dato_nodo[1], dato_nodo[3], dato_nodo[2]])
        
        # Asignar padre a los hijos
        hijo_izquierdo.padre = nodo_inicial
        hijo_central.padre = nodo_inicial
        hijo_derecho.padre = nodo_inicial

        nodo_inicial.set_hijos([hijo_izquierdo, hijo_central, hijo_derecho])

        for nodo_hijo in nodo_inicial.get_hijos():
            if nodo_hijo.get_datos() not in visitados:
                # Llamada recursiva
                sol = buscar_solucion_BFS_rec(nodo_hijo, solucion, visitados)
                if sol is not None:
                    return sol
        return None

if __name__ == "__main__":
    estado_inicial = [2, 3, 4, 1]
    solucion = [1, 2, 3, 4]
    visitados = []
    
    nodo_inicial = Nodo(estado_inicial)
    nodo_solucion = buscar_solucion_BFS_rec(nodo_inicial, solucion, visitados)

    # Mostrar resultado
    if nodo_solucion:
        resultado = []
        while nodo_solucion is not None:
            resultado.append(nodo_solucion.get_datos())
            nodo_solucion = nodo_solucion.get_padre()
        
        resultado.reverse()
        print(resultado)
        
    else:
        print("No se encontró una solución.")


