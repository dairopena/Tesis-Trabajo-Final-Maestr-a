#!/bin/bash
# Compilación de la tesis con latexmk (XeLaTeX + Biber).
# latexmk solo repite las pasadas necesarias: si no cambió nada, no compila;
# si cambió el texto, una pasada; si cambiaron citas o .bib, corre Biber.
# La configuración está en .latexmkrc. Todo queda en build/.
#
# Uso:  ./compilar.sh          compila
#       ./compilar.sh limpio   borra build/ y compila desde cero

echo "=========================================="
echo "  Compilación de la tesis (latexmk)"
echo "=========================================="
echo ""

# Cambiar al directorio del script
cd "$(dirname "$0")"
mkdir -p build

if [ "$1" = "limpio" ]; then
    echo "🧹 Borrando archivos auxiliares..."
    latexmk -C 0000.tex > /dev/null 2>&1
fi

echo "📄 Compilando..."
INICIO=$(date +%s)
latexmk 0000.tex > build/latexmk.log 2>&1
DURACION=$(( $(date +%s) - INICIO ))

# Pasadas que hizo latexmk
PASADAS=$(grep -c "^Running 'xelatex" build/latexmk.log)
BIBER=$(grep -c "^Running 'biber" build/latexmk.log)
if [ "$PASADAS" -eq 0 ]; then
    echo "✓ Sin cambios: no hizo falta compilar"
else
    echo "✓ $PASADAS pasada(s) de XeLaTeX, $BIBER de Biber ($DURACION s)"
fi

echo ""
echo "=========================================="
if [ -f "build/0000.pdf" ]; then
    PAGES=$(pdfinfo build/0000.pdf 2>/dev/null | grep Pages | awk '{print $2}')
    SIZE=$(du -h build/0000.pdf | cut -f1)
    echo "✅ PDF generado"
    echo "   📄 Archivo: build/0000.pdf"
    echo "   📊 Páginas: $PAGES"
    echo "   💾 Tamaño: $SIZE"

    # Errores de LaTeX (con -file-line-error aparecen como archivo:línea:)
    echo ""
    ERRORES=$(grep -cE "^[^ ]+\.tex:[0-9]+: " build/0000.log 2>/dev/null)
    ERRORES=${ERRORES:-0}
    if [ "$ERRORES" -gt 0 ]; then
        echo "⚠️  $ERRORES error(es) de LaTeX:"
        grep -E "^[^ ]+\.tex:[0-9]+: " build/0000.log | cut -c1-110 | sed 's/^/   /'
    fi

    # Citas indefinidas
    UNDEFINED=$(grep -c "Citation.*undefined" build/0000.log 2>/dev/null)
    UNDEFINED=${UNDEFINED:-0}
    if [ "$UNDEFINED" -gt 0 ]; then
        echo "⚠️  $UNDEFINED cita(s) no definida(s):"
        grep -oE "Citation '[^']+'" build/0000.log | sort -u | sed 's/^/   /'
    else
        echo "✓ Todas las citas fueron procesadas"
    fi

    # Advertencias de Biber (duplicados, campos raros)
    AVISOS=$(grep -c "WARN" build/0000.blg 2>/dev/null)
    AVISOS=${AVISOS:-0}
    if [ "$AVISOS" -gt 0 ]; then
        DUPLICADAS=$(grep -c "Duplicate entry key" build/0000.blg)
        echo "⚠️  Biber: $AVISOS advertencia(s), $DUPLICADAS por claves duplicadas (detalle en build/0000.blg)"
    fi

    # Abrir el PDF en zathura solo si no está abierto (si lo está, recarga solo)
    echo ""
    if command -v zathura &> /dev/null; then
        if pgrep -x zathura >/dev/null 2>&1; then
            echo "🖥️  Zathura ya está abierto: recargará el PDF"
        else
            zathura --fork "$(pwd)/build/0000.pdf" >/dev/null 2>&1
            echo "🖥️  PDF abierto en zathura"
        fi
    elif command -v xdg-open &> /dev/null; then
        xdg-open "build/0000.pdf" >/dev/null 2>&1 &
        echo "🖥️  PDF abierto con el visor del sistema"
    fi
else
    echo "❌ No se pudo generar el PDF"
    echo "   Revisa build/0000.log y build/latexmk.log"
    exit 1
fi

echo "=========================================="
echo ""
