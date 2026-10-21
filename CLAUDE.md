# Tesis de maestría — Dairo Janover Peña Cárdenas

Trabajo final de la Maestría en Enseñanza de las Ciencias Exactas y Naturales (MECEN), Universidad Nacional de Colombia, sede Palmira. Modalidad de profundización.
Directores: Dra. Marisol Santacruz Rodríguez y Dr. Luis Octavio González Salcedo.

## El proyecto (versión vigente desde septiembre de 2026)

**Título:** Diseño de tareas mediadas por inteligencia artificial generativa para la resolución de problemas de cálculo diferencial en estudiantes remitidos a tutoría personalizada en la Universidad Nacional de Colombia, sede Palmira.

**Pregunta:** ¿De qué manera el diseño e implementación de una secuencia de tareas mediada por inteligencia artificial generativa contribuye a la resolución de problemas de cálculo diferencial en estudiantes de Cálculo Diferencial y Matemáticas Básicas remitidos a tutoría personalizada en la Universidad Nacional de Colombia, sede Palmira?

**Objetivo general:** Diseñar, implementar y analizar una secuencia de tareas mediada por IA generativa, orientada a la resolución de problemas de cálculo diferencial en esos estudiantes.

- **OE1:** Seleccionar, de los talleres trabajados en clase, tareas de resolución de problemas de cálculo diferencial, con criterios didácticos (por definir) que hagan visible el razonamiento, y organizarlas en secuencia. El 19-oct-2026 el profesor señaló que el trabajo es una **selección** de tareas, no un diseño desde cero; el título y el objetivo general todavía dicen "diseño" (pendiente decidir).
- **OE2:** Integrar Gemini, con un rol de acompañamiento, definiendo en qué momentos y con qué propósito interviene, en contraste con momentos sin IA.
- **OE3:** Analizar estrategias, razonamientos y errores sin IA y con IA, y el tipo de apoyo que los estudiantes encuentran en la IA.

**Diseño:** experimento de enseñanza, cualitativo. Cada tarea tiene tres momentos: (1) sin IA, esfero azul/negro; (2) con Gemini en modo *aprendizaje guiado*, esfero rojo sin borrar; (3) validación. En la entrevista semiestructurada Gemini se usa libre (uso espontáneo) y con tareas que NO están en la secuencia.

**Contexto:** tutoría personalizada del programa GEA (Grupos de Estudio Autónomo), Dirección Académica, sede Palmira. Dairo es el único tutor de ese componente. Remiten el docente, otros tutores o el área de acompañamiento académico y psicosocial (pérdida de parciales, dificultades persistentes, riesgo académico = P.A.P.A. < 3,0). Los remitidos pueden estar en cualquier semestre.

**La versión anterior** (trigonometría, grado 10.°, Colegio Villa de las Palmas, ChatGPT) está obsoleta. Solo sobrevive en las secciones marcadas como pendientes y en el historial de git.

## Reglas de contenido

- **Terminología:** no decir "agente de IA". Gemini es una IA generativa conversacional con un **rol de acompañamiento**. Usar "mediada por inteligencia artificial generativa".
- **La permanencia** es el horizonte del trabajo, no una variable que se mida.
- **La población** es "estudiantes de Cálculo Diferencial y Matemáticas Básicas remitidos a tutoría personalizada", no "primeras matrículas".
- **Ejes pedidos por la codirectora:** inteligencia híbrida, aprendizaje híbrido, alfabetización y brechas en IA, pensamiento matemático/computacional/algorítmico, Moreno Armella (representaciones ejecutables, co-acción), permanencia (tesis doctoral de César Delgado, aún no conseguida).
- **Datos de estudiantes:** los Excel de `docs/` (`Matriz_Tutorias_Personalizadas_v3_actualizado.xlsx`, `Matriz de Asistencia GEA 2026-2.xlsx`) tienen datos personales. En la tesis solo van **cifras agregadas**; nunca nombres ni documentos. No subir esos datos a servicios externos.
- **Citas:** solo fuentes verificadas. Las nuevas van en `bibliografias/avance_2026_II/fuentes_verificadas.bib`. Si algo no se puede verificar, marcarlo `POR CONFIRMAR`; nunca inventar referencias. Las diapositivas de la profesora (sep. 2026) traen una cita de Trouche (2025) que no se pudo verificar: no usarla.
- **No inventar** experiencia personal ni datos biográficos de Dairo. Si falta un dato, dejar un marcador `[CONFIRMAR]` o preguntar.

## Reglas de escritura

- Español académico latinoamericano, **registro formal pero directo**: voz activa y aperturas concretas, sin coloquialismos (Dairo rechazó expresiones como "Algo no cuadra").
- Aplicar el skill **humanizer-universal** (modo académico) a los textos de la tesis: variar la longitud de las oraciones, incluir alguna pregunta, evitar "la presente investigación", "en este sentido", "cabe mencionar" y el catálogo de autores.
- **Metodología:** conservar la apertura narrativa (experimento de enseñanza → paradigma → fundamentación) y la sección "Metodología por objetivo específico" con el cierre "Con esto, el resultado es…". No reescribirla desde cero.
- **Documentos distintos:** `0000.tex` es la tesis. `propuesta_proyecto_trabajo_grado.tex` es otro documento (formato de convocatoria) y no está sincronizado; confirmar antes de tocarlo.

## Estructura y compilación

- **Documento principal:** `0000.tex`. Se compila con **XeLaTeX + biber**. Dairo compila él mismo en VS Code con Ctrl+Shift+B; no compilar en la carpeta del proyecto (las pruebas se hacen en un directorio temporal).
- **Capítulo 1:** `capitulos/03_planteamiento_problema/`. Contexto en `01_contexto_problema/`, pregunta en `02_pregunta_problema/`, justificación en `04_justificacion/` y objetivos en `objetivos/00Objetivos.tex`.
- **Capítulo 2:** `capitulos/04_marco_teorico/`. Marco contextual actualizado; conceptual y referencial pendientes.
- **Capítulo 3:** `capitulos/05_marco_metodologico/`.
- **Anexo A:** `capitulos/07_anexos/00_manual_usuario_ia.tex`, el manual de Gemini.
- **Instrumentos** (documentos LaTeX independientes, se compilan con pdflatex): `instrumentos/guia_entrevista_v3.tex` y `instrumentos/consentimiento_informado_estudiantes.tex`.
- **Secciones sin actualizar:** van envueltas en el entorno `pendiente` definido en `0000.tex` (recuadro naranja, texto gris). Al reescribir una, quitarle el entorno.

## Estado (actualizar al avanzar)

- **Hecho (30-sep-2026):** introducción, resumen, planteamiento, justificación, objetivos, marco contextual, metodología completa (ubicación, métodos, cronograma, presupuesto, ética), manual de Gemini, guía de entrevista v3 y consentimiento.
- **Hecho (3-oct-2026):** herramientas de recolección y análisis instaladas (QualCoder 4.0, comando `transcribir` con Whisper local, OBS). Corpus en `../datos_investigacion/`, fuera del repo, con `LEEME.md` y libro de códigos REFI-QDA (`04_libro_codigos/libro_codigos_inicial.qdc`, 9 categorías y 32 códigos; revisar los marcados "(propuesto)").
- **Hecho (19-oct-2026):** guía de entrevista v4 (`instrumentos/guia_entrevista_v4.tex`): preguntas en lenguaje del estudiante, tabla de cambios v3→v4, sección de registro y codificación; se quitaron las citas de Montiel-Espinosa de la tabla de conductas. Guía de campo corta (`instrumentos/guia_entrevista_campo.tex`, 4 páginas: preguntas, consignas, ayudas, notas de campo y tarjetas); la v4 queda como versión extendida para el anexo. Codificador propio en `../datos_investigacion/06_herramienta/` (comando `codificador`): grabación y transcripción con Whisper, precodificación con reglas + IA local (qwen2.5:3b en Ollama), todo sin conexión.
- **Siguiente paso (desde 4-oct-2026):**
  1. ~~Tabla de errores de la guía~~ (resuelto en la v4). Pendiente: decidir si la v4 reemplaza a la v3 en la metodología y en el anexo B.
  2. Dairo: crear el proyecto en QualCoder e importar el libro de códigos.
  3. Pilotaje con 1 o 2 estudiantes que no hagan parte del estudio: grabar, transcribir, revisar e importar.
  4. Declarar en la metodología el uso de herramientas (QualCoder, Whisper local, codificador con IA local qwen2.5:3b) y de IA; la profesora lo permite si se declara. Ajustar el consentimiento solo si se van a pasar datos de estudiantes por IA externa.
- **Pendiente:**
  - Antecedentes, marco conceptual y marco referencial.
  - Enunciados de las 4 tareas de la secuencia (`[POR DISEÑAR]`).
  - Guía de entrevista como anexo B.
  - Marcadores `[CONFIRMAR]`: periodo de implementación, instancia de ética, referencia del Estatuto Estudiantil.
  - Tesis de César Delgado.
