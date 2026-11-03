# language: es
Característica: Cierre del pedido por WhatsApp
  Como clienta
  Quiero enviar mi pedido organizado por WhatsApp
  Para que la vendedora confirme disponibilidad y cierre la compra

  Antecedentes:
    Dado que tengo productos en el carrito
    Y toco "Pedir por WhatsApp"

  Escenario: El mensaje incluye el detalle del pedido
    Cuando reviso el mensaje generado
    Entonces contiene cada producto con su cantidad, presentación y precio
    Y contiene el subtotal estimado

  Escenario: Los datos de la clienta aparecen en el mensaje
    Cuando escribo mi nombre "Laura" y mi dirección "Calle 10 # 5-20"
    Entonces el mensaje incluye "Laura" y "Calle 10 # 5-20"

  Escenario: El botón de envío es visible en iPhone
    Dado que uso un iPhone
    Cuando se abre la ventana "Revisa tu pedido"
    Entonces el botón "Abrir WhatsApp y Enviar Pedido" es visible y se puede tocar

  Escenario: Abrir WhatsApp con el pedido listo
    Cuando toco "Abrir WhatsApp y Enviar Pedido"
    Entonces se abre el chat de la tienda con el mensaje precargado
