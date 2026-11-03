# Reportes de bugs — Makeupstore By Andrea

Defectos reales detectados y corregidos durante el desarrollo y las pruebas del e-commerce. Cada reporte incluye pasos para reproducir, causa raíz, corrección (con commit) y verificación.

| ID | Título | Tipo | Severidad | Estado |
|---|---|---|---|---|
| [BUG-001](BUG-001.md) | Tienda no responde en redes móviles lentas | Rendimiento | Alta | ✅ Verificado |
| [BUG-002](BUG-002.md) | Credencial de admin expuesta en el cliente | Seguridad | **Crítica** | ✅ Verificado |
| [BUG-003](BUG-003.md) | Publicación falla con catálogo > 1 MB | Integración | Alta | ✅ Verificado |
| [BUG-004](BUG-004.md) | Imágenes del admin dan 404 en producción | Despliegue | Alta | ✅ Verificado |
| [BUG-005](BUG-005.md) | Precios recortados ($18 en vez de $18.000) | Datos | Alta | ✅ Verificado + deuda técnica |
| [BUG-006](BUG-006.md) | Botón de WhatsApp cortado en iPhone | UI / Responsive | Media | ✅ Verificado |
| [BUG-007](BUG-007.md) | Riesgo de XSS en datos del catálogo | Seguridad | **Crítica** | ✅ Verificado |

## Resumen
- **7 defectos** documentados: 2 críticos, 4 altos, 1 medio.
- Áreas: seguridad, rendimiento, integración con APIs externas, despliegue, calidad de datos y UI móvil.

## Defectos menores
| Descripción | Commit |
|---|---|
| El campo de precio del admin rechazaba algunos valores; se cambió a `step="any"` | `8e2385e` |
| Los celulares mostraban CSS/JS antiguos por caché; se forzó la descarga de versiones nuevas | `b940eaa` |

## Observación de proceso
Hacer *push* a `main` no despliega automáticamente; el despliegue requiere `npx vercel --prod`. Se recomienda configurar despliegue continuo para evitar publicar versiones desactualizadas.
