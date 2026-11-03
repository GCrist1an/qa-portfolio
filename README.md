# QA Portfolio — Cristian Gutiérrez

> 🇪🇸 Portafolio de Aseguramiento de Calidad (QA) con pruebas reales sobre un e-commerce en producción y una API REST.
> 🇬🇧 Quality Assurance portfolio with real testing on a production e-commerce site and a REST API.

**Perfil / Profile:** QA Junior · Estudiante de Ingeniería de Software (CIAF) · Formación ISTQB CTFL v4.0
**Contacto / Contact:** [LinkedIn](https://www.linkedin.com/in/cristian-gutierrez-a303b837b/) · [Portafolio](https://cristian-gutierrez-web.vercel.app/) · [GitHub](https://github.com/GCrist1an)

---

## 📦 Proyectos / Projects

### 1. Makeupstore By Andrea — E-commerce en producción
Catálogo interactivo con carrito y cierre de compra por WhatsApp, panel de administración y despliegue en Vercel.
Sitio: https://andreamakeupcare.shop

| Entregable | Descripción |
|---|---|
| [Plan de pruebas](makeupstore/plan-de-pruebas.md) | Alcance, módulos, criterios y entornos |
| [Casos de prueba](makeupstore/casos-de-prueba.md) | Casos funcionales, de UI responsive y seguridad básica |
| [Reportes de bugs](makeupstore/bugs/README.md) | **7 defectos reales** con ciclo completo: detectado → corregido → verificado |
| [Escenarios Gherkin](makeupstore/gherkin/) | Comportamiento esperado en formato BDD |

**Hallazgos destacados / Highlights:** 2 defectos de seguridad críticos (credencial expuesta en el cliente y XSS), problemas de rendimiento en redes móviles lentas, integración con la API de GitHub y UI responsive en iPhone.

### 2. Restful-Booker — Pruebas de API REST
API pública de práctica para QA (https://restful-booker.herokuapp.com).

| Entregable | Descripción |
|---|---|
| [Colección Postman](restful-booker/postman-collection.json) | CRUD completo, autenticación por token y aserciones automáticas |
| [Guía y hallazgos](restful-booker/README.md) | Cómo ejecutarla y registro de defectos |

---

## 🧰 Habilidades demostradas / Skills
- Diseño de casos de prueba: partición de equivalencia, valores límite, casos negativos
- Reporte de defectos: severidad, prioridad, pasos para reproducir, evidencia y verificación
- BDD con Gherkin (Given / When / Then)
- Pruebas de API con Postman (status codes, esquemas, tiempos de respuesta, autenticación)
- Pruebas responsive (Android / iPhone) y de seguridad básica (XSS, exposición de credenciales)
- Trazabilidad entre requisito → caso de prueba → defecto → commit de corrección

## 📁 Plantillas / Templates
- [Plantilla de reporte de bug](templates/plantilla-bug.md)
