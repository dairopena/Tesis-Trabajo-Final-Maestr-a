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
- **Datos de estudiantes:** los Excel de `docs/04_datos_privados/` (`Matriz_Tutorias_Personalizadas_v3_actualizado.xlsx`, `Matriz de Asistencia GEA 2026-2.xlsx`) tienen datos personales. En la tesis solo van **cifras agregadas**; nunca nombres ni documentos. No subir esos datos a servicios externos.
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
- **Instrumentos** (documentos LaTeX independientes, se compilan con pdflatex), por subcarpeta: `instrumentos/01_secuencia/` (secuencia de tareas, hojas del estudiante y propuesta de pilotaje), `02_entrevista/` (`guia_entrevista_tareas`, el instrumento principal), `03_cuestionarios/` (inicial y final) y `04_etica/` (consentimiento).
- **Organización de la carpeta (21-oct-2026):** el mapa está en `LEEME.md`. `docs/` tiene literatura, avances, convocatoria y `04_datos_privados/` (toda la carpeta está en `.gitignore`). Lo obsoleto (versión de trigonometría, notas viejas, capítulos sin uso, `dtvstyle.bst`) está en `archivo/`, nada se borró. `propuesta_proyecto_trabajo_grado.tex` sigue en la raíz porque usa rutas relativas a ella.
- **Secciones sin actualizar:** van envueltas en el entorno `pendiente` definido en `0000.tex` (recuadro naranja, texto gris). Al reescribir una, quitarle el entorno.

## Estado (actualizar al avanzar)

- **Hecho (30-sep-2026):** introducción, resumen, planteamiento, justificación, objetivos, marco contextual, metodología completa (ubicación, métodos, cronograma, presupuesto, ética), manual de Gemini, guía de entrevista v3 y consentimiento.
- **Hecho (3-oct-2026):** herramientas de recolección y análisis instaladas (QualCoder 4.0, comando `transcribir` con Whisper local, OBS). Corpus en `../datos_investigacion/`, fuera del repo, con `LEEME.md` y libro de códigos REFI-QDA (`04_libro_codigos/libro_codigos_inicial.qdc`, 9 categorías y 32 códigos; revisar los marcados "(propuesto)").
- **Hecho (19-oct-2026):** guía de entrevista v4 (`instrumentos/02_entrevista/guia_entrevista_v4.tex`): preguntas en lenguaje del estudiante, tabla de cambios v3→v4, sección de registro y codificación; se quitaron las citas de Montiel-Espinosa de la tabla de conductas. Guía de campo corta (`instrumentos/02_entrevista/guia_entrevista_campo.tex`, 4 páginas: preguntas, consignas, ayudas, notas de campo y tarjetas); la v4 queda como versión extendida para el anexo. Codificador propio en `../datos_investigacion/06_herramienta/` (comando `codificador`): grabación y transcripción con Whisper, precodificación con reglas + IA local (qwen2.5:3b en Ollama), todo sin conexión.
- **Hecho (21-oct-2026):** `instrumentos/01_secuencia/secuencia_tareas.tex`: 6 criterios de selección (C1 demanda cognitiva, Smith y Stein 1998, Stein et al. 1996; C2 no imitativo, Lithner 2008; C3 errores de la tutoría; C4 dos registros, Duval; C5 sale de los talleres; C6 la IA no agota la tarea, Henningsen y Stein 1997, Bastani 2025), orden como trayectoria hipotética (Simon 1995) en la que cada tarea retira un apoyo, 4 tareas **prototipo** con análisis a priori y lista de cotejo. Distinción: se *seleccionan* los problemas y se *diseña* la tarea. También `protocolo_sesion.tex` (2 págs.), `cuestionario_inicial.tex` y `cuestionario_final.tex` (los ítems de confianza se repiten). Las 4 referencias nuevas están en `fuentes_verificadas.bib`. Todavía no se llevó nada de esto a la metodología.
- **Hecho (25-oct-2026):** reorganización de instrumentos. La **entrevista basada en tareas** (Goldin 2000) es el instrumento principal y se aplica en cada encuentro: T1–T4 son sus tareas, no un instrumento aparte. **Tres encuentros** (decidido el 25-oct por tiempo): (1) consentimiento + cuestionario inicial + T1, 75 min; (2) T2 + pausa + T3, 110 min; (3) T4 + pausa + entrevista de cierre (Gemini libre, tarea fuera de la secuencia) + cuestionario final, 100 min. GeoGebra disponible en los tres momentos (representación ejecutable, Moreno-Armella et al. 2008; co-acción, Moreno-Armella y Hegedus 2009) y se registra su uso. Cuatro registros: hoja azul/rojo, chat de Gemini, audio y notas de campo. Los cuestionarios se leen caso por caso (enfoque cualitativo), no con estadística. Una sola guía: `instrumentos/02_entrevista/guia_entrevista_tareas.tex` (8 págs.); v3, v4, guía de campo y protocolo pasaron a `archivo/instrumentos_anteriores/`. Estudios de base, ya en `fuentes_verificadas.bib`: Urhan et al. 2026, Noster et al. 2024 y Zhuang 2025. Estilo de los documentos: sobrio, sin cajas de color (Dairo dijo que las cajas "se ven muy IA"). Consentimiento y propuesta de pilotaje ajustados al encuentro de cierre. Después, por ser el diseño de tareas el objeto de estudio: la entrevista de cierre (40 min) empieza con un bloque sobre las tareas (C1–C4: cuál exigió pensar más, consignas no entendidas, orden sin IA/con IA, qué cambiaría) y las notas de campo cierran con "qué funcionó y qué no en la tarea" y "ajuste para la tarea o para esta guía". Regla: los ajustes del pilotaje se hacen antes del estudio; durante el estudio se anotan y se discuten en el análisis, para que los 4 estudiantes trabajen las mismas tareas. `secuencia_tareas` pasó a la versión 3 (25-oct): sin recuadros, explica que es el documento de diseño (OE1) y que no se lleva a los encuentros, el pilotaje es el primer ciclo del experimento de enseñanza, la co-acción (Moreno-Armella y Hegedus 2009) se aplica a GeoGebra y no a Gemini, y los pendientes quedaron al día. Se agregó Cobb et al. 2003 a `fuentes_verificadas.bib`.
- **Siguiente paso (desde 4-oct-2026):**
  1. Llevar a la metodología (técnicas e instrumentos) y al anexo B la nueva organización: entrevista basada en tareas como instrumento principal (`guia_entrevista_tareas`). Ya no se decide entre v3 y v4.
  2. Dairo: crear el proyecto en QualCoder e importar el libro de códigos.
  3. Pilotaje con 1 o 2 estudiantes que no hagan parte del estudio: grabar, transcribir, revisar e importar.
  4. Declarar en la metodología el uso de herramientas (QualCoder, Whisper local, codificador con IA local qwen2.5:3b) y de IA; la profesora lo permite si se declara. Ajustar el consentimiento solo si se van a pasar datos de estudiantes por IA externa.
- **Plan de campo (25-oct-2026):** 4 estudiantes en el estudio; el semestre 2026-2 termina el 27-dic-2026. Dairo envió los documentos a Pontón y a Marisol el 25-oct y se reúne con Pontón el martes 27-oct; después cita a los estudiantes. No quiere cronograma por ahora (no quiere sentirse presionado).
- **Pendiente:**
  - Antecedentes, marco conceptual y marco referencial.
  - Secuencia v2 (21-oct-2026) con problemas de los talleres (`docs/05_talleres/`, fuera de git): T1 Pontón 24.6, T2 Pontón 30.7, T3 Mosquera 8d, T4 Pontón 24.16 (+ ej. 31). Falta: pilotar, pedir autorización a las profesoras para usar sus ejercicios, confirmar los datos del taller de Mosquera y pasar los enunciados a la metodología (hoy dice `[POR DISEÑAR]`).
  - Pilotaje con estudiantes de la profesora Teresa Pontón (no deben entrar después al estudio). Antes, Dairo le presenta `instrumentos/01_secuencia/propuesta_pilotaje.pdf` y las `hojas_estudiante.pdf`; se le pide opinión, saber si los ejercicios ya se resolvieron en clase, ayuda para invitar estudiantes y autorización para citar sus ejercicios.
  - Consentimiento v2 (21-oct-2026): ya cubre el audio de las sesiones y los cuestionarios. Correos de los directores ya incluidos (25-oct: Marisol msantacruzr@unal.edu.co, Luis Octavio logonzalezsa@unal.edu.co). Siguen vacíos: teléfono del investigador y datos del comité de ética (`[CONFIRMAR]` de la instancia de ética).
  - Cruce entrevista–secuencia: la tarea 1 de la entrevista repite contenidos de T2 y T3. Recomendación dada: cambiar los razonamientos 1 y 2 por contenidos que no estén en la secuencia (propuestas con Pontón 24.17 y Mosquera 8h en la sección 6 de `secuencia_tareas`) y declarar como transferencia la forma de trabajar. Decide Marisol.
  - Guía de entrevista como anexo B.
  - Marcadores `[CONFIRMAR]`: periodo de implementación, instancia de ética, referencia del Estatuto Estudiantil.
  - Tesis de César Delgado.
