# Restful-Booker — Pruebas de API

API pública de práctica para QA: https://restful-booker.herokuapp.com ([documentación](https://restful-booker.herokuapp.com/apidoc/index.html)).

## Cobertura
| Grupo | Casos |
|---|---|
| Salud | API-001 |
| Autenticación | API-002, API-003 |
| CRUD de reservas | API-004 a API-011 |
| Negativos y validación | API-012 a API-015 |

**Qué se valida:** códigos de estado, estructura de la respuesta (esquema), persistencia de datos, autorización por token y tiempos de respuesta.

## Cómo ejecutarla
1. Importar `postman-collection.json` en Postman.
2. Ejecutar la colección completa con el **Collection Runner**. Las peticiones van en orden y comparten variables (`token`, `bookingId`).
3. Por línea de comandos (opcional):
   ```bash
   npm install -g newman
   newman run postman-collection.json
   ```

## Enfoque
Las aserciones verifican el **comportamiento esperado** (por ejemplo, 400 ante datos inválidos). Cuando la API responde distinto, la prueba falla a propósito y el defecto se documenta en [`bugs/`](bugs/README.md). Si la API hace lo que dice su documentación pero no sigue las convenciones REST (por ejemplo, 200 ante credenciales incorrectas), la aserción valida lo documentado y la recomendación se registra como **observación de diseño** (OBS).

## Resultados de ejecución
| Fecha | Total | ✅ Pasaron | ❌ Fallaron | Evidencia |
|---|---|---|---|---|
| 2026-11-07 | 24 aserciones (15 peticiones) | 21 | 3 ([RB-001](bugs/RB-001.md), [RB-002](bugs/RB-002.md), [RB-003](bugs/RB-003.md)) | [`RESUMEN.md`](../evidencias/RESUMEN.md) · [`newman-resultado.xml`](../evidencias/newman-resultado.xml) |
