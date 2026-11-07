# Hallazgos — Restful-Booker

Defectos detectados al ejecutar la colección de Postman. Cada hallazgo usa la [plantilla de bug](../../templates/plantilla-bug.md) e incluye la petición y la respuesta obtenida. Evidencia de la ejecución: [`evidencias/RESUMEN.md`](../../evidencias/RESUMEN.md).

| ID | Caso | Esperado | Obtenido | Severidad | Estado |
|---|---|---|---|---|---|
| [RB-001](RB-001.md) | API-012 Crear reserva sin campos requeridos | 400 Bad Request | 500 Internal Server Error | Media | Nuevo |
| [RB-002](RB-002.md) | API-013 Fechas invertidas | 400 Bad Request | 200 OK, reserva creada | Media | Nuevo |
| [RB-003](RB-003.md) | API-014 Precio negativo | 400 Bad Request | 200 OK, reserva creada | Alta | Nuevo |

## Observaciones de diseño
Comportamientos que hacen lo que dice la documentación oficial pero no siguen las convenciones REST. No son defectos: la colección valida lo documentado y aquí queda la recomendación.

| ID | Caso | Documentado / obtenido | Recomendado | Severidad |
|---|---|---|---|---|
| [OBS-001](OBS-001.md) | API-003 Credenciales inválidas | 200 OK + `Bad credentials` | 401 Unauthorized | Sugerencia |
| [OBS-002](OBS-002.md) | API-010 Eliminar reserva | 201 Created | 204 No Content | Sugerencia |
