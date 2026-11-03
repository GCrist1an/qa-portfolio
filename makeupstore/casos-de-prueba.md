# Casos de prueba — Makeupstore By Andrea

**Estado:** ⏳ Por ejecutar · ✅ Pasó · ❌ Falló (enlazar bug)

## M1 — Inicio
| ID | Caso | Pasos | Resultado esperado | Estado |
|---|---|---|---|---|
| TC-001 | Carga de la página de inicio | Abrir la URL | Hero, categorías y footer visibles sin errores en consola | ⏳ |
| TC-002 | Botón "Ver catálogo" | Tocar "Ver catálogo" | Navega a la sección de catálogo | ⏳ |
| TC-003 | Tarjetas de categoría | Tocar Maquillaje / Cuidado / Accesorios | Muestra el catálogo filtrado por esa categoría | ⏳ |
| TC-004 | Respuesta en red lenta | DevTools "Slow 4G" → tocar controles durante la carga | Responden de inmediato y se ve "Cargando productos…" ([BUG-001](bugs/BUG-001.md)) | ⏳ |

## M2 — Catálogo
| ID | Caso | Pasos | Resultado esperado | Estado |
|---|---|---|---|---|
| TC-005 | Búsqueda válida | Buscar "suero" | Solo productos que coinciden | ⏳ |
| TC-006 | Búsqueda sin resultados | Buscar "zzzz" | Mensaje claro de "sin resultados" | ⏳ |
| TC-007 | Búsqueda sin distinguir mayúsculas/tildes | Buscar "SUERO" y "sueró" | Mismos resultados que "suero" | ⏳ |
| TC-008 | Filtro por marca | Tocar una marca | Solo productos de esa marca | ⏳ |
| TC-009 | Volver a "Todas" | Elegir marca → tocar "Todas" | Catálogo completo | ⏳ |
| TC-010 | Paginación siguiente/anterior | Avanzar y retroceder página | 15 productos por página, sin repetidos ni faltantes | ⏳ |
| TC-011 | Límite de paginación | Ir a la última página | No permite avanzar más allá | ⏳ |
| TC-012 | Formato de precios | Revisar varias marcas | Formato $XX.000, sin precios recortados ([BUG-005](bugs/BUG-005.md)) | ⏳ |

## M3 — Detalle de producto
| ID | Caso | Pasos | Resultado esperado | Estado |
|---|---|---|---|---|
| TC-013 | Abrir modal | Tocar un producto | Modal con foto, nombre, precio y descripción | ⏳ |
| TC-014 | Ver imagen completa | Tocar "Ver completa" | Imagen ampliada | ⏳ |
| TC-015 | Cantidad mínima | Tocar "−" con cantidad 1 | No baja de 1 | ⏳ |
| TC-016 | Aumentar cantidad | Tocar "+" tres veces | Cantidad = 4 | ⏳ |
| TC-017 | Imagen inexistente | Producto con imagen rota | Se muestra imagen de respaldo ([BUG-004](bugs/BUG-004.md)) | ⏳ |
| TC-018 | Cerrar modal | Tocar "X" | Vuelve al catálogo en la misma posición | ⏳ |

## M4 — Carrito
| ID | Caso | Pasos | Resultado esperado | Estado |
|---|---|---|---|---|
| TC-019 | Agregar producto | "Agregar al carrito" | Contador del carrito = 1 y producto en "Tu pedido" | ⏳ |
| TC-020 | Mismo producto dos veces | Agregar el mismo producto 2 veces | Una línea con cantidad 2 (no dos líneas) | ⏳ |
| TC-021 | Variantes distintas | Agregar dos variantes del mismo producto | Dos líneas separadas | ⏳ |
| TC-022 | Subtotal | 2 productos de $12.000 y $10.000 | Subtotal $22.000 | ⏳ |
| TC-023 | Eliminar producto | Tocar "Eliminar" | Se quita y el subtotal se recalcula | ⏳ |
| TC-024 | Nota por producto | Escribir una nota | La nota se conserva y aparece en el mensaje | ⏳ |
| TC-025 | Carrito vacío | Eliminar todo | Mensaje de carrito vacío y botón de pedido deshabilitado | ⏳ |

## M5 — Cierre por WhatsApp
| ID | Caso | Pasos | Resultado esperado | Estado |
|---|---|---|---|---|
| TC-026 | Mensaje generado | Carrito con 2 productos → "Pedir por WhatsApp" | Mensaje con productos, cantidades, precios y subtotal correctos | ⏳ |
| TC-027 | Datos del cliente | Llenar nombre y dirección | Aparecen en el mensaje | ⏳ |
| TC-028 | Campos vacíos | Dejar nombre/dirección vacíos y enviar | Se valida o se avisa antes de abrir WhatsApp | ⏳ |
| TC-029 | Abrir WhatsApp | Tocar el botón verde | Abre el chat de la tienda con el mensaje listo | ⏳ |
| TC-030 | Caracteres especiales | Nota con tildes, ñ y emojis | Se ven correctamente en WhatsApp | ⏳ |

## M6 — Responsive
| ID | Caso | Dispositivo | Resultado esperado | Estado |
|---|---|---|---|---|
| TC-031 | Checkout en iPhone | iPhone / Safari | Botón de WhatsApp visible ([BUG-006](bugs/BUG-006.md)) | ⏳ |
| TC-032 | Catálogo en Android | Android / Chrome | Sin desbordes horizontales | ⏳ |
| TC-033 | Escritorio | Chrome 1920×1080 | Cuadrícula completa y legible | ⏳ |

## Seguridad básica
| ID | Caso | Pasos | Resultado esperado | Estado |
|---|---|---|---|---|
| TC-034 | Credenciales en el cliente | Revisar el código JS en DevTools | Sin contraseñas ni claves ([BUG-002](bugs/BUG-002.md)) | ⏳ |
| TC-035 | Encabezado CSP | DevTools → Network → encabezados | Existe `Content-Security-Policy` ([BUG-007](bugs/BUG-007.md)) | ⏳ |
