# 📊 Guía Completa de Diagramas Explicativos

## 🏆 Ranking de Paquetes por Tipo de Diagrama

### Para Presentaciones Académicas (Tu Caso):

| Paquete                   | Calificación    | Uso Ideal               |
| ------------------------- | --------------- | ----------------------- |
| **TikZ** ⭐⭐⭐⭐⭐       | La mejor opción | Todo tipo de diagramas  |
| **smartdiagram** ⭐⭐⭐⭐ | Rápido y fácil  | Diagramas simples       |
| **forest** ⭐⭐⭐⭐       | Árboles         | Estructuras jerárquicas |
| **pgfplots** ⭐⭐⭐⭐⭐   | Gráficas        | Datos y funciones       |
| **circuitikz** ⭐⭐⭐⭐   | Especializado   | Circuitos eléctricos    |

---

## 🎨 EJEMPLOS CON TIKZ (Ya lo Tienes)

### 1. Diagrama de Flujo de Proceso

```latex
\begin{frame}{Proceso de Investigación}
\begin{center}
\begin{tikzpicture}[
    node distance=1.5cm,
    box/.style={rectangle, draw=VerdeUNAL!80, fill=VerdeUNAL!20,
                thick, rounded corners, minimum width=3cm, minimum height=1cm,
                align=center, drop shadow},
    arrow/.style={-{Stealth[length=3mm]}, VerdeUNAL, very thick}
]
% Nodos
\node[box] (inicio) {Identificar\\Problema};
\node[box, below of=inicio] (hipotesis) {Formular\\Hipótesis};
\node[box, below of=hipotesis] (metodo) {Diseñar\\Metodología};
\node[box, below of=metodo] (recolectar) {Recolectar\\Datos};
\node[box, below of=recolectar] (analizar) {Analizar\\Resultados};
\node[box, below of=analizar] (concluir) {Conclusiones};

% Flechas
\draw[arrow] (inicio) -- (hipotesis);
\draw[arrow] (hipotesis) -- (metodo);
\draw[arrow] (metodo) -- (recolectar);
\draw[arrow] (recolectar) -- (analizar);
\draw[arrow] (analizar) -- (concluir);

% Retroalimentación
\draw[arrow, red, dashed] (analizar) -| ++(2,0) |- (hipotesis);
\node[right, red, font=\tiny] at (2.5,-4) {Revisar};
\end{tikzpicture}
\end{center}
\end{frame}
```

---

### 2. Diagrama Conceptual (Mapa Mental Simplificado)

```latex
\begin{frame}{Componentes del Aprendizaje}
\begin{center}
\begin{tikzpicture}[
    scale=0.9,
    central/.style={circle, draw=VerdeUNAL, fill=VerdeUNAL!30,
                    thick, minimum size=2cm, font=\bfseries},
    concepto/.style={ellipse, draw=VerdeUNAL!70, fill=VerdeUNAL!10,
                     thick, minimum width=2.5cm, minimum height=1cm},
    subconcepto/.style={rectangle, rounded corners, draw=blue!70,
                       fill=blue!10, minimum width=2cm, minimum height=0.7cm}
]
% Centro
\node[central] (centro) {Aprendizaje};

% Conceptos principales
\node[concepto, above left=2cm of centro] (cognitivo) {Cognitivo};
\node[concepto, above right=2cm of centro] (afectivo) {Afectivo};
\node[concepto, below left=2cm of centro] (motor) {Psicomotor};
\node[concepto, below right=2cm of centro] (social) {Social};

% Conexiones
\foreach \concepto in {cognitivo, afectivo, motor, social} {
    \draw[VerdeUNAL, thick, ->] (centro) -- (\concepto);
}

% Subconceptos
\node[subconcepto, above=0.5cm of cognitivo, font=\small] {Memoria};
\node[subconcepto, above=0.5cm of afectivo, font=\small] {Motivación};
\node[subconcepto, below=0.5cm of motor, font=\small] {Habilidad};
\node[subconcepto, below=0.5cm of social, font=\small] {Colaboración};
\end{tikzpicture}
\end{center}
\end{frame}
```

---

### 3. Diagrama de Relaciones (Sistemas Interconectados)

```latex
\begin{frame}{Ecosistema Educativo}
\begin{center}
\begin{tikzpicture}[
    elemento/.style={circle, draw=VerdeUNAL!80, fill=VerdeUNAL!20,
                     thick, minimum size=1.5cm, font=\small\bfseries},
    bidireccional/.style={<->, VerdeUNAL!70, thick}
]
% Elementos
\node[elemento] (estudiante) at (0,2) {Estudiante};
\node[elemento] (docente) at (3,2) {Docente};
\node[elemento] (contenido) at (1.5,0) {Contenido};
\node[elemento] (contexto) at (1.5,4) {Contexto};
\node[elemento] (evaluacion) at (-1.5,1) {Evaluación};
\node[elemento] (tecnologia) at (4.5,1) {Tecnología};

% Conexiones bidireccionales
\draw[bidireccional] (estudiante) -- (docente);
\draw[bidireccional] (estudiante) -- (contenido);
\draw[bidireccional] (docente) -- (contenido);
\draw[bidireccional] (estudiante) -- (contexto);
\draw[bidireccional] (docente) -- (contexto);
\draw[bidireccional] (estudiante) -- (evaluacion);
\draw[bidireccional] (docente) -- (tecnologia);
\draw[bidireccional] (tecnologia) -- (contenido);
\draw[bidireccional] (evaluacion) -- (contenido);
\end{tikzpicture}
\end{center}
\end{frame}
```

---

### 4. Diagrama de Capas (Jerarquía)

```latex
\begin{frame}{Niveles de Abstracción}
\begin{center}
\begin{tikzpicture}
\tikzstyle{capa}=[rectangle, draw=VerdeUNAL!70, fill=VerdeUNAL!20,
                  thick, minimum height=1cm, align=center]

% Capas de más ancha a más estrecha
\node[capa, minimum width=10cm] (capa1) at (0,0)
    {\textbf{Teoría General}};
\node[capa, minimum width=8cm] (capa2) at (0,-1.5)
    {\textbf{Marco Conceptual}};
\node[capa, minimum width=6cm] (capa3) at (0,-3)
    {\textbf{Metodología}};
\node[capa, minimum width=4cm] (capa4) at (0,-4.5)
    {\textbf{Técnicas}};
\node[capa, minimum width=2cm, fill=red!20, draw=red!70] (capa5) at (0,-6)
    {\textbf{Práctica}};

% Flechas indicando flujo
\foreach \i/\j in {1/2, 2/3, 3/4, 4/5} {
    \draw[->, VerdeUNAL, thick] (capa\i) -- (capa\j);
}
\end{tikzpicture}
\end{center}
\end{frame}
```

---

### 5. Diagrama de Comparación (Lado a Lado)

```latex
\begin{frame}{Comparación de Enfoques}
\begin{center}
\begin{tikzpicture}[
    caja/.style={rectangle, draw, thick, minimum width=4cm,
                 minimum height=3cm, align=center},
    titulo/.style={font=\bfseries\large}
]
% Enfoque Tradicional
\node[caja, draw=red!70, fill=red!10] (trad) at (0,0) {
    \textbf{Tradicional}\\[0.3cm]
    • Transmisión\\
    • Memorización\\
    • Pasivo\\
    • Individual
};

% Enfoque Constructivista
\node[caja, draw=VerdeUNAL!70, fill=VerdeUNAL!10] (const) at (6,0) {
    \textbf{Constructivista}\\[0.3cm]
    • Construcción\\
    • Comprensión\\
    • Activo\\
    • Colaborativo
};

% Etiquetas
\node[above=0.5cm of trad, titulo, red!80] {Enfoque A};
\node[above=0.5cm of const, titulo, VerdeUNAL!80] {Enfoque B};

% Flecha de evolución
\draw[->, very thick, blue] (trad.east) -- (const.west)
    node[midway, above] {Evolución};
\end{tikzpicture}
\end{center}
\end{frame}
```

---

### 6. Diagrama de Ciclo

```latex
\begin{frame}{Ciclo de Aprendizaje}
\begin{center}
\begin{tikzpicture}[
    fase/.style={circle, draw=VerdeUNAL!80, fill=VerdeUNAL!20,
                 thick, minimum size=2cm, align=center, font=\small\bfseries}
]
% Fases en círculo
\node[fase] (exp) at (90:3) {Experiencia\\Concreta};
\node[fase] (obs) at (0:3) {Observación\\Reflexiva};
\node[fase] (abs) at (-90:3) {Conceptualización\\Abstracta};
\node[fase] (act) at (180:3) {Experimentación\\Activa};

% Flechas circulares
\draw[->, VerdeUNAL, very thick] (exp)
    to[bend left=15] node[above right, font=\tiny] {Reflexionar} (obs);
\draw[->, VerdeUNAL, very thick] (obs)
    to[bend left=15] node[below right, font=\tiny] {Teorizar} (abs);
\draw[->, VerdeUNAL, very thick] (abs)
    to[bend left=15] node[below left, font=\tiny] {Aplicar} (act);
\draw[->, VerdeUNAL, very thick] (act)
    to[bend left=15] node[above left, font=\tiny] {Vivenciar} (exp);

% Centro
\filldraw[VerdeUNAL!50] (0,0) circle (0.5cm);
\node[font=\small] at (0,0) {Ciclo};
\end{tikzpicture}
\end{center}
\end{frame}
```

---

### 7. Línea de Tiempo

```latex
\begin{frame}{Evolución Histórica}
\begin{center}
\begin{tikzpicture}
% Línea principal
\draw[very thick, ->] (0,0) -- (11,0);

% Marcadores
\foreach \x/\year/\evento in {
    1/1900/Conductismo,
    3/1950/Cognitivismo,
    5/1980/Constructivismo,
    7/2000/Conectivismo,
    9/2020/IA en Educación} {
    \draw[thick] (\x,0.2) -- (\x,-0.2);
    \node[below, font=\footnotesize] at (\x,-0.3) {\year};
    \node[above, font=\footnotesize, align=center] at (\x,0.3) {\evento};
}

% Destacar periodo actual
\draw[VerdeUNAL, very thick] (7,0) -- (9,0);
\node[below, VerdeUNAL, font=\bfseries] at (8,-1) {Presente};
\end{tikzpicture}
\end{center}
\end{frame}
```

---

## 🚀 EJEMPLOS CON SMARTDIAGRAM (Ya lo Tienes)

### 1. Diagrama Circular

```latex
\begin{frame}{Proceso Iterativo}
\begin{center}
\smartdiagram[circular diagram:clockwise]{
    Planificar,
    Ejecutar,
    Evaluar,
    Mejorar
}
\end{center}
\end{frame}
```

### 2. Diagrama de Flujo Simple

```latex
\begin{frame}{Flujo de Trabajo}
\smartdiagram[flow diagram:horizontal]{
    Entrada,
    Procesamiento,
    Análisis,
    Resultados,
    Salida
}
\end{frame}
```

### 3. Diagrama de Burbuja

```latex
\begin{frame}{Componentes del Sistema}
\smartdiagram[bubble diagram]{
    Sistema\\Educativo,
    Estudiantes,
    Docentes,
    Currículo,
    Evaluación,
    Recursos
}
\end{frame}
```

---

## 🎯 ¿CUÁL USAR SEGÚN TU NECESIDAD?

| Necesitas                      | Usa                         |
| ------------------------------ | --------------------------- |
| **Diagrama rápido y elegante** | `smartdiagram`              |
| **Control total del diseño**   | `TikZ`                      |
| **Gráficas de datos**          | `pgfplots`                  |
| **Árboles complejos**          | `forest`                    |
| **Circuitos eléctricos**       | `circuitikz`                |
| **Diagramas UML**              | `pgf-umlcd` o `pgf-umlsd`   |
| **Animación de diagrama**      | `TikZ` + overlays de Beamer |

---

## 💡 MI RECOMENDACIÓN PARA TI

Para presentaciones académicas como las tuyas:

### **Usa TikZ** para:

- ✅ Diagramas conceptuales
- ✅ Diagramas de flujo
- ✅ Esquemas de procesos
- ✅ Cualquier diagrama que necesite animación

### **Usa smartdiagram** para:

- ✅ Diagramas rápidos
- ✅ Prototipos de ideas
- ✅ Cuando el tiempo es limitado

### **Usa pgfplots** para:

- ✅ Gráficas de funciones
- ✅ Gráficas de datos experimentales
- ✅ Histogramas y gráficas estadísticas

---

## 📦 PAQUETES OPCIONALES (Ya Agregados a tu Preámbulo)

En `config/preambulo.tex` ahora tienes comentadas estas opciones:

```latex
% \usepackage{circuitikz}     % Circuitos eléctricos
% \usepackage{tikz-cd}        % Diagramas conmutativos
% \usepackage{forest}         % Árboles sintácticos
% \usepackage{tikz-3dplot}    % Gráficos 3D avanzados
% \usepackage{pgf-umlcd}      % Diagramas UML (clases)
% \usepackage{pgf-umlsd}      % Diagramas UML (secuencia)
```

Descomenta el que necesites según tu disciplina.

---

## 🔥 CONSEJO PRO

**Para diagramas explicativos en presentaciones académicas:**

1. **Mantén la simplicidad** - No sobrecargues
2. **Usa colores institucionales** - `VerdeUNAL` ya está definido
3. **Anima progresivamente** - Usa `\onslide<2->` para revelar partes
4. **Consistencia visual** - Define estilos reutilizables
5. **Alto contraste** - Para proyección en aula

---

## 🎨 PLANTILLA REUTILIZABLE

Guarda tus estilos en `config/preambulo.tex`:

```latex
% Estilos personalizados para diagramas
\tikzset{
    miestilo/.style={
        rectangle, rounded corners,
        draw=VerdeUNAL!80, fill=VerdeUNAL!20,
        thick, minimum width=3cm, minimum height=1cm,
        align=center, drop shadow
    },
    miflecha/.style={
        ->, >=Stealth, VerdeUNAL, very thick
    }
}
```

Luego úsalo fácilmente:

```latex
\node[miestilo] (nodo1) {Contenido};
\draw[miflecha] (nodo1) -- (nodo2);
```

---

**CONCLUSIÓN:** Ya tienes TODO lo necesario. TikZ es tu mejor opción. 🎯
