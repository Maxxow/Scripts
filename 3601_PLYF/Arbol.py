class Nodo:
    def __init__(self, datos, hijos=None):
        self.datos = datos  # Se elimina la sobrescritura de self.datos = None tenia doble
        self.padre = None
        self.costo = None
        self.set_hijos(hijos)

    def set_hijos(self, hijos):
        self.hijos = hijos if hijos is not None else []
        for h in self.hijos:
            h.padre = self

    def get_hijos(self):
        return self.hijos  # Antes devolvía self.padre incorrectamente tenia un valor incorrecto que no les correspondia

    def get_datos(self):  # Método necesario para obtener los datos del nodo
        return self.datos

    def set_datos(self, datos):
        self.datos = datos
    
    def set_costo(self, costo):
        self.costo = costo

    def get_padre(self):  # Método para obtener el padre del nodo
        return self.padre

    def igual(self, nodo):
        return self.get_datos() == nodo.get_datos()

    def en_lista(self, lista_nodos):
        return any(self.igual(n) for n in lista_nodos)

    def __str__(self):
        return str(self.get_datos())
