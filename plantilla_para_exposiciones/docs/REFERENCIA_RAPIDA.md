# ⚡ Guía Rápida de Comandos Útiles

## 🎨 GRÁFICAS CON PGFPLOTS

### Función simple

```latex
\begin{tikzpicture}
\begin{axis}[domain=0:2*pi, samples=100]
\addplot[VerdeUNAL, thick] {sin(deg(x))};
\end{axis}
\end{tikzpicture}
```

### Scatter plot

```latex
\addplot[only marks, mark=*] coordinates {(1,2) (2,4) (3,5)};
```

### Gráfica de barras

```latex
\begin{axis}[ybar, symbolic x coords={A,B,C}]
\addplot coordinates {(A,10) (B,20) (C,15)};
\end{axis}
```

---

## 🎬 ANIMACIONES

### Revelar items

```latex
\begin{itemize}[<+->]
    \item Primero
    \item Segundo
    \item Tercero
\end{itemize}
```

### Mostrar/ocultar

```latex
\only<1>{Slide 1}
\only<2>{Slide 2}
\only<3>{Slide 3}
```

### Aparecer y mantener

```latex
\onslide<1->{Siempre visible desde 1}
\onslide<2->{Visible desde 2}
```

### Destacar

```latex
\alert<2>{Destacado en slide 2}
\textcolor<3>{red}{Rojo en slide 3}
```

---

## 📐 DIAGRAMAS TIKZ

### Nodo básico

```latex
\node[draw, fill=VerdeUNAL!20] at (0,0) {Texto};
```

### Flecha

```latex
\draw[->, thick] (0,0) -- (2,1);
```

### Círculo

```latex
\draw[fill=blue] (0,0) circle (1cm);
```

### Rectángulo

```latex
\draw[thick] (0,0) rectangle (3,2);
```

---

## 🎨 COLORES

### Definir color

```latex
\definecolor{MiColor}{RGB}{255,100,50}
```

### Usar color

```latex
\textcolor{VerdeUNAL}{Texto verde}
\colorbox{yellow}{Fondo amarillo}
```

---

## 📦 CAJAS

### Block normal

```latex
\begin{block}{Título}
Contenido
\end{block}
```

### Alert block

```latex
\begin{alertblock}{Advertencia}
Contenido importante
\end{alertblock}
```

### Example block

```latex
\begin{exampleblock}{Ejemplo}
Contenido de ejemplo
\end{exampleblock}
```

### tcolorbox personalizada

```latex
\begin{tcolorbox}[colback=VerdeUNAL!10, colframe=VerdeUNAL!80, title=Título]
Contenido
\end{tcolorbox}
```

---

## 🔢 MATEMÁTICAS

### Inline

```latex
$E = mc^2$
```

### Display

```latex
\[
\int_0^\infty e^{-x^2} dx = \frac{\sqrt{\pi}}{2}
\]
```

### Múltiples ecuaciones

```latex
\begin{align*}
x + y &= 5 \\
2x - y &= 1
\end{align*}
```

---

## 📸 IMÁGENES

### Insertar imagen

```latex
\includegraphics[width=0.5\textwidth]{imagen.png}
```

### Imagen con figura

```latex
\begin{figure}
\centering
\includegraphics[width=0.6\textwidth]{imagen.png}
\caption{Descripción}
\end{figure}
```

---

## 📊 TABLAS

### Tabla básica

```latex
\begin{tabular}{lcc}
\toprule
Columna 1 & Columna 2 & Columna 3 \\
\midrule
A & 10 & 20 \\
B & 15 & 25 \\
\bottomrule
\end{tabular}
```

---

## 🎯 LAYOUT

### Dos columnas

```latex
\begin{columns}[t]
\column{0.5\textwidth}
Izquierda

\column{0.5\textwidth}
Derecha
\end{columns}
```

### Espacio vertical

```latex
\vspace{1cm}
```

### Espacio horizontal

```latex
\hspace{2cm}
```

---

## 🚀 COMPILACIÓN

### PDFLaTeX

```bash
pdflatex archivo.tex
```

### XeLaTeX (para fuentes modernas)

```bash
xelatex archivo.tex
```

### LuaLaTeX

```bash
lualatex archivo.tex
```

### Compilación completa

```bash
pdflatex archivo.tex
pdflatex archivo.tex  # Segunda vez para referencias
```

---

## 💡 TIPS

- Usa `\pause` para pausar entre elementos
- `\frametitle{Título}` para título del slide
- `[plain]` en frame para slide sin decoraciones
- `[t]` para alinear arriba, `[c]` centro, `[b]` abajo
- `\alert{texto}` para destacar
- `\emph{texto}` para énfasis
- `\textbf{texto}` para negrita
- `\textit{texto}` para cursiva
