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
Las aserciones verifican el **comportamiento REST esperado** (por ejemplo, 400 ante datos inválidos o 401 ante credenciales incorrectas). Cuando la API responde distinto, la prueba falla a propósito y el hallazgo se documenta en [`bugs/`](bugs/README.md).

## Resultados de ejecución
| Fecha | Total | ✅ Pasaron | ❌ Fallaron | Evidencia |
|---|---|---|---|---|
| _por ejecutar_ | | | | |
