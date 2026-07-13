# REORGANIZACIÓN DE TESIS - MANUAL DE REFERENCIA

## Estructura Actual vs Nueva Estructura

### ANTES (Archivos monolíticos):
- `planteamiento/00HipotesisPlanteamiento.tex` (500+ líneas)
- `justificacion/justificacion.tex` (500+ líneas)
- `marco_teorico/marco_conceptual.tex` (500+ líneas)

### DESPUÉS (Estructura modular):
```
capitulos/
├── 03_planteamiento_problema/
│   ├── 00_capitulo_planteamiento.tex          ← Archivo CABEZA con \chapter
│   ├── 01_contexto_problema/
│   │   └── 01_introduccion_contexto.tex       ← Contexto general
│   ├── 02_pregunta_problema/
│   │   ├── 00_seccion_pregunta.tex            ← \section{Declaración...}
│   │   ├── 01_problema_estructural.tex        ← Problemática
│   │   ├── 02_pregunta_principal.tex          ← Pregunta central
│   │   ├── 03_preguntas_especificas.tex       ← 4 preguntas específicas
│   │   └── 04_justificacion_pregunta.tex      ← Justificación múltiple
│   ├── 03_antecedentes/
│   │   ├── 00_seccion_antecedentes.tex        ← \section{Antecedentes}
│   │   ├── 01_ia_educacion_general.tex
│   │   ├── 02_ia_matematicas/
│   │   │   ├── 00_subseccion.tex
│   │   │   ├── 01_emergencia_ia.tex
│   │   │   ├── 02_evidencia_rendimiento.tex
│   │   │   └── 03_aplicaciones_reales.tex
│   │   ├── 03_ia_trigonometria.tex
│   │   ├── 04_desafios_trigonometria/
│   │   │   ├── 00_subseccion.tex
│   │   │   ├── 01_limitaciones_curriculo.tex
│   │   │   ├── 02_dificultades_conceptuales.tex
│   │   │   ├── 03_enfoque_geometrico.tex
│   │   │   └── 04_transformacion_pedagogica.tex
│   │   └── 05_aportes_antecedentes/
│   │       ├── 00_subseccion.tex
│   │       ├── 01_marcos_teoricos.tex
│   │       ├── 02_ubicacion_problema.tex
│   │       └── 03_limitaciones_estudio.tex
│   ├── 04_justificacion/
│   │   ├── 00_seccion_justificacion.tex
│   │   ├── 01_justificacion_curricular.tex
│   │   ├── 02_justificacion_pedagogica.tex
│   │   ├── 03_justificacion_social_tecnologica.tex
│   │   └── 04_aporte_conocimiento_didactico.tex
│   └── 05_objetivos/
│       ├── 00_seccion_objetivos.tex
│       ├── 01_objetivo_general.tex
│       └── 02_objetivos_especificos.tex
```

## PRÓXIMOS PASOS MANUALES

Ahora debes MANUALMENTE dividir el contenido de los archivos largos:

### 1. Dividir `02_pregunta_problema`
   - Leer contenido desde "El panorama descrito..." hasta el final
   - Separar en 4 archivos según subsecciones

### 2. Dividir `04_justificacion`
   - Ya está el archivo original con 4 \subsection claras
   - Copiar cada subsección a su archivo

### 3. Organizar `03_antecedentes`
   - Los archivos ya existen en subcarpetas
   - Solo crear archivos 00_subseccion.tex donde sea necesario

## CONVENCIÓN DE NOMBRES

- `00_*` = Archivos cabeza que contienen \chapter o \section
- `01_`, `02_`, etc. = Archivos de contenido en orden secuencial
- Nombres descriptivos con guiones bajos
- Todo en minúsculas

## CÓMO ACTUALIZAR 0000.tex

Reemplazar:
```latex
\input{capitulos/03_planteamiento_problema/planteamiento/00HipotesisPlanteamiento}
```

Por:
```latex
\input{capitulos/03_planteamiento_problema/00_capitulo_planteamiento}
```

¡El archivo cabeza se encarga de incluir todos los demás!
