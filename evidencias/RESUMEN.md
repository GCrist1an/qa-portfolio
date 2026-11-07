# Resumen de ejecución — Restful-Booker

| Campo | Valor |
|---|---|
| **Fecha** | 2026-11-07 |
| **Herramienta** | Newman (CLI), colección [`postman-collection.json`](../restful-booker/postman-collection.json) |
| **Entorno** | https://restful-booker.herokuapp.com |
| **Reporte detallado** | [`newman-resultado.xml`](newman-resultado.xml) (JUnit) |

## Totales
| Peticiones | Aserciones | ✅ Pasaron | ❌ Fallaron |
|---|---|---|---|
| 15 | 24 | 21 | 3 |

## Detalle por prueba
| Caso | Petición | Aserciones | Resultado | Hallazgo |
|---|---|---|---|---|
| API-001 | Ping | 2/2 | ✅ Pasó | — |
| API-002 | Crear token (credenciales válidas) | 2/2 | ✅ Pasó | — |
| API-003 | Crear token (credenciales inválidas) | 2/2 | ✅ Pasó | [OBS-001](../restful-booker/bugs/OBS-001.md) |
| API-004 | Listar reservas | 2/2 | ✅ Pasó | — |
| API-005 | Crear reserva | 3/3 | ✅ Pasó | — |
| API-006 | Consultar reserva creada | 2/2 | ✅ Pasó | — |
| API-007 | Actualizar reserva completa (PUT) | 2/2 | ✅ Pasó | — |
| API-008 | Actualizar parcial (PATCH) | 2/2 | ✅ Pasó | — |
| API-009 | Actualizar sin token | 1/1 | ✅ Pasó | — |
| API-010 | Eliminar reserva | 1/1 | ✅ Pasó | [OBS-002](../restful-booker/bugs/OBS-002.md) |
| API-011 | Consultar reserva eliminada | 1/1 | ✅ Pasó | — |
| API-012 | Crear reserva sin campos requeridos | 0/1 | ❌ Falló: esperado 400, obtenido 500 | [RB-001](../restful-booker/bugs/RB-001.md) |
| API-013 | Fechas invertidas (checkout antes de checkin) | 0/1 | ❌ Falló: esperado 400, obtenido 200 | [RB-002](../restful-booker/bugs/RB-002.md) |
| API-014 | Precio negativo | 0/1 | ❌ Falló: esperado 400, obtenido 200 | [RB-003](../restful-booker/bugs/RB-003.md) |
| API-015 | Consultar ID inexistente | 1/1 | ✅ Pasó | — |

## Hallazgos
- **Bugs:** [RB-001](../restful-booker/bugs/RB-001.md), [RB-002](../restful-booker/bugs/RB-002.md) y [RB-003](../restful-booker/bugs/RB-003.md).
- **Observaciones de diseño:** [OBS-001](../restful-booker/bugs/OBS-001.md) y [OBS-002](../restful-booker/bugs/OBS-002.md).

> Por seguridad, la evidencia no incluye las respuestas completas (token de sesión y credenciales).
