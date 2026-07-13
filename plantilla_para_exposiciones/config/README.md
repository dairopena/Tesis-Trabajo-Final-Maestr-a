# ⚙️ Carpeta de Configuración

Esta carpeta contiene los archivos de configuración de la plantilla Beamer UNAL.

---

## 📄 Archivos

### `preambulo.tex`

**Contiene todos los paquetes y configuraciones de LaTeX necesarios para la presentación.**

**Secciones incluidas:**

- ✅ Codificación y lenguaje (UTF-8, español)
- ✅ Opciones de fuentes (comentadas, activar según necesidad)
- ✅ TikZ y bibliotecas avanzadas para gráficas
- ✅ PGFPlots para gráficas profesionales
- ✅ Paquetes de animación
- ✅ Elementos visuales (tcolorbox, smartdiagram, etc.)
- ✅ Colores institucionales UNAL
- ✅ Comandos personalizados
- ✅ Configuración de fondo con marca de agua

---

## 🎨 Cómo Personalizar

### Cambiar la fuente:

Edita `preambulo.tex` y descomenta UNA de las opciones de fuente:

```latex
% OPCIÓN 1: Fuentes serif modernas
% \usepackage{libertine}
% \usepackage{mathpazo}
% \usepackage{lmodern}

% OPCIÓN 2: Fuentes sans-serif (recomendadas)
% \usepackage{helvet}
% \renewcommand{\familydefault}{\sfdefault}
\usepackage{cmbright}  % ← Descomenta esta línea
% \usepackage{arev}
```

### Agregar colores:

```latex
% En la sección "CONFIGURACIÓN DE COLORES"
\definecolor{MiColor}{RGB}{255,100,50}
```

### Agregar nuevos paquetes:

Agrega tus paquetes en la sección correspondiente de `preambulo.tex`:

```latex
% ========== TU CATEGORÍA ==========
\usepackage{mi-paquete}
```

### Modificar marca de agua:

Edita la sección "PLANTILLA DE FONDO" en `preambulo.tex`:

```latex
\setbeamertemplate{background}{
    \begin{tikzpicture}[remember picture,overlay]
        \node[opacity=0.25] at (current page.north) [anchor=north] {
            \includegraphics[width=\paperwidth,keepaspectratio]{encabezado.png}
        };
    \end{tikzpicture}
}
```

---

## 📚 Documentación de Referencia

Para más información sobre las opciones disponibles:

- [Guía de Fuentes](../docs/GUIA_FUENTES.md)
- [Ejemplos de Uso](../docs/EJEMPLOS_USO.md)
- [Referencia Rápida](../docs/REFERENCIA_RAPIDA.md)

---

## 💡 Tips

1. **No modifiques directamente en las presentaciones:** Todos los cambios deben hacerse en `preambulo.tex` para que se apliquen a todas tus presentaciones.

2. **Comenta los paquetes que no uses:** Mantén solo los paquetes necesarios activos para compilación más rápida.

3. **Crea respaldos:** Antes de hacer cambios grandes, crea una copia de `preambulo.tex`.

4. **Consistencia:** Los cambios aquí afectan todas las presentaciones que usen `\input{config/preambulo}`.

---

## 🔧 Estructura Recomendada

Si tu proyecto crece, puedes dividir el preámbulo en múltiples archivos:

```
config/
├── preambulo.tex          # Archivo principal
├── paquetes.tex           # Solo \usepackage
├── colores.tex            # Definiciones de colores
├── comandos.tex           # Comandos personalizados
└── tema.tex               # Configuración de Beamer
```

Luego en `preambulo.tex`:

```latex
\input{config/paquetes}
\input{config/colores}
\input{config/comandos}
\input{config/tema}
```

---

Volver al [README principal](../README.md)
