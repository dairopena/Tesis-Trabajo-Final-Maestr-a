# Configuración de latexmk para el proyecto de tesis
# Este archivo asegura que latexmk (usado por LaTeX Workshop) 
# compile correctamente con XeLaTeX y Biber

# Usar XeLaTeX como motor principal
$pdf_mode = 5;  # 5 = XeLaTeX

# Comando XeLaTeX con opciones necesarias
$xelatex = 'xelatex -interaction=nonstopmode -shell-escape -output-directory=build %O %S';

# Usar Biber para bibliografía
$biber = 'biber --output-directory=build %O %S';

# Directorio de salida
$out_dir = 'build';

# Asegurar que se ejecuten suficientes pasadas
$max_repeat = 5;

# Archivos a limpiar
@generated_exts = qw(aux bbl bcf blg fdb_latexmk fls log out run.xml synctex.gz toc lof lot);

# Archivos adicionales de minted (syntax highlighting)
push @generated_exts, 'pyg';
push @generated_exts, '_minted*';
