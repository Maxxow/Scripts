function calcularPrecio() {
    const marca = document.getElementById("marca").value;
    const origen = document.getElementById("origen").value;
    const costo = parseFloat(document.getElementById("costo").value);
    const comprador = document.getElementById("comprador").value;

    let porcentajeOrigen;
    switch (origen) {
        case "Germany":
            porcentajeOrigen = .20;
            break;
        case "Japan":
            porcentajeOrigen = .30;
            break;
        case "Italy":
            porcentajeOrigen = .15;
            break;
        case "USA":
            porcentajeOrigen = .08;
            break;
        default:
            porcentajeOrigen = 0;
    }
    
    const ventaAgencia = (costo) *(.45);
    const precioAgencia = (costo)+(ventaAgencia);
    const precioImpor = (precioAgencia)*(porcentajeOrigen);
    const precioSum = (precioAgencia)+(precioImpor);
    const iva = (precioSum)*(.16);
    

    const precioFinal = (precioSum)+(iva);
    
    const resultado = `Cliente: ${comprador}<br>
                       Marca: ${marca}<br>
                       Pais: ${origen}<br>
                       Costo de Stock: $${costo.toFixed(2)}<br>
                       Impuesto de Importacion: $${precioSum.toFixed(2)}<br>
                       IVA: $${iva.toFixed(2)}<br>
                       Precio de Venta: $${precioFinal.toFixed(2)}`;

    document.getElementById("resultado").innerHTML = resultado;
}


const AutoTDA = (marca, origen, costo, comprador) =>{  //se sustituye function por const para una funcion de flecha 
    
}