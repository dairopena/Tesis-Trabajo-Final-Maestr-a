# GUÍA COMPLETA DE REORGANIZACIÓN DE TESIS

## 📋 RESUMEN EJECUTIVO

He creado una estructura modular completa para tu tesis. Cada subsección ahora tiene su propio archivo .tex, organizados en carpetas según la jerarquía de tu tabla de contenidos.

## 🎯 OBJETIVOS LOGRADOS

✅ Estructura de carpetas creada  
✅ Archivos cabeza (00\_\*) creados con \input  
✅ Archivos de plantilla con comentarios creados  
⏳ PENDIENTE: Copiar contenido de archivos antiguos a nuevos

## 📁 NUEVA ESTRUCTURA COMPLETA

```
capitulos/
├── 01_preambulo/
│   └── listas/
│       └── figuras_y_tablas.tex (ya existe)
│
├── 02_introduccion/
│   └── introduccion.tex (ya existe)
│
├── 03_planteamiento_problema/
│   ├── 00_capitulo_planteamiento.tex ⭐ NUEVO ARCHIVO CABEZA
│   ├── 01_contexto_problema/
│   │   └── 01_introduccion_contexto.tex ✅ YA CREADO
│   ├── 02_pregunta_problema/
│   │   ├── 00_seccion_pregunta.tex ⭐ NUEVO
│   │   ├── 01_problema_estructural.tex 📝 PLANTILLA
│   │   ├── 02_pregunta_principal.tex 📝 PLANTILLA
│   │   ├── 03_preguntas_especificas.tex 📝 PLANTILLA
│   │   └── 04_justificacion_pregunta.tex 📝 PLANTILLA
│   ├── 03_antecedentes/
│   │   ├── 00_seccion_antecedentes.tex 🔲 POR CREAR
│   │   ├── 01_ia_educacion_general.tex (renombrar desde IA_en_educacion_general/)
│   │   ├── 02_ia_matematicas/ (ya existe con archivos)
│   │   ├── 03_ia_trigonometria.tex (renombrar desde IA_en_trigonometria/)
│   │   ├── 04_desafios_trigonometria/ (ya existe)
│   │   └── 05_aportes_antecedentes/ 🔲 POR DIVIDIR
│   ├── 04_justificacion/
│   │   ├── 00_seccion_justificacion.tex 🔲 POR CREAR
│   │   ├── 01_justificacion_curricular.tex 🔲 POR DIVIDIR
│   │   ├── 02_justificacion_pedagogica.tex 🔲 POR DIVIDIR
│   │   ├── 03_justificacion_social_tecnologica.tex 🔲 POR DIVIDIR
│   │   └── 04_aporte_conocimiento_didactico.tex 🔲 POR DIVIDIR
│   └── 05_objetivos/
│       ├── 00_seccion_objetivos.tex 🔲 POR CREAR
│       ├── 01_objetivo_general.tex 🔲 POR DIVIDIR
│       └── 02_objetivos_especificos.tex 🔲 POR DIVIDIR
│
├── 04_marco_teorico/
│   ├── 00_capitulo_marco_teorico.tex 🔲 POR CREAR
│   ├── 01_marco_conceptual/
│   │   ├── 00_seccion_marco_conceptual.tex 🔲 POR CREAR
│   │   ├── 01_diseno_tareas_matematicas.tex 🔲 POR DIVIDIR
│   │   ├── 02_pensamiento_trigonometrico.tex 🔲 POR DIVIDIR
│   │   ├── 03_modelacion_matematica.tex 🔲 POR DIVIDIR
│   │   ├── 04_tecnologia_herramientas.tex 🔲 POR DIVIDIR
│   │   ├── 05_ia_en_educacion.tex 🔲 POR DIVIDIR
│   │   └── 06_sintesis_tareas_ia.tex 🔲 POR DIVIDIR
│   ├── 02_marco_referencial/
│   │   └── marco_referencial.tex (ya existe - vacío)
│   └── 03_marco_contextual/
│       └── marco_contextual.tex (ya existe - vacío)
│
├── 05_marco_metodologico/
│   ├── 00_capitulo_metodologia.tex 🔲 POR CREAR
│   ├── 01_caracterizacion_investigacion.tex 🔲 POR DIVIDIR
│   ├── 02_fuentes_informacion/
│   │   ├── 00_seccion_fuentes.tex 🔲 POR CREAR
│   │   ├── 01_registros_observacion.tex 🔲 POR DIVIDIR
│   │   ├── 02_entrevistas.tex 🔲 POR DIVIDIR
│   │   ├── 03_protocolos_producciones.tex 🔲 POR DIVIDIR
│   │   └── 04_cuestionarios.tex 🔲 POR DIVIDIR
│   ├── 03_procedimiento_analisis/
│   │   ├── 00_seccion_analisis.tex 🔲 POR CREAR
│   │   ├── 01_organizacion_informacion.tex 🔲 POR DIVIDIR
│   │   ├── 02_patrones_categorias.tex 🔲 POR DIVIDIR
│   │   ├── 03_analisis_producciones.tex 🔲 POR DIVIDIR
│   │   └── 04_triangulacion.tex 🔲 POR DIVIDIR
│   ├── 04_ubicacion_proyecto.tex (renombrar de ubicacion_proyecto.tex)
│   ├── 05_metodos_materiales.tex (renombrar)
│   ├── 06_cronograma.tex (renombrar)
│   └── 07_presupuesto.tex (renombrar)
│
└── 06_conclusiones/
    ├── 00_capitulo_conclusiones.tex 🔲 POR CREAR
    ├── 01_conclusiones.tex (ya existe)
    └── 02_recomendaciones.tex (ya existe)
```

## 🔄 TAREAS PENDIENTES POR CAPÍTULO

### ✅ CAPÍTULO 1: PREÁMBULO

- No requiere cambios (ya modular)

### ✅ CAPÍTULO 2: INTRODUCCIÓN

- No requiere cambios (archivo único)

### 📝 CAPÍTULO 3: PLANTEAMIENTO DEL PROBLEMA

#### Archivos YA CREADOS con plantillas:

1. `00_capitulo_planteamiento.tex` - Archivo cabeza ✅
2. `01_introduccion_contexto.tex` - Con contenido completo ✅
3. `02_pregunta_problema/` - 5 archivos con comentarios guía ✅

#### Archivos POR CREAR/DIVIDIR:

**A. Antecedentes (`03_antecedentes/`):**

```bash
# 1. Crear archivo cabeza
# Copiar desde antecedentes/antecedentes.tex la introducción y \section{Antecedentes}

# 2. Los archivos de subcarpetas ya existen, solo reorganizar includes

# 3. Dividir "Aportes de los antecedentes" en 3 archivos:
05_aportes_antecedentes/
├── 00_subseccion.tex  # Con \subsection{Aportes...}
├── 01_marcos_teoricos.tex
├── 02_ubicacion_problema.tex
└── 03_limitaciones_estudio.tex
```

**B. Justificación (`04_justificacion/`):**

```bash
# Dividir justificacion/justificacion.tex en 5 archivos:
00_seccion_justificacion.tex  # Solo con \section{Justificación}
01_justificacion_curricular.tex  # Copiar subsección completa
02_justificacion_pedagogica.tex  # Copiar subsección completa
03_justificacion_social_tecnologica.tex  # Copiar subsección completa
04_aporte_conocimiento_didactico.tex  # Copiar subsección completa
```

**C. Objetivos (`05_objetivos/`):**

```bash
# Dividir objetivos/00Objetivos.tex en 3 archivos:
00_seccion_objetivos.tex  # Solo con \section{Objetivos}
01_objetivo_general.tex  # Con \subsection y contenido
02_objetivos_especificos.tex  # Con \subsection y enumerate
```

### 📝 CAPÍTULO 4: MARCO TEÓRICO

```bash
# 1. Crear 00_capitulo_marco_teorico.tex con:
\chapter{Marco teórico}
\input{capitulos/04_marco_teorico/01_marco_conceptual/00_seccion_marco_conceptual}
\input{capitulos/04_marco_teorico/02_marco_referencial/marco_referencial}
\input{capitulos/04_marco_teorico/03_marco_contextual/marco_contextual}

# 2. Dividir marco_conceptual/marco_conceptual.tex en 7 archivos:
01_marco_conceptual/
├── 00_seccion_marco_conceptual.tex  # Con \section{Marco conceptual}
├── 01_diseno_tareas_matematicas.tex  # Subsección 1
├── 02_pensamiento_trigonometrico.tex  # Subsección 2
├── 03_modelacion_matematica.tex  # Subsección 3
├── 04_tecnologia_herramientas.tex  # Subsección 4
├── 05_ia_en_educacion.tex  # Subsección 5
└── 06_sintesis_tareas_ia.tex  # Subsección 6
```

### 📝 CAPÍTULO 5: MARCO METODOLÓGICO

```bash
# 1. Crear 00_capitulo_metodologia.tex con includes

# 2. Dividir marco_metodologico.tex en múltiples archivos según secciones

# 3. Renombrar archivos de secciones/ agregando numeración:
secciones/ubicacion_proyecto.tex → 04_ubicacion_proyecto.tex
secciones/metodos_materiales.tex → 05_metodos_materiales.tex
secciones/cronograma.tex → 06_cronograma.tex
secciones/presupuesto.tex → 07_presupuesto.tex
```

### 📝 CAPÍTULO 6: CONCLUSIONES

```bash
# Crear 00_capitulo_conclusiones.tex con:
\chapter{Conclusiones y Recomendaciones}
\input{capitulos/06_conclusiones/01_conclusiones}
\input{capitulos/06_conclusiones/02_recomendaciones}
```

## 🔧 CÓMO DIVIDIR UN ARCHIVO GRANDE

### Ejemplo: Dividir `justificacion.tex`

1. **Abrir el archivo original:**

   ```
   justificacion/justificacion.tex
   ```

2. **Identificar las subsecciones:**

   - `\subsection{Justificación curricular}` ← Líneas X-Y
   - `\subsection{Justificación pedagógica...}` ← Líneas A-B
   - etc.

3. **Copiar cada subsección a su nuevo archivo:**

   - Copiar TODO incluyendo el `\subsection{...}`
   - Incluir TODO el contenido hasta la siguiente subsección

4. **Crear el archivo cabeza `00_seccion_justificacion.tex`:**

   ```latex
   \section{Justificación}

   \input{capitulos/03_planteamiento_problema/04_justificacion/01_justificacion_curricular}
   \input{capitulos/03_planteamiento_problema/04_justificacion/02_justificacion_pedagogica}
   \input{capitulos/03_planteamiento_problema/04_justificacion/03_justificacion_social_tecnologica}
   \input{capitulos/03_planteamiento_problema/04_justificacion/04_aporte_conocimiento_didactico}
   ```

## 🔄 ACTUALIZAR 0000.tex

Una vez completada la reorganización, actualizar `0000.tex`:

### ANTES:

```latex
\input{capitulos/03_planteamiento_problema/planteamiento/00HipotesisPlanteamiento}
\input{capitulos/03_planteamiento_problema/antecedentes/antecedentes}
\input{capitulos/03_planteamiento_problema/justificacion/justificacion}
\input{capitulos/03_planteamiento_problema/objetivos/00Objetivos}

\input{capitulos/04_marco_teorico/marco_teorico/marco_teorico.tex}
\input{capitulos/04_marco_teorico/marco_conceptual/marco_conceptual.tex}
\input{capitulos/04_marco_teorico/marco_referencial/marco_referencial.tex}
\input{capitulos/04_marco_teorico/marco_contextual/marco_contextual.tex}

\input{capitulos/05_marco_metodologico/marco_metodologico.tex}
```

### DESPUÉS:

```latex
\input{capitulos/03_planteamiento_problema/00_capitulo_planteamiento}

\input{capitulos/04_marco_teorico/00_capitulo_marco_teorico}

\input{capitulos/05_marco_metodologico/00_capitulo_metodologia}

\input{capitulos/06_conclusiones/00_capitulo_conclusiones}
```

## ✨ BENEFICIOS DE LA NUEVA ESTRUCTURA

1. **Modularidad**: Cada archivo tiene un propósito único y claro
2. **Mantenibilidad**: Fácil localizar y editar contenido específico
3. **Navegación**: Estructura de carpetas refleja tabla de contenidos
4. **Control de versiones**: Git muestra cambios precisos
5. **Colaboración**: Múltiples personas pueden trabajar sin conflictos
6. **Escalabilidad**: Fácil añadir nuevo contenido

## 📋 CHECKLIST DE VERIFICACIÓN

Después de completar la reorganización:

- [ ] Todos los archivos `00_*` creados
- [ ] Todos los archivos de contenido divididos
- [ ] Archivo `0000.tex` actualizado
- [ ] Compilar con script: `bash compilar.sh`
- [ ] Verificar que PDF genera correctamente
- [ ] Verificar tabla de contenidos
- [ ] Verificar SyncTeX funciona
- [ ] Eliminar archivos antiguos (BACKUP primero!)

## 🎯 ORDEN RECOMENDADO DE TRABAJO

1. ✅ Capítulo 3: Pregunta problema (ya tiene plantillas)
2. 🔲 Capítulo 3: Justificación (4 subsecciones claras)
3. 🔲 Capítulo 3: Objetivos (simple, 2 subsecciones)
4. 🔲 Capítulo 3: Antecedentes (reorganizar includes)
5. 🔲 Capítulo 4: Marco conceptual (6 subsecciones)
6. 🔲 Capítulo 5: Metodología (múltiples secciones)
7. 🔲 Capítulo 6: Conclusiones (simple)
8. 🔲 Actualizar 0000.tex
9. 🔲 Compilar y verificar

## 💡 TIPS

- Usa búsqueda global para encontrar `\section`, `\subsection`
- Mantén BACKUP de archivos originales
- Compila frecuentemente para detectar errores temprano
- Los archivos `00_*` solo tienen \chapter/\section e \input
- Los demás archivos tienen contenido puro (subsecciones y texto)

## ❓ SI TIENES DUDAS

- Revisa los archivos de plantilla creados (tienen comentarios guía)
- Los archivos `02_pregunta_problema/*` son ejemplos completos
- Sigue el mismo patrón para los demás capítulos

---

**¡Tu tesis estará extremadamente organizada cuando termines! 🎓**
