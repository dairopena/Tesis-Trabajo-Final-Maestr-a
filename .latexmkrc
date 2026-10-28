# Configuración de latexmk para la tesis (XeLaTeX + Biber).
# La usan Ctrl+Shift+B (compilar.sh) y LaTeX Workshop.
# Todo lo que genera la compilación queda en build/.

# Motor: XeLaTeX
$pdf_mode = 5;
$xelatex = 'xelatex -interaction=nonstopmode -file-line-error -synctex=1 %O %S';

# Bibliografía con Biber (latexmk lo corre solo cuando cambian las citas o los .bib)
$bibtex_use = 2;

# Carpeta de salida
$out_dir = 'build';
$aux_dir = 'build';

# Máximo de pasadas
$max_repeat = 5;

# Seguir aunque haya errores de LaTeX (como hacía compilar.sh)
$force_mode = 1;

# Archivos extra que borra "latexmk -c"
push @generated_exts, qw(bbl run.xml synctex.gz xdv lof lot);
