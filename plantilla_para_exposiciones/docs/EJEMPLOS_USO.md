# Guía de Uso de Paquetes en la Plantilla Beamer

## 📝 OPCIONES DE FUENTES

### Para cambiar la fuente, descomenta UNA de estas opciones en el preámbulo:

#### **Fuentes Serif (Clásicas, Académicas)**

```latex
\usepackage{libertine}  % Linux Libertine - Elegante y moderna
\usepackage{mathpazo}   % Palatino - Muy legible, clásica
\usepackage{lmodern}    % Latin Modern - Mejora de Computer Modern
```

#### **Fuentes Sans-Serif (Recomendadas para presentaciones)**

```latex
\usepackage{helvet}     % Helvetica - Limpia y profesional
\renewcommand{\familydefault}{\sfdefault}

\usepackage{arev}       % Arev Sans - Moderna con matemáticas
\usepackage{cmbright}   % CM Bright - Clara con matemáticas
```

#### **Fuentes Modernas (Requiere XeLaTeX/LuaLaTeX)**

```latex
\usepackage{fontspec}
\setsansfont{Fira Sans}
\setmainfont{Libertinus Serif}
```

#### **Fuentes para Matemáticas Avanzadas**

```latex
\usepackage{newtxtext,newtxmath}  % Times mejorada
\usepackage{fourier}               % Utopia elegante
```

---

## 📊 EJEMPLOS DE GRÁFICAS CON PGFPLOTS

### 1. Gráfica de función matemática básica

```latex
\begin{frame}{Función Trigonométrica}
\begin{center}
\begin{tikzpicture}
\begin{axis}[
    width=10cm, height=6cm,
    xlabel=$x$, ylabel=$y$,
    domain=0:2*pi,
    samples=100,
    grid=major,
    title={$y = \sin(x)$}
]
\addplot[VerdeUNAL, thick] {sin(deg(x))};
\end{axis}
\end{tikzpicture}
\end{center}
\end{frame}
```

### 2. Gráfica con múltiples funciones

```latex
\begin{frame}{Comparación de Funciones}
\begin{tikzpicture}
\begin{axis}[
    width=10cm, height=6cm,
    xlabel=$x$, ylabel=$y$,
    domain=-2:2,
    samples=50,
    legend pos=north west,
    grid=both
]
\addplot[VerdeUNAL, thick] {x^2};
\addlegendentry{$x^2$}

\addplot[red, thick, dashed] {x^3};
\addlegendentry{$x^3$}

\addplot[blue, thick, dotted] {2^x};
\addlegendentry{$2^x$}
\end{axis}
\end{tikzpicture}
\end{frame}
```

### 3. Gráfica de datos (scatter plot)

```latex
\begin{frame}{Datos Experimentales}
\begin{tikzpicture}
\begin{axis}[
    width=10cm, height=6cm,
    xlabel={Tiempo (s)},
    ylabel={Temperatura (°C)},
    grid=major,
    legend pos=south east
]
\addplot[only marks, mark=*, VerdeUNAL] coordinates {
    (0,20) (1,25) (2,32) (3,41) (4,52) (5,65)
};
\addlegendentry{Mediciones}

\addplot[VerdeUNAL, thick] {20 + 9*x};
\addlegendentry{Ajuste lineal}
\end{axis}
\end{tikzpicture}
\end{frame}
```

### 4. Gráfica de barras con PGFPlots

```latex
\begin{frame}{Resultados por Grupo}
\begin{tikzpicture}
\begin{axis}[
    ybar,
    width=10cm, height=6cm,
    ylabel={Puntuación},
    symbolic x coords={Grupo A, Grupo B, Grupo C, Grupo D},
    xtick=data,
    nodes near coords,
    bar width=20pt
]
\addplot[fill=VerdeUNAL!70] coordinates {
    (Grupo A,85) (Grupo B,75) (Grupo C,92) (Grupo D,88)
};
\end{axis}
\end{tikzpicture}
\end{frame}
```

### 5. Histograma

```latex
\begin{frame}{Distribución de Calificaciones}
\begin{tikzpicture}
\begin{axis}[
    ybar interval,
    width=10cm, height=6cm,
    xlabel={Calificación},
    ylabel={Frecuencia},
    xmin=0, xmax=100
]
\addplot[fill=VerdeUNAL!60] coordinates {
    (0,5) (20,12) (40,28) (60,35) (80,15) (100,5)
};
\end{axis}
\end{tikzpicture}
\end{frame}
```

---

## 🎬 EJEMPLOS DE ANIMACIONES

### 1. Revelar contenido progresivamente

```latex
\begin{frame}{Conceptos Clave}
\begin{itemize}[<+->]  % Aparece uno por uno
    \item Primer concepto
    \item Segundo concepto
    \item Tercer concepto
\end{itemize}
\end{frame}
```

### 2. Overlay specifications avanzadas

```latex
\begin{frame}{Comparación}
\only<1>{
    \textbf{Método Tradicional:}
    \begin{itemize}
        \item Característica A
        \item Característica B
    \end{itemize}
}
\only<2>{
    \textbf{Método Nuevo:}
    \begin{itemize}
        \item Mejora A
        \item Mejora B
    \end{itemize}
}
\only<3>{
    \textbf{Conclusión:} El nuevo método es superior.
}
\end{frame}
```

### 3. Resaltar elementos

```latex
\begin{frame}{Elementos Importantes}
\begin{itemize}
    \item<1-> Primer elemento
    \item<2-> \alert<2>{Elemento destacado en slide 2}
    \item<3-> Tercer elemento
    \item<4-> \textcolor<4>{VerdeUNAL}{\textbf{Conclusión destacada}}
\end{itemize}
\end{frame}
```

### 4. Aparecer y mantenerse visible

```latex
\begin{frame}{Construcción de Ideas}
\onslide<1->{Base inicial}

\vspace{0.3cm}
\onslide<2->{
    $\Rightarrow$ Desarrollo del concepto
}

\vspace{0.3cm}
\onslide<3->{
    $\Rightarrow$ Conclusión final
}
\end{frame}
```

### 5. Animación de gráficas con TikZ

```latex
\begin{frame}{Construcción Geométrica}
\begin{tikzpicture}
    % Base (siempre visible)
    \draw[thick] (0,0) -- (4,0);

    % Aparece en slide 2+
    \onslide<2->{
        \draw[thick, VerdeUNAL] (0,0) -- (4,3);
    }

    % Aparece en slide 3+
    \onslide<3->{
        \draw[thick, blue] (4,0) -- (4,3);
        \node at (4.5,1.5) {$h$};
    }

    % Aparece en slide 4+
    \onslide<4->{
        \draw[red, thick] (2,0) arc (0:37:2);
        \node at (2.5,0.3) {$\theta$};
    }
\end{tikzpicture}
\end{frame}
```

### 6. Animación frame-by-frame con animate

```latex
\begin{frame}{Movimiento}
\begin{center}
\begin{animateinline}[loop,controls]{10} % 10 fps
    \multiframe{20}{iAngle=0+18}{ % 20 frames, rotación 18° cada uno
        \begin{tikzpicture}
        \draw[->] (0,0) -- (\iAngle:2);
        \fill[VerdeUNAL] (\iAngle:2) circle (0.1);
        \end{tikzpicture}
    }
\end{animateinline}
\end{center}
\end{frame}
```

---

## 🎨 EJEMPLOS DE DIAGRAMAS CON TIKZ

### 1. Diagrama de flujo

```latex
\begin{frame}{Proceso de Investigación}
\begin{center}
\begin{tikzpicture}[
    node distance=1.5cm,
    every node/.style={font=\small},
    box/.style={rectangle, draw=VerdeUNAL!80, fill=VerdeUNAL!20,
                thick, minimum width=3cm, minimum height=1cm, align=center}
]
\node[box] (inicio) {Planteamiento};
\node[box, below of=inicio] (metodo) {Metodología};
\node[box, below of=metodo] (analisis) {Análisis};
\node[box, below of=analisis] (conclusion) {Conclusiones};

\draw[->, VerdeUNAL, very thick] (inicio) -- (metodo);
\draw[->, VerdeUNAL, very thick] (metodo) -- (analisis);
\draw[->, VerdeUNAL, very thick] (analisis) -- (conclusion);
\end{tikzpicture}
\end{center}
\end{frame}
```

### 2. Diagrama circular

```latex
\begin{frame}{Componentes del Sistema}
\begin{center}
\begin{tikzpicture}
\foreach \angle/\text in {0/Entrada, 90/Proceso, 180/Salida, 270/Control} {
    \node[draw=VerdeUNAL, fill=VerdeUNAL!20, circle,
          minimum size=2cm] at (\angle:3cm) {\text};
}
\node[draw=red, fill=red!20, circle, minimum size=1.5cm] at (0,0) {Núcleo};
\end{tikzpicture}
\end{center}
\end{frame}
```

### 3. Línea de tiempo

```latex
\begin{frame}{Cronograma}
\begin{center}
\begin{tikzpicture}
\draw[thick, ->] (0,0) -- (10,0);
\foreach \x/\label in {0/2024, 2.5/2025, 5/2026, 7.5/2027, 10/2028} {
    \draw[thick] (\x,0.1) -- (\x,-0.1);
    \node[below] at (\x,-0.1) {\label};
}
\node[above, VerdeUNAL] at (1.25,0) {Fase 1};
\node[above, blue] at (3.75,0) {Fase 2};
\node[above, orange] at (6.25,0) {Fase 3};
\end{tikzpicture}
\end{center}
\end{frame}
```

---

## 💡 TIPS Y TRUCOS

### Colores personalizados

```latex
\definecolor{MiAzul}{RGB}{30,144,255}
\definecolor{MiRojo}{RGB}{220,20,60}
```

### Bloques personalizados

```latex
\begin{frame}{Definición Importante}
\begin{block}{Teorema}
Contenido del teorema...
\end{block}

\begin{alertblock}{Advertencia}
Nota importante...
\end{alertblock}

\begin{exampleblock}{Ejemplo}
Ejemplo práctico...
\end{exampleblock}
\end{frame}
```

### Matemáticas avanzadas

```latex
\begin{frame}{Ecuaciones}
Ecuación en línea: $E = mc^2$

Ecuación destacada:
\[
\int_{-\infty}^{\infty} e^{-x^2} dx = \sqrt{\pi}
\]

Sistema de ecuaciones:
\begin{align*}
x + y &= 5 \\
2x - y &= 1
\end{align*}
\end{frame}
```

---

## 🚀 COMPILACIÓN

Para compilar tu presentación:

```bash
pdflatex pagina_blanco_unal.tex
pdflatex pagina_blanco_unal.tex  # Segunda vez para referencias
```

Si usas fuentes modernas con fontspec:

```bash
xelatex pagina_blanco_unal.tex
```

O con LuaLaTeX:

```bash
lualatex pagina_blanco_unal.tex
```
