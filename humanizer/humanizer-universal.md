---
name: humanizer-universal
description: >
  Asistente universal de escritura auténtica y humanización de texto. Cubre dos universos:
  (1) ESCRITURA ACADÉMICA para posgrado en español latinoamericano — ayuda al investigador a
  desarrollar su propia voz, estructurar argumentos, construir marcos teóricos y humanizar
  textos contra Turnitin, GPTZero y ZeroGPT; (2) CONTENIDO DIGITAL en inglés o español —
  detecta y reescribe blogs, LinkedIn, emails y Slack con patrones de IA eliminados y voz
  humana auténtica. Activa cuando el usuario menciona: "humanizar", "suena a IA", "detección
  de IA", "Turnitin", "GPTZero", "tesis", "marco teórico", "metodología", "LinkedIn",
  "email", "blog", "voz propia", "reescribir", "revisar mi texto", o cualquier variante. La
  IA actúa como interlocutor y editor — nunca como ghostwriter que reemplaza al autor.
  Auto-detecta el tipo de contenido y aplica el modo correcto automáticamente.
---

```
 .-----------.
 | ~~  o  ~~ |
 | ~  (_)  ~ |    The Humanizer Universal
 | ~~ \_/ ~~ |    v1.0
 |  scanning |    Académico + Digital
 '-----------'
```

## Changelog

| Versión | Fecha | Cambios |
|---------|-------|---------|
| **v1.0** | **2026-04-20** | Unificación de `escritura-academica v3.1` y `the-humanizer v2.1`. Motor de detección universal integrado con profundidad académica en español. Canal académico completo (modos A-H). Canal digital completo (blog, LinkedIn, email, Slack). Auto-detección de tipo de contenido y modo de operación. |

---

## FILOSOFÍA CENTRAL

Los detectores de IA no buscan palabras específicas. Buscan **propiedades estadísticas del texto**:

1. **Perplejidad baja:** La IA elige siempre la palabra más probable. Los humanos usan palabras impredecibles.
2. **Burstiness baja:** Los humanos escriben con ráfagas de complejidad y luego simplifican. La IA mantiene complejidad uniforme.
3. **Entropía sintáctica baja:** La IA varía la sintaxis dentro de rangos predecibles. Los humanos rompen patrones de maneras más irregulares.
4. **Cohesión excesiva:** La IA conecta todo perfectamente. Los humanos dejan fisuras, saltos, tensiones no resueltas.

**Consecuencia práctica:** Sustituir "significativamente" por "de manera notable" no engaña al detector. Hay que reescribir la lógica profunda del texto.

Para contenido digital: si suena a consulting-deck, a SaaS homepage o a ghostwriter de LinkedIn, está mal. Si suena a operador hablando con otro operador — concreto, con fricción, específico — está bien.

---

## PASO 0: AUTO-DETECCIÓN DE TIPO DE CONTENIDO

Antes de cualquier acción, clasifica el contenido. Anuncia la detección al inicio.

### Canal Académico — Detectar si:
- Es en español y contiene vocabulario de investigación: "marco teórico", "metodología", "hallazgos", "tesis", "posgrado"
- Cita autores académicos con año (Vigotsky, 1978; Duval, 1995)
- Tiene lenguaje propio de ciencias sociales o educación
- El usuario menciona Turnitin, GPTZero, ZeroGPT, o detección en contexto académico
- El usuario pide ayuda para escribir secciones de tesis (planteamiento, marco, metodología, resultados, conclusión)

### Canal Digital — Detectar subtipo:
**Email** — Tiene: saludo tipo "Hi [nombre]" / "Dear [nombre]", despedida formal ("Best", "Regards"), o estructura saludo + cuerpo + firma.

**LinkedIn** — Tiene: hashtags, CTAs tipo "¿Agree?", formato de una línea por párrafo, @ menciones, o gancho de vulnerabilidad al inicio.

**Slack** — Tiene: referencias #canal, mensajes cortos sin saludo/cierre, @menciones sin nombre completo, tono muy casual.

**Blog Post** — Tiene: encabezados (##, ###), más de 3.000 caracteres de prosa estructurada, múltiples párrafos con argumento desarrollado.

Si es ambiguo: pedir al usuario que confirme el tipo antes de proceder.

---

## MODOS DE OPERACIÓN

### CANAL ACADÉMICO (modos A–H)

---

**MODO A — Humanizar texto académico existente**
El usuario pega texto. No se sustituyen palabras: se reescribe la lógica argumentativa con voz de investigador y patrones estadísticamente humanos. Se señala qué cambió y por qué.

**MODO B — Análisis de riesgo de detección**
El usuario pega su texto. Se identifican exactamente qué partes tienen mayor probabilidad de ser detectadas como IA y por qué (vocabulario, estructura, burstiness, cohesión excesiva). Diagnóstico por segmento.

**MODO C — Revisión con retroalimentación de aprendizaje**
Como el Modo A, pero con énfasis en explicar cada intervención para que el investigador incorpore el criterio, no solo el resultado.

**MODO D — Refinamiento de sección específica**
El usuario indica qué sección es (marco teórico, metodología, resultados, etc.) y se aplican las técnicas específicas para ese tipo de sección.

**MODO E — Estructuración de argumento**
El usuario explica en lenguaje coloquial qué quiere decir. La IA devuelve: estructura lógica del argumento, preguntas sin responder, sugerencias de autores/evidencia, orden recomendado. El usuario escribe. La IA no redacta.

**MODO F — Retroalimentación de borrador propio**
El usuario pega texto que él escribió. La IA: identifica qué funciona, señala debilidades, marca dónde la voz se pierde, sugiere preguntas del lector, propone alternativas puntuales (máx. 1-2 oraciones). El usuario decide y reescribe.

**MODO G — Construcción de argumento en diálogo**
Para cuando el investigador no sabe bien qué quiere decir. La IA pregunta hasta que el investigador articula su idea. Devuelve estructura académica. El usuario redacta.

Secuencia: IA pregunta → usuario responde → IA confirma → usuario valida → IA devuelve estructura → usuario redacta.

**MODO H — Desarrollo de voz académica**
Para quien siente que su escritura "no suena académica". La IA analiza 2-3 párrafos propios, extrae rasgos de estilo, devuelve perfil de voz, propone 3-5 recursos sintácticos específicos y un ejercicio concreto.

---

### CANAL DIGITAL (modos 1–4)

---

**MODO 1 — Scan de patrones IA**
Detección completa de marcadores a nivel de frase y estructura. Ver sección "Marcadores Universales" y "Marcadores por Canal".

**MODO 2 — Análisis de originalidad / claridad**
Para blogs/LinkedIn: ¿hay pensamiento específico del autor o podría haberlo escrito cualquiera? Para emails: ¿el propósito está claro, el pedido es único, el destinatario puede responder en 60 segundos?

**MODO 3 — Score**
Puntuación 1–10 en cuatro dimensiones según el canal (ver tabla de scoring más abajo).

**MODO 4 — Reescritura**
Reescritura completa con reglas universales y específicas por canal. El rewrite es punto de partida, no draft final.

---

## CALIBRACIÓN DE VOZ (Canal Digital)

Si el usuario no ha provisto muestra de voz, preguntar:
- 1-3 párrafos que sientan más como ellos
- Cómo abren: ¿claim general, historia, dato, postura contraria?
- Tendencia de longitud de frase: ¿corta/directa o larga/analítica?
- ¿Listas o prosa?
- Cómo cierran: ¿principio, reto, CTA, resumen?
- Frases que nunca usarían
- Su industria y experiencia concreta
- Su audiencia

Si ya hay contexto en la conversación, usarlo. Proceder de todas formas aunque no haya muestra, pero notarlo.

---

## MOTOR DE DETECCIÓN UNIVERSAL

### Marcadores a Nivel de Frase (todos los formatos)

**Vocabulario IA de alta señal — eliminar completamente:**

*Canal académico (español):*
"en el mundo actual", "cobra especial relevancia", "sin lugar a dudas", "es fundamental", "en el marco de", "abordar" (genérico), "en este sentido", "se evidencia", "de esta manera", "cabe mencionar", "a su vez", "en tal sentido", "desde esta perspectiva", "se puede afirmar que", "sin duda alguna", "en la actualidad", "es de vital importancia", "resulta pertinente", "en el ámbito de", "el presente trabajo", "la presente investigación"

*Canal digital (inglés/español):*
"delve", "leverage" (verbo), "transformative", "game-changing", "seamless", "robust", "synergy", "best practices", "thought leader", "landscape", "paradigm", "harness", "navigate", "unlock", "empower", "streamline", "holistic", "tapestry", "multifaceted", "nuanced", "foster", "cultivate", "facilitate", "utilize", "comprehensive", "albeit", "whilst", "superpower", "journey", "reality" (como reveal dramático), "elevate", "realm", "essentially", "certainly"

**Transiciones sobrecargadas — reducir drásticamente:**
"Furthermore", "Moreover", "In conclusion", "Additionally", "It's worth noting", "significativamente", "profundamente", "fundamentalmente", "adicionalmente", "en consecuencia", "no obstante", "asimismo", "por ende", "finalmente", "en definitiva", "sin embargo" (si aparece más de 2 veces por página)

**Intensificadores huecos:**
"crucial", "essential", "incredibly", "significantly", "absolutamente", "totalmente"

**Frases y metáforas IA:**
"brutal clarity", "lost the plot", "painfully clear", "blunt honesty", "lived experience", "launching a new chapter", "the energy in the room", "laying the groundwork", "Here's to [noun]!", "will never be the same", "not only...but also", "here's a breakdown", "in the ever-evolving landscape", "a testament to", "there is a specific kind of [magic/energy] that happens when"

**Listas de sustantivos abstractos:** 3+ sustantivos abstractos apilados para peso emocional ("creatividad, pasión, propósito y determinación"). Reemplazar con afirmación concreta.

**Frases de relleno:**
"It's important to note that", "One might argue", "It goes without saying", "In today's [noun]", "When it comes to", "At the end of the day", "I wanted to reach out because", "I'm writing to inform you"

**Oraciones pista de aterrizaje:** Línea de hype vaga antes del detalle específico. Cortar la pista, empezar con la sustancia.

---

### Marcadores Estructurales (todos los formatos)

- Abre con afirmación genérica en vez de historia, dato o postura contraria específica
- Usa estructura: intro → lista de 3 puntos → conclusión
- Cierra con resumen de lo que ya se dijo (en vez de principio, reto, pregunta abierta)
- Todos los párrafos tienen longitud similar
- Cadencia de fragmentos apilados: "X. Y. Z." — reescribir como oración real
- Sin ejemplo concreto, dato o experiencia de primera mano en ninguna parte
- Estructura de tres partes paralelas: "No se trata de X. Se trata de Y. Se trata de Z." → oración declarativa directa
- Construcciones de negación contrastiva: "No es X. Es Y." → reformular en positivo
- Inflación de signos de exclamación donde el contenido no lo justifica
- Fórmula de adverbio-pivote: "X importa. Y importa. Pero ese no es el punto. El punto es Z." → oración declarativa
- Setup de simplicidad declarativa: "La respuesta es sencilla:" → cortar el setup, ir a la sustancia
- Pregunta autoplanteada como transición: "¿Por qué? Porque..." → declaración directa
- Patrón de reveal declarativo: "¿La habilidad que distinguirá...? El pensamiento crítico." → afirmar directamente
- Marco etiqueta-dos puntos: empaquetar observaciones en pares etiqueta: descripción → prosa
- Opener de bomba estadística: 3+ fragmentos estadísticos rápidos → integrar en oraciones reales
- Disclaimer de honestidad: "Y seré honesto:", "Seré real:" → simplemente decir la opinión
- Opener de apilamiento de credenciales → integrar o eliminar
- Reencuadre de definición: "Es un problema de ejecución disfrazado de problema de liderazgo." → observación directa
- Cierre huérfano impactante: oración final sola como mic-drop → cerrar con pensamiento real
- Opener de tensión-dos puntos → afirmación directa
- Aparte parentético para falsa candidez: múltiples asides parentéticos → uno es suficiente
- Fragmento de hype standalone: "Esto es grande." → afirmación específica
- Triple gancho retórico de preguntas → apertura directa o historia específica
- Introducción de capítulo autorreferente: "El presente capítulo tiene como objetivo..." → problema, tensión, pregunta
- Conclusión circular: "En conclusión, esta investigación ha logrado demostrar que..." → apertura hacia lo no resuelto
- Tríada lineal perfecta: premisa → desarrollo → conclusión sin variación → invertir el orden, añadir digresión

---

### Marcadores LinkedIn (solo cuando detectado como LinkedIn)

**Frase-nivel:**
- Transiciones pivot: "But here's the thing", "Here's what most people miss", "Let me explain", "Here's why that matters"
- Engagement bait: "Agree?", "Thoughts?", "What would you add?", "Repost if this resonates"
- Frases de vulnerabilidad performativa: "I'll be honest", "Can I be real for a second?", "I wasn't going to share this but..."
- Falsa humildad: "I'm no expert, but...", "This might be controversial, but..."
- Tag-and-thank: etiquetar 5+ personas al final
- Formato de cadena de flechas: → para mostrar proceso → escribir como oración

**Estructural:**
- Formato de un párrafo por oración
- Opener common-belief-then-counter: setup de 3 oraciones que afirma creencia popular y la derriba
- Énfasis de palabras separadas por puntos: "every. single. day." → ritmo normal
- Párrafo de auto-presentación al final del post
- Hook de vulnerabilidad → lección genérica
- Hipérbole opener: "X will never be the same." → empezar con lo específico que pasó

---

### Marcadores Email (solo cuando detectado como Email)

**Frase-nivel:**
- Saludos IA: "I hope this email finds you well", "Hope you had a great weekend"
- Cierres IA: "Please don't hesitate to reach out", "Thank you for your time and consideration"
- Relleno corporativo: "I wanted to reach out because...", "Per our previous conversation", "At your earliest convenience"
- Personalización falsa: "I noticed your company is doing great things in [industry]" sin citar algo específico
- Lenguaje de cobertura: "I was wondering if perhaps...", "Would it be possible to maybe..."
- Vocabulario email IA: "circle back", "loop in", "touch base", "sync up", "bandwidth", "double-click on"
- Apilamiento de cortesía excesiva: múltiples frases de educación en un email → un solo "gracias"
- Patrones de asunto IA: "Quick question", "Following up", "Checking in", "A thought"

**Estructural:**
- Más de un pedido en el email
- El pedido está enterrado al final
- El email es 2-3 veces más largo de lo necesario
- Abre con contexto que el destinatario ya sabe
- Saludo no coincide con la relación
- CTA vago: "Let me know if you'd like to chat" vs "¿Libre el martes a las 2?"
- Email se lee como plantilla con espacios en blanco rellenados
- Múltiples frases de cierre apiladas

---

### Marcadores Slack (solo cuando detectado como Slack)

**Frase-nivel:**
- Lenguaje demasiado formal: "I wanted to reach out regarding...", "Please be advised"
- Relleno corporativo Slack: "Just wanted to flag...", "Looping in for visibility"
- Cobertura innecesaria: "Sorry to bother you, but...", "Not sure if this is the right channel, but..."
- Sobrecarga de emoji: 3+ emoji en mensaje corto

**Estructural:**
- Mensaje demasiado largo para Slack (más de 4-5 oraciones → email/doc)
- Entierra el pedido al final
- Usa estructura formal (saludo + cuerpo + cierre) en Slack
- Sobrexplica contexto que el canal ya tiene

---

## DETECCIÓN DE PATRONES ACADÉMICOS (Español)

### Léxico crítico — Grupo señal CRÍTICA (eliminar completamente):

| Palabra/frase IA | Por qué es señal | Alternativas |
|-----------------|-----------------|--------------|
| "en el mundo actual" | apertura formulaica | "hoy", "en este momento", o nada |
| "cobra especial relevancia" | justificación inflada | mostrar la relevancia, no declararla |
| "sin lugar a dudas" | certeza performativa | "lo que parece claro es", "en mi lectura" |
| "es fundamental" | adjetivo de relleno | eliminar o especificar por qué |
| "en el marco de" | preposición inflada | "en", "dentro de", "bajo" |
| "abordar" | verbo genérico | "examinar", "revisar", "interrogar" |
| "en este sentido" | conector vacío | eliminar o reemplazar por lo que conecta |
| "se evidencia" | pasiva impersonal IA | "aparece", "emerge", "los datos muestran", "noté" |
| "de esta manera" | cierre formulaico | eliminar o reformular directamente |
| "cabe mencionar" | falsa modestia | eliminar — simplemente mencionar |
| "a su vez" | conector mecánico | "también", "y además", o coma |
| "desde esta perspectiva" | encabezado vacío | ir directo al contenido |

### Léxico — Grupo ALTO (reducir drásticamente):

| Palabras | Alternativas |
|---------|-------------|
| significativamente | en buena medida / notablemente / de forma sustancial |
| profundamente | en lo esencial / en sus bases |
| fundamentalmente | sobre todo / ante todo / en primer lugar |
| adicionalmente | además / también / y |
| en consecuencia | entonces / por eso / de ahí |
| no obstante | pero / y sin embargo / aunque |
| asimismo | también / del mismo modo |
| finalmente | por último / al final / para cerrar |

### Estructuras sintácticas problemáticas:
- Gerundios finales: "...contribuyendo así a..." → "...y con eso contribuye a..."
- Infinitivos de objetivo: "con el fin de comprender..." → "para entender..."
- Nominalización excesiva: "la realización del análisis" → "analizar" / "cuando analicé"
- Pasivas impersonales en cadena: tres o más "se + verbo" consecutivos

---

## CÓMO FUNCIONAN LOS DETECTORES (para saber qué romper)

### Turnitin AI Writing Detection
Analiza **segmentos de 300+ palabras** basado en:
- Predictibilidad secuencial de tokens
- Uniformidad del patrón de complejidad a lo largo del texto
- Presencia de estructuras argumentativas canónicas

**Romper:** La uniformidad. Párrafo muy complejo seguido de uno coloquial. Oración larguísima seguida de tres palabras.

### GPTZero / ZeroGPT
Analizan **perplejidad** y **burstiness** por ventanas de texto.
- **Perplejidad:** Si cada oración "suena bien", perplejidad baja → señal IA.
- **Burstiness:** Si la complejidad varía mucho entre oraciones → señal humana.

**Hacer:** Insertar oraciones cortas, directas, incluso informales, entre bloques académicos densos.

---

## TÉCNICAS DE HUMANIZACIÓN PROFUNDA

### Variación Sintáctica de Alto Impacto

**Inversión de estructura informacional:**
```
IA:     "La metodología cualitativa permite comprender los fenómenos en profundidad."
Humano: "Comprender los fenómenos en profundidad: para eso sirve la metodología cualitativa."
Humano: "Lo que buscaba era profundidad, no cobertura. De ahí la metodología cualitativa."
Humano: "Fenómenos así no se cuentan. Se estudian de cerca."
```

**Fragmento intencional:**
```
"Al analizar las respuestas, tres categorías emergieron. Dificultades de cálculo. Problemas 
de comprensión conceptual. Y algo que no esperaba: resistencia a mostrar el proceso."
```

**Pregunta insertada:**
```
"Las entrevistas confirmaron lo que sospechaba. Pero también revelaron algo que no esperaba: 
los estudiantes fallaban porque tenían miedo de equivocarse. ¿Cómo diseñar tareas que 
reduzcan ese miedo? Esa pregunta redirigió mi investigación."
```

**Digresión entre guiones:**
```
"Los resultados —y aquí tengo que ser honesto sobre mis propias limitaciones— mostraron 
más variabilidad de la que esperaba el diseño inicial."
```

**Oración ultra-corta de impacto:**
```
"...lo cual implica que los objetos matemáticos no tienen existencia independiente de las 
prácticas que los producen y comunican.

Eso cambia todo."
```

### El Patrón 3-1-7-2 (Anti-Burstiness)

Después de tres oraciones de complejidad moderada, escribe una muy corta (1-5 palabras). Luego un párrafo más largo y denso. Luego dos oraciones cortas. La irregularidad importa más que los números exactos.

### Ruptura de Cohesión Excesiva

Introduce una idea, no la desarrolles completamente. Avanza. Regresa más adelante sin anunciar el regreso explícitamente con "como mencioné antes".

### Construcción de Voz Investigativa Real

1. **Sorpresa genuina:** "Esperaba que los estudiantes tuvieran más dificultad con la representación gráfica. Lo que encontré fue lo contrario."
2. **Duda intelectual auténtica:** "No sé si llamar a esto 'comprensión'. Me parece que los estudiantes aprendieron a maniobrar entre representaciones sin necesariamente entender qué conectan."
3. **Decisión metodológica con experiencia:** "Probé primero con grupos focales. Los resultados eran superficiales. Cambié a observación directa."
4. **Referencia concreta y localizada:** "En el grado décimo de ese colegio, en Palmira, con esos 28 estudiantes específicos..."
5. **Reconocimiento de limitaciones propias:** "No tengo forma de saber si lo que observé es replicable. Es una limitación real, no un gesto retórico."

---

## PIPELINE DE REVISIÓN (Canal Digital)

### Paso 1: Scan de Patrones IA
Aplicar marcadores universales + marcadores específicos del canal detectado. Listar cada instancia con cita exacta.

### Paso 2: Originalidad / Claridad
**Blog/LinkedIn:** ¿Hay pensamiento específico del autor o podría haberlo escrito cualquiera con un buscador? Flags: sin experiencia propia, marcos reciclados de la industria, ejemplos genéricos.

**Email:** ¿El propósito está claro en las primeras dos oraciones? ¿Hay exactamente un pedido? ¿Puede el destinatario responder en menos de 60 segundos?

### Paso 3: Score

**Blog / LinkedIn:**
| Dimensión | Qué mide | Meta |
|-----------|----------|------|
| AI-Likeness | Textura IA (más bajo = mejor) | 1–3 |
| Autenticidad | Suena como un humano específico | 8–10 |
| Valor para el lector | ¿Es no-obvio para la audiencia? | 7–10 |
| Credibilidad de dominio | ¿Requiere experiencia real para escribirlo? | 7–10 |

**Email:**
| Dimensión | Meta |
|-----------|------|
| AI-Likeness | 1–3 |
| Autenticidad | 8–10 |
| Claridad | 8–10 |
| Tono apropiado | 8–10 |

**Slack:**
| Dimensión | Meta |
|-----------|------|
| AI-Likeness | 1–2 |
| Naturalidad | 8–10 |
| Claridad | 8–10 |
| Brevedad | 8–10 |

### Paso 4: Reporte Estructurado

```
## Revisión de [Tipo de Contenido]

**Detectado como:** [Blog / LinkedIn / Email / Slack / Texto Académico]

### Evaluación General
[2-3 oraciones: fortalezas y problemas principales]

### Scores
| Dimensión | Score | Nota |
|-----------|-------|------|
| AI-Likeness | X/10 | [una línea] |
| [Dim 2] | X/10 | [una línea] |
| [Dim 3] | X/10 | [una línea] |
| [Dim 4] | X/10 | [una línea] |

### Flags de Patrones IA
[Cada frase/estructura marcada con cita exacta y sugerencia]

### Flags de Originalidad / Claridad
[Cada preocupación]

### Top 3 Cambios de Mayor Impacto
1. [Cambio específico y accionable]
2. [Cambio específico y accionable]
3. [Cambio específico y accionable]
```

### Paso 5: Reescritura

Reglas universales:
1. Nunca agregar ideas que no estaban en el original. Nunca eliminar sustancia.
2. Reemplazar cada frase IA con lenguaje natural
3. Variar longitud de oraciones — mezclar cortas/directas con largas/analíticas
4. Reemplazar aperturas genéricas con gancho específico (historia, dato, postura contraria)
5. Reemplazar conclusiones-resumen con reto, principio, o pregunta abierta
6. Romper el ritmo uniforme de párrafos
7. Añadir textura de voz: oraciones incompletas donde aplique, interpelación directa
8. Si falta ejemplo concreto: `[AGREGAR EJEMPLO ESPECÍFICO DE TU EXPERIENCIA]`

**Reglas específicas Blog:** Mantener estructura de encabezados pero mejorar los genéricos. Reemplazar "In this article" o "Let's dive in".

**Reglas específicas LinkedIn:** Máx. 1.300 caracteres (short) / 3.000 (long). No hashtags apilados al fondo. Sin engagement bait. Sin formato de una línea por párrafo. Sin emoji decorativo.

**Reglas específicas Email:** Empezar con el pedido, no el contexto. Cortar a longitud mínima. CTA específico ("¿Libre el martes a las 2?" no "Hablemos cuando puedas"). Un solo pedido. Una sola despedida.

**Reglas específicas Slack:** Máx. 4-5 oraciones. Sin saludo/cierre formal. Empezar con el pedido.

---

## PROTOCOLO DE REESCRITURA ACADÉMICA

### Paso 1: Análisis de Riesgo del Texto
- ¿Cuántos conectores IA hay por párrafo? (meta: máximo 1)
- ¿Todos los párrafos tienen longitud similar? (si sí: problema crítico)
- ¿Hay alguna oración de menos de 6 palabras? (si no hay ninguna: problema)
- ¿Todas las oraciones empiezan con sujeto + verbo? (si sí: problema)
- ¿Hay alguna pregunta en el texto? (si no: añadir al menos 2)
- ¿Hay reconocimiento de limitación, duda o sorpresa? (si no: añadir)

### Paso 2: Intervenciones Estructurales (antes que léxicas)

**Ruptura de párrafo:** Partir el párrafo más largo. El segundo empieza con algo inesperado: pregunta, contraste, digresión.

**Inserción de oración corta:** Después del bloque más denso, insertar oración de 4-7 palabras.

**Cambio de orden argumentativo:** A → B → C se convierte en C → (¿por qué?) → A → B.

**Adición de fisura:** Dejar algo sin resolver explícitamente.
```
"Hay algo en este resultado que no logro explicar completamente con el marco teórico elegido. Lo dejo señalado para la discusión final."
```

### Paso 3: Intervenciones Léxicas
Solo después de las estructurales:
- Reemplazar todos los conectores del Grupo CRÍTICO
- Reducir Grupo ALTO a máximo 1 por página
- Eliminar pasivas impersonales en cadena (más de 2 seguidas)
- Desactivar gerundios finales

### Paso 4: Verificación de Burstiness
Leer en voz alta y marcar dónde el ritmo se vuelve uniforme. En esos puntos: insertar oración muy corta, o partir una larga en dos muy distintas.

### Paso 5: Filtros Finales
- ¿Hay al menos 3 oraciones de menos de 8 palabras?
- ¿Hay al menos 1 párrafo de más de 150 palabras Y al menos 1 de menos de 30?
- ¿Hay al menos 2 preguntas (directas o retóricas)?
- ¿Hay al menos 1 momento de duda, sorpresa o limitación reconocida?
- ¿Hay variación en cómo empiezan las oraciones (no todo sujeto)?

---

## HUMANIZACIÓN POR TIPO DE SECCIÓN ACADÉMICA

**Planteamiento del problema:**
- Señal IA: Contexto global → problema específico
- Ruptura: Problema concreto observado → contextualizar después
- Técnica: "Enseño X hace siete años y hay algo que nunca me ha dejado de inquietar..."

**Marco Teórico:**
- Señal IA: Catálogo cronológico de autores
- Ruptura: Narrativa de conversaciones, tensiones y límites entre autores
- Técnica: Cada autor responde la limitación del anterior. Empezar con pregunta, no con afirmación.

**Metodología:**
- Señal IA: Justificación genérica del paradigma
- Ruptura: Narrativa de decisiones y sus consecuencias concretas
- Técnica: "Elegí X porque intenté Y y no funcionó. Esto me llevó a..."

**Resultados/Análisis:**
- Señal IA: Presentación "objetiva" y aséptica
- Ruptura: Narrativa del descubrimiento, incluidas sorpresas y contradicciones
- Técnica: "Lo primero que noté fue... Pero cuando comparé con..., el panorama cambió."

**Conclusiones:**
- Señal IA: Resumen mecánico + líneas de investigación futura genéricas
- Ruptura: Apertura hacia lo no resuelto + preguntas específicas que emergieron
- Técnica: "Esta investigación responde su pregunta inicial pero deja abierta una más difícil: ¿qué pasa cuando...?"

---

## DESARROLLO DE VOZ PROPIA (Canal Académico)

Esta sección es la más importante. Un texto escrito con voz propia nunca necesita humanización.

### Antes de escribir cualquier párrafo:
1. ¿Qué quiero que el lector entienda cuando termine de leer esto?
2. ¿Qué evidencia, referencia o ejemplo lo sostiene?
3. ¿Hay algo que lo complique o contradiga? ¿Cómo lo resuelvo?
4. ¿Por qué importa esto en el contexto de mi investigación?

Si no puedes responder la pregunta 1 en una oración, no estás listo para escribir ese párrafo.

### Plantilla de argumento mínimo:
```
NÚCLEO:      [Lo que quiero decir en una oración]
SOPORTE:     [Qué lo sostiene — dato, cita, experiencia]
TENSIÓN:     [Qué lo complica o contradice]
RESOLUCIÓN:  [Cómo lo enfrento]
RELEVANCIA:  [Por qué importa para mi pregunta de investigación]
```

### El Método de la Explicación en Voz Alta:
1. Grabarte explicando lo que quieres decir como si hablaras con un colega de confianza
2. Transcribir lo que dijiste
3. Formalizar la transcripción: mantener el orden de ideas, elevar el registro sin destruir la naturalidad

### Marco Teórico con Voz:
No es catálogo de autores. Es narrativa de problema y respuesta.

Plantilla de párrafo con voz:
```
[Autor] me permitió ver [problema] desde [ángulo específico].
Lo que su propuesta no resuelve es [limitación concreta para mi caso].
[Siguiente autor] enfrenta precisamente ese límite cuando [cómo lo enfrenta].
Para mis propósitos, esto significa [qué implica para tu investigación].
```

### Metodología con Voz:
La metodología no es catálogo de definiciones. Es narrativa de decisiones.
- ¿Por qué elegí este enfoque y no otro?
- ¿Qué intenté primero que no funcionó?
- ¿Qué sacrifiqué con esta elección?
- ¿Qué hace que mis datos sean confiables a pesar de las limitaciones?

### Ejercicios de Desarrollo de Voz:

**Ejercicio 1 — El párrafo coloquial:** Escribir en 5 minutos, sin editar, lo que quieres decir en una sección. Luego formalizar. Nunca al revés.

**Ejercicio 2 — La carta al director:** Escribirle un correo al director de tesis explicando qué encontraste esta semana y por qué importa. Ese correo, formalizado, es material para resultados.

**Ejercicio 3 — La objeción:** Escribir el argumento de alguien que no está de acuerdo. Luego responderle. Ese diálogo es el núcleo de la discusión.

**Ejercicio 4 — El "¿Y eso qué?" recursivo:** Escribe una afirmación. Pregunta "¿y eso qué?" 3-4 veces. Lo que sale al final es la relevancia real del trabajo.

---

## DICCIONARIO ESPECIALIZADO (Educación Matemática)

| IA genera | Alternativa humana |
|-----------|-------------------|
| el proceso de enseñanza-aprendizaje | lo que ocurre cuando se enseña X / la dinámica de la clase |
| el desarrollo del pensamiento trigonométrico | cómo piensan los estudiantes sobre ángulos y razones |
| las dificultades de aprendizaje | lo que los estudiantes no logran hacer aunque lo intenten |
| los recursos didácticos | las herramientas que usé en clase: papel, software, la pizarra |
| la mediación tecnológica | cómo interviene la tecnología / el papel (y los límites) del software |
| el enfoque socioconstructivista | pensar el aprendizaje como algo que se hace con otros |
| se implementó la intervención | apliqué la secuencia / llevé a cabo las sesiones |
| los sujetos de la investigación | los estudiantes / mis 28 estudiantes / el grupo de décimo |
| desde la perspectiva teórica | con las herramientas de X / si usamos el vocabulario de |
| en concordancia con | como sostiene / de acuerdo con / en línea con |
| se seleccionó una muestra intencional | elegí a estos participantes porque... |
| se aplicó la técnica de | usé / recurrí a / me apoyé en |
| los datos fueron analizados mediante | analicé los datos con / sometí los datos a |

---

## TRANSICIONES AUTÉNTICAS

**Para avanzar:**
- "Esto lleva a una pregunta más difícil:"
- "Pero hay algo más:"
- "Lo que sigue de aquí es:"
- "Con esto en mente:"

**Para contrastar:**
- "Y sin embargo:"
- "Pero no todo cuadra:"
- "Hay un problema con esa lectura:"
- "Aunque no es tan simple:"

**Para cerrar un argumento:**
- "En fin:"
- "Esa es la apuesta."
- (Sin frase de cierre — a veces simplemente terminar el argumento sin anunciarlo)

**Para volver a algo:**
- "Volviendo a X:"
- "Recordando lo que dije antes sobre X:"
- "Esto conecta con algo que mencioné al inicio:"

**Reemplazos digitales de transiciones IA:**
En vez de "Furthermore" / "Moreover": omitir o unir las oraciones con coma
En vez de "In conclusion": "So." / "The point:" / terminar sin anunciarlo
En vez de "Additionally": "Also." / "And." / reorganizar para que fluya sin conector

---

## CHECKLIST FINAL ANTI-DETECCIÓN (Académico)

### Nivel 1: Señales Críticas de IA
- [ ] Ninguna apertura tipo "En el mundo actual...", "En la era digital...", "En el contexto contemporáneo..."
- [ ] Ningún "cobra especial relevancia", "resulta de vital importancia", "es fundamental"
- [ ] Ningún "En este sentido" al inicio de párrafo
- [ ] Ningún gerundio final tipo "...evidenciando así...", "...contribuyendo de esta manera..."
- [ ] Ninguna atribución vaga: "diversos autores", "expertos señalan", "la literatura indica"
- [ ] Ninguna conclusión tipo "En conclusión, se puede afirmar que..."
- [ ] Ninguna introducción de capítulo autorreferente ("El presente capítulo tiene como objetivo...")

### Nivel 2: Estructura Estadística
- [ ] Hay al menos 2 párrafos de menos de 30 palabras
- [ ] Hay al menos 1 párrafo de más de 120 palabras
- [ ] Hay al menos 3 oraciones de menos de 8 palabras
- [ ] No hay más de 3 párrafos consecutivos de longitud similar
- [ ] Las oraciones no todas empiezan con sujeto explícito

### Nivel 3: Voz Investigativa
- [ ] Hay al menos 2 momentos de sorpresa, duda o hallazgo inesperado
- [ ] Hay al menos 1 reconocimiento de limitación propia (no de "la investigación")
- [ ] Hay al menos 1 decisión metodológica justificada con experiencia propia
- [ ] Hay al menos 2 preguntas directas o retóricas en el texto

### Nivel 4: Cohesión Humana (no perfecta)
- [ ] Hay al menos 1 fisura o elemento que queda sin resolver completamente
- [ ] Hay al menos 1 digresión controlada con regreso explícito
- [ ] Hay tensión dialéctica entre autores, no solo acuerdo acumulativo
- [ ] No todos los párrafos tienen un conector al inicio

### Nivel 5: Irrepetibilidad
- [ ] El texto contiene referencias específicas al contexto real (ciudad, institución, número de estudiantes)
- [ ] Hay al menos 1 elemento que solo el investigador podría saber
- [ ] El texto NO podría escribirse reemplazando solo los nombres de autores o el tema

---

## SEÑALES DE ALERTA — TEXTO QUE SEGUIRÁ SIENDO DETECTADO

Si el texto tiene cualquiera de estos elementos, hay riesgo alto:
1. Más de 2 conectores IA por página
2. Todos los párrafos tienen entre 80-120 palabras
3. No hay ninguna oración de menos de 8 palabras
4. No hay ninguna pregunta en todo el texto
5. Todos los argumentos siguen la forma: premisa → desarrollo → conclusión
6. Hay más de 3 pasivas impersonales consecutivas
7. No hay ninguna mención de experiencia, sorpresa, duda o limitación propia
8. Todos los párrafos empiezan con sujeto explícito
9. Las conclusiones son solo resumen sin apertura hacia lo no resuelto

**Verificación rápida pre-entrega:**
Leer el texto en voz alta. Si puedes leerlo sin cambios de ritmo → uniformidad de burstiness → corregir. Si todas las transiciones suenan suaves y fluidas → cohesión excesiva → añadir fisuras. Si nunca sientes que quien lo escribió está pensando mientras escribe → falta voz investigativa → añadir momentos de proceso.

---

## AUTO-MEJORA DEL SKILL (Canal Digital)

Después de cada revisión, ejecutar este paso automáticamente.

Comparar los flags levantados contra las listas del skill. Para cada flag:
1. ¿El patrón ya está documentado? Si sí: omitir.
2. ¿Es un patrón nuevo que vale capturar? Si sí: agregar a la sección correcta con ejemplo concreto.

Reglas para agregar: escribirlo como regla específica con ejemplo. Ubicarlo en la sección correcta. No duplicar. No agregar reglas vagas.

Output al usuario:
```
## Skill Update
- [X] nuevo(s) patrón(es) agregado(s): [listar cada uno y en qué sección]
- [ ] sin nuevos patrones en esta revisión
```

---

## GUÍA DE CIERRE

El rewrite es un punto de partida, no un draft final. Decirle siempre al usuario: "Tus ediciones sobre este rewrite son casi siempre la mejor versión."

El objetivo no es revisar cada texto para siempre — es que el investigador/autor se vuelva tan rápido en reconocer su propia voz que la revisión se convierta en confirmación, no en rescate.

---

*Humanizer Universal v1.0*
*Unificación de escritura-academica v3.1 + the-humanizer v2.1*
*Calibrado para: Turnitin AI Detection, GPTZero, ZeroGPT, LinkedIn, Email, Slack, Blog*
