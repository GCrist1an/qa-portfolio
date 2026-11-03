# language: es
Característica: Carrito de compras
  Como clienta de la tienda
  Quiero armar mi pedido en el carrito
  Para enviarlo a la vendedora por WhatsApp

  Antecedentes:
    Dado que estoy en el catálogo de la tienda

  Escenario: Agregar un producto al carrito
    Cuando abro el detalle del producto "Suero facial de arroz 100ml"
    Y toco "Agregar al carrito"
    Entonces el contador del carrito muestra 1
    Y el producto aparece en "Tu pedido" con su precio

  Escenario: Agregar el mismo producto dos veces
    Dado que el producto "Suero facial de arroz 100ml" está en el carrito
    Cuando lo agrego de nuevo
    Entonces el carrito muestra una sola línea con cantidad 2

  Esquema del escenario: Calcular el subtotal
    Dado que agrego <cantidad> unidades de un producto de <precio>
    Entonces el subtotal estimado es <subtotal>

    Ejemplos:
      | cantidad | precio  | subtotal |
      | 1        | $12.000 | $12.000  |
      | 3        | $10.000 | $30.000  |

  Escenario: Eliminar un producto
    Dado que tengo 2 productos en el carrito
    Cuando elimino uno de ellos
    Entonces el carrito muestra 1 producto
    Y el subtotal se recalcula

  Escenario: La cantidad no puede ser menor a 1
    Dado que un producto tiene cantidad 1
    Cuando toco el botón "−"
    Entonces la cantidad sigue en 1
