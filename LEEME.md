# Tesis de maestría: mapa de la carpeta

Diseño de tareas mediadas por IA generativa para la resolución de problemas de cálculo diferencial (tutoría personalizada GEA, UNAL Palmira).

## Lo que uso todos los días

| Qué | Dónde |
|---|---|
| **La tesis** (se compila con Ctrl+Shift+B) | `0000.tex` |
| El PDF compilado | `build/0000.pdf` |
| Capítulos | `capitulos/` |
| Bibliografía (`.bib`) | `bibliografias/` (las fuentes nuevas van en `avance_2026_II/fuentes_verificadas.bib`) |
| Figuras | `imagenes/` |
| Instrumentos para el trabajo de campo | `instrumentos/` |

## Capítulos (`capitulos/`)

| Carpeta | Contenido |
|---|---|
| `01_preambulo/` | Resumen, listas, agradecimientos y abreviaturas |
| `02_introduccion/` | Introducción |
| `03_planteamiento_problema/` | Capítulo 1: contexto, pregunta, antecedentes, justificación y objetivos |
| `04_marco_teorico/` | Capítulo 2: marcos contextual, conceptual y referencial |
| `05_marco_metodologico/` | Capítulo 3: metodología (las secciones están en `secciones/`) |
| `06_conclusiones/` | Conclusiones (todavía sin activar en `0000.tex`) |
| `07_anexos/` | Anexo A: manual de Gemini |

## Instrumentos (`instrumentos/`)

Cada uno es un documento independiente: se abre el `.tex` y se compila con pdflatex. Al lado está el PDF para imprimir.

| Carpeta | Qué hay | Cuándo se usa |
|---|---|---|
| `01_secuencia/` | `secuencia_tareas` (criterios, orden, 4 tareas y análisis a priori) y `protocolo_sesion` (hoja del tutor) | En cada sesión de la secuencia |
| `02_entrevista/` | `guia_entrevista_campo` (la que se lleva en la mano), `guia_entrevista_v4` (versión extendida para el anexo) y `guia_entrevista_v3` | Al final, con la muestra intensiva |
| `03_cuestionarios/` | `cuestionario_inicial` y `cuestionario_final` | Primera y última sesión |
| `04_etica/` | `consentimiento_informado_estudiantes` | Antes de empezar |

## Documentos de consulta (`docs/`)

| Carpeta | Qué hay |
|---|---|
| `01_literatura/` | Libros y artículos en PDF |
| `02_avances_y_correcciones/` | Avances enviados y versiones corregidas por los directores |
| `03_convocatoria/` | Convocatoria de innovación 2026 |
| `04_datos_privados/` | **Datos personales** (matrices del GEA y del tutor). No se suben a GitHub ni a servicios externos. En la tesis solo van cifras agregadas. |

## Otros

- `propuesta_proyecto_trabajo_grado.tex`: la propuesta en formato de convocatoria. Es un documento distinto de la tesis y queda en la raíz porque sus rutas dependen de eso.
- `plantilla_para_exposiciones/`: presentaciones (Beamer) de los avances.
- `archivo/`: todo lo que ya no se usa, pero que conviene conservar. Ahí están la versión de trigonometría, las notas de la reorganización de 2025, los capítulos sin uso, las guías de entrevista anteriores y los archivos sobrantes de la plantilla. Nada se borró.
- `CLAUDE.md`: el estado del proyecto y las reglas de trabajo con Claude.
- `compilar.sh`: compilación completa desde la terminal, como alternativa a VS Code.

## Fuera de esta carpeta

- `../datos_investigacion/`: el corpus de la investigación (grabaciones, transcripciones, hojas escaneadas, libro de códigos y el codificador). No está en el repositorio, porque tiene datos de los estudiantes.
