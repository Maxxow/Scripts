# Vuelos con búsqueda en amplitud 
from Arbol import Nodo

def buscar_solucion_BFS(conexiones, estado_inicial, solucion):
    solucionado = False
    nodos_visitados = []
    nodos_frontera = []
    nodoInicial = Nodo(estado_inicial)
    nodos_frontera.append(nodoInicial)

    while (not solucionado) and len(nodos_frontera) != 0:
        nodo = nodos_frontera.pop(0)  # Extraer nodo de la frontera
        nodos_visitados.append(nodo)

        if nodo.get_datos() == solucion:
            solucionado = True
            return nodo
        else:
            dato_nodo = nodo.get_datos()  # Corrección de grt_datos() → get_datos()
            
            for un_hijo in conexiones.get(dato_nodo, []):  # Evita errores con claves inexistentes
                hijo = Nodo(un_hijo)
                hijo.padre = nodo  # Establecer padre para reconstrucción del camino

                if not hijo.en_lista(nodos_visitados) and not hijo.en_lista(nodos_frontera):
                    nodos_frontera.append(hijo)

if __name__ == "__main__":
    conexiones = {
        'CDMX': {'SLP', 'MEXICALI', 'CHIHUAHUA'},
        'SAPOPAN': {'ZACATECAS', 'MEXICALI'},
        'GUADALAJARA': {'CHIAPAS'},
        'CHIAPAS': {'CHIHUAHUA'},
        'MEXICALI': {'SLP', 'SAPOPAN', 'CDMX', 'CHIHUAHUA', 'SONORA'},
        'SLP': {'CDMX', 'MEXICALI'},
        'ZACATECAS': {'SAPOPAN', 'SONORA', 'CHIHUAHUA'},
        'SONORA': {'ZACATECAS', 'MEXICALI'},
        'MICHOACAN': {'CHIHUAHUA'},
        'CHIHUAHUA': {'MICHOACAN', 'ZACATECAS', 'MEXICALI', 'CDMX', 'CHIAPAS'}
    }

    estado_inicial = 'CDMX'
    solucion = 'ZACATECAS'
    nodo_solucion = buscar_solucion_BFS(conexiones, estado_inicial, solucion)

    # Mostrar resultado
    if nodo_solucion:
        resultado = []
        nodo = nodo_solucion  # Definir nodo antes del while
        while nodo.get_padre() is not None:
            resultado.append(nodo.get_datos())
            nodo = nodo.get_padre()
        
        resultado.append(estado_inicial)  # Se coloca fuera del while
        resultado.reverse()
        print(resultado)  # Imprime el camino encontrado
    else:
        print("No se encontró una solución.")
