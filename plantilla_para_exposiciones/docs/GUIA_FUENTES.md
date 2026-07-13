# 🎨 Guía Completa de Fuentes para Beamer

## 📚 RECOMENDACIONES DE FUENTES POR CATEGORÍA

### ⭐ **Mejores Opciones para Presentaciones Académicas**

#### 1. **Computer Modern Bright** (Altamente Recomendada)

```latex
\usepackage{cmbright}
```

**Ventajas:**

- ✅ Diseñada específicamente para presentaciones
- ✅ Excelente legibilidad en proyección
- ✅ Incluye matemáticas sans-serif coherentes
- ✅ Clara y moderna

#### 2. **Arev Sans** (Excelente para STEM)

```latex
\usepackage{arev}
```

**Ventajas:**

- ✅ Matemáticas integradas sin conflictos
- ✅ Moderna y profesional
- ✅ Alta legibilidad

#### 3. **Helvetica** (Clásica y Profesional)

```latex
\usepackage{helvet}
\renewcommand{\familydefault}{\sfdefault}
```

**Ventajas:**

- ✅ Estándar corporativo mundial
- ✅ Máxima claridad
- ✅ Reconocida universalmente

---

### 📖 **Fuentes Serif Elegantes** (Para contenido denso)

#### 4. **Palatino** (Academia Clásica)

```latex
\usepackage{mathpazo}
```

**Ventajas:**

- ✅ Muy legible incluso en tamaños pequeños
- ✅ Elegante y seria
- ✅ Matemáticas de alta calidad

#### 5. **Linux Libertine** (Moderna Elegante)

```latex
\usepackage{libertine}
```

**Ventajas:**

- ✅ Alternativa moderna a Times
- ✅ Diseño humanista
- ✅ Excelente para documentos largos

#### 6. **Fourier-GUTenberg** (Científica Premium)

```latex
\usepackage{fourier}
```

**Ventajas:**

- ✅ Basada en Utopia
- ✅ Matemáticas excepcionales
- ✅ Muy elegante

---

### 🚀 **Fuentes Modernas** (Requieren XeLaTeX/LuaLaTeX)

#### 7. **Fira Sans** (La Preferida de Mozilla)

```latex
\usepackage{fontspec}
\setsansfont{Fira Sans}
\setmonofont{Fira Mono}
```

**Ventajas:**

- ✅ Diseño contemporáneo
- ✅ Optimizada para pantallas
- ✅ Amplia familia (Thin, Light, Regular, Bold)

#### 8. **Libertinus** (Revival Premium)

```latex
\usepackage{fontspec}
\setmainfont{Libertinus Serif}
\setsansfont{Libertinus Sans}
\setmathfont{Libertinus Math}
```

**Ventajas:**

- ✅ Fork mejorado de Linux Libertine
- ✅ Soporte matemático completo
- ✅ Alto nivel tipográfico

#### 9. **TeX Gyre Fonts** (Alternativas Libres)

```latex
\usepackage{fontspec}
\setmainfont{TeX Gyre Pagella}  % Alternativa a Palatino
% O también:
% \setmainfont{TeX Gyre Termes}   % Alternativa a Times
% \setmainfont{TeX Gyre Heros}    % Alternativa a Helvetica
```

---

## 🎯 **COMBINACIONES RECOMENDADAS**

### Para Matemáticas Intensivas:

```latex
\usepackage{newtxtext,newtxmath}  % Times mejorada
% o
\usepackage{fourier}                % Utopia
% o
\usepackage{cmbright}               % Computer Modern Bright
```

### Para Presentaciones Corporativas:

```latex
\usepackage{helvet}
\renewcommand{\familydefault}{\sfdefault}
\usepackage[scaled=0.95]{inconsolata}  % Fuente monoespaciada
```

### Para Trabajos Académicos Formales:

```latex
\usepackage{mathpazo}  % Palatino
% o
\usepackage{libertine}  % Linux Libertine
```

### Para Presentaciones Modernas (XeLaTeX):

```latex
\usepackage{fontspec}
\setsansfont{Fira Sans}[
    BoldFont={Fira Sans SemiBold},
    ItalicFont={Fira Sans Italic}
]
\setmonofont{Fira Mono}
```

---

## 🔧 **CONFIGURACIÓN AVANZADA DE FUENTES**

### Ajustar Tamaños

```latex
% En el preámbulo
\usefonttheme{structurebold}  % Títulos en negrita
\setbeamerfont{title}{size=\huge, series=\bfseries}
\setbeamerfont{frametitle}{size=\Large, series=\bfseries}
\setbeamerfont{block title}{size=\normalsize, series=\bfseries}
```

### Matemáticas Profesionales

```latex
\usefonttheme[onlymath]{serif}  % Matemáticas en serif
% o
\usefonttheme{professionalfonts}  % No modificar fuentes matemáticas
```

### Fuentes con Microtype (Mejora tipográfica)

```latex
\usepackage{microtype}  % Mejora espaciado y kerning
```

---

## 📊 **TABLA COMPARATIVA**

| Fuente         | Tipo  | Legibilidad | Matemáticas | Modernidad | Compilador |
| -------------- | ----- | ----------- | ----------- | ---------- | ---------- |
| **CM Bright**  | Sans  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐   | pdfLaTeX   |
| **Arev Sans**  | Sans  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐   | pdfLaTeX   |
| **Helvetica**  | Sans  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐      | ⭐⭐⭐     | pdfLaTeX   |
| **Palatino**   | Serif | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐     | pdfLaTeX   |
| **Libertine**  | Serif | ⭐⭐⭐⭐    | ⭐⭐⭐⭐    | ⭐⭐⭐⭐   | pdfLaTeX   |
| **Fourier**    | Serif | ⭐⭐⭐⭐    | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐   | pdfLaTeX   |
| **Fira Sans**  | Sans  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐    | ⭐⭐⭐⭐⭐ | XeLaTeX    |
| **Libertinus** | Both  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐⭐  | ⭐⭐⭐⭐⭐ | XeLaTeX    |

---

## 💡 **CONSEJOS PROFESIONALES**

### Para Máxima Legibilidad:

1. **Sans-serif** para títulos y cuerpo principal
2. **Serif** solo para textos largos o contenido impreso
3. Tamaño mínimo: **18-20pt** para texto principal
4. Contraste alto con el fondo

### Para Matemáticas:

1. Usa `\usefonttheme{professionalfonts}` siempre
2. Considera **newtxmath**, **fourier**, o **mathpazo**
3. Mantén consistencia entre texto y fórmulas

### Para Estética Moderna:

1. **XeLaTeX** + **Fira Sans** = Presentación del siglo XXI
2. Combina diferentes pesos (Light, Regular, Bold)
3. Usa `fontspec` para control total

---

## 🎬 **EJEMPLO DE USO COMPLETO**

### Opción 1: PDFLaTeX (Compatible, Rápido)

```latex
\documentclass[11pt, aspectratio=169]{beamer}
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
\usepackage{cmbright}  % Fuente clara y moderna
\usefonttheme{professionalfonts}
\usepackage{microtype}

\begin{document}
% Tu contenido aquí
\end{document}
```

### Opción 2: XeLaTeX (Moderno, Flexible)

```latex
\documentclass[11pt, aspectratio=169]{beamer}
\usepackage{fontspec}
\setsansfont{Fira Sans}[
    Scale=1.0,
    BoldFont={Fira Sans SemiBold},
    ItalicFont={Fira Sans Italic}
]
\setmonofont{Fira Mono}[Scale=0.9]
\usefonttheme{professionalfonts}
\usepackage{unicode-math}
\setmathfont{Fira Math}

\begin{document}
% Tu contenido aquí
\end{document}
```

---

## 📥 **INSTALACIÓN DE FUENTES**

### En Ubuntu/Debian:

```bash
# Fuentes TeX Gyre
sudo apt install texlive-fonts-extra

# Fira Sans
sudo apt install fonts-firacode fonts-fira-sans

# Libertinus
sudo apt install fonts-libertinus
```

### En Fedora:

```bash
sudo dnf install texlive-scheme-full
sudo dnf install fira-code-fonts mozilla-fira-sans-fonts
sudo dnf install libertinus-fonts
```

### En Arch Linux:

```bash
sudo pacman -S texlive-most
sudo pacman -S otf-fira-sans otf-fira-mono
sudo pacman -S libertinus-font
```

---

## 🔍 **CÓMO ELEGIR**

**¿Estás presentando fórmulas matemáticas?**
→ **Computer Modern Bright** o **Fourier**

**¿Quieres máxima legibilidad?**
→ **Helvetica** o **Arev Sans**

**¿Buscas elegancia académica?**
→ **Palatino** o **Linux Libertine**

**¿Quieres estilo moderno?**
→ **Fira Sans** (con XeLaTeX)

**¿No estás seguro?**
→ **Computer Modern Bright** (no puedes equivocarte)

---

## ✅ **MI RECOMENDACIÓN PERSONAL**

Para tu plantilla UNAL, recomiendo:

```latex
\usepackage{cmbright}
\usefonttheme{professionalfonts}
```

**Razones:**

- ✅ Perfecta para proyección en aula
- ✅ Matemáticas integradas impecables
- ✅ No requiere fuentes externas
- ✅ Compila rápido con pdfLaTeX
- ✅ Aspecto moderno y profesional

---

¡Experimenta y encuentra tu estilo personal! 🎨
