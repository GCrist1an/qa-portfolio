# language: es
Característica: Navegación del catálogo
  Como clienta
  Quiero buscar y filtrar productos
  Para encontrar rápido lo que necesito

  Escenario: Buscar un producto existente
    Dado que estoy en el catálogo
    Cuando busco "suero"
    Entonces solo veo productos que contienen "suero"

  Escenario: Búsqueda sin resultados
    Dado que estoy en el catálogo
    Cuando busco "zzzz"
    Entonces veo un mensaje indicando que no hay resultados

  Escenario: Filtrar por marca
    Dado que estoy en el catálogo
    Cuando selecciono una marca
    Entonces solo veo productos de esa marca

  Escenario: La tienda responde mientras carga en red lenta
    Dado que mi conexión es lenta
    Cuando abro la tienda
    Entonces los botones principales responden de inmediato
    Y veo el mensaje "Cargando productos…"

  Escenario: Los precios se muestran completos
    Dado que estoy en el catálogo
    Entonces ningún precio se muestra con los ceros recortados
