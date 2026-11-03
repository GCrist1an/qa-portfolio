# Plan de pruebas — Makeupstore By Andrea

## 1. Objetivo
Verificar que el catálogo permita a un cliente encontrar productos, armar su pedido y enviarlo por WhatsApp sin errores, en celular y escritorio.

## 2. Sistema bajo prueba
- **URL:** https://andreamakeupcare.shop
- **Tipo:** catálogo e-commerce con cierre de compra asistido por WhatsApp.
- **Arquitectura:** frontend JavaScript, catálogo en JSON, panel de administración que publica cambios vía GitHub y despliegue en Vercel.

## 3. Alcance
| Módulo | Incluido |
|---|---|
| M1 Inicio (hero, categorías, accesos) | ✅ |
| M2 Catálogo (búsqueda, filtros por marca y categoría, paginación) | ✅ |
| M3 Detalle de producto (modal, variantes, cantidad) | ✅ |
| M4 Carrito (agregar, cantidades, eliminar, notas, subtotal) | ✅ |
| M5 Cierre por WhatsApp (formulario y mensaje generado) | ✅ |
| M6 Responsive (Android, iPhone, escritorio) | ✅ |
| Panel de administración | Solo seguridad básica |
| Pasarela de pago | ❌ No aplica (el pago se cierra por WhatsApp) |

## 4. Tipos de prueba
- Funcionales (positivas y negativas)
- UI / Responsive
- Rendimiento percibido en red lenta (DevTools "Slow 4G")
- Seguridad básica: credenciales en el cliente y XSS
- Regresión del flujo crítico: catálogo → carrito → WhatsApp

## 5. Técnicas de diseño
Partición de equivalencia, valores límite (cantidades, tamaño del catálogo) y pruebas basadas en la experiencia.

## 6. Entornos
| Dispositivo | Navegador |
|---|---|
| Escritorio Windows | Chrome / Brave |
| Android | Chrome |
| iPhone | Safari |

## 7. Criterios
- **Entrada:** sitio desplegado en producción y catálogo publicado.
- **Salida:** 100% de casos críticos ejecutados y cero defectos críticos o altos abiertos.

## 8. Severidad
| Nivel | Criterio |
|---|---|
| Crítica | Riesgo de seguridad o pérdida de ventas generalizada |
| Alta | Bloquea un flujo principal o muestra datos incorrectos |
| Media | Afecta un flujo en algunos dispositivos o tiene una alternativa |
| Baja | Cosmético |

## 9. Riesgos
- Cambios del catálogo publicados sin validar → mitigado con validación en servidor (BUG-007).
- Caché que muestra versiones viejas → mitigado con control de caché (BUG-003 y defecto menor `b940eaa`).
