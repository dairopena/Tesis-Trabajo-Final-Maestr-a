#!/bin/bash
# Script de compilación completa para tesis LaTeX con bibliografía

echo "=========================================="
echo "  Compilación completa de tesis LaTeX"
echo "=========================================="
echo ""

# Cambiar al directorio del script
cd "$(dirname "$0")"

# 1. Limpiar archivos auxiliares antiguos
echo "🧹 Limpiando archivos auxiliares antiguos..."
rm -f build/*.aux build/*.bbl build/*.bcf build/*.blg build/*.run.xml build/*.out

# 2. Primera compilación con XeLaTeX
echo ""
echo "📄 Primera compilación con XeLaTeX..."
xelatex -interaction=nonstopmode -synctex=1 -output-directory=build 0000.tex > build/compile1.log 2>&1
if [ $? -ne 0 ]; then
    echo "⚠️  Advertencia: Primera compilación con errores (esto es normal)"
else
    echo "✓ Primera compilación completada"
fi

# 3. Ejecutar Biber para procesar bibliografía
echo ""
echo "📚 Procesando bibliografía con Biber..."
biber build/0000 > build/biber.log 2>&1
if [ $? -eq 0 ]; then
    echo "✓ Bibliografía procesada correctamente"
    # Mostrar estadísticas
    grep -E "INFO - Found [0-9]+ citekeys" build/biber.log
    grep -E "WARN|ERROR" build/biber.log
else
    echo "❌ Error al procesar bibliografía"
    grep -E "ERROR" build/biber.log
    exit 1
fi

# 4. Segunda compilación con XeLaTeX
echo ""
echo "📄 Segunda compilación con XeLaTeX..."
xelatex -interaction=nonstopmode -synctex=1 -output-directory=build 0000.tex > build/compile2.log 2>&1
if [ $? -ne 0 ]; then
    echo "⚠️  Advertencia: Segunda compilación con errores"
else
    echo "✓ Segunda compilación completada"
fi

# 5. Tercera compilación final con XeLaTeX
echo ""
echo "📄 Tercera compilación final con XeLaTeX..."
xelatex -interaction=nonstopmode -synctex=1 -output-directory=build 0000.tex > build/compile3.log 2>&1
if [ $? -ne 0 ]; then
    echo "⚠️  Advertencia: Compilación final con errores"
else
    echo "✓ Compilación final completada"
fi

# Verificar resultado
echo ""
echo "=========================================="
if [ -f "build/0000.pdf" ]; then
    PAGES=$(pdfinfo build/0000.pdf 2>/dev/null | grep Pages | awk '{print $2}')
    SIZE=$(du -h build/0000.pdf | cut -f1)
    echo "✅ PDF generado exitosamente"
    echo "   📄 Archivo: build/0000.pdf"
    echo "   📊 Páginas: $PAGES"
    echo "   💾 Tamaño: $SIZE"
    
    # Verificar citas indefinidas
    echo ""
    UNDEFINED=$(grep -c "Citation.*undefined" build/compile3.log 2>/dev/null || true)
    UNDEFINED=${UNDEFINED:-0}
    if [ "$UNDEFINED" -gt 0 ]; then
        echo "⚠️  Advertencia: $UNDEFINED citas no definidas"
        echo "   Revisa que todas las claves existan en tus archivos .bib"
    else
        echo "✓ Todas las citas fueron procesadas correctamente"
    fi
    
    # Abrir el PDF en un visor disponible
    echo ""
    echo "🖥️  Abriendo PDF en visores..."

    open_pdf() {
        local pdf_path="$1"

        if command -v zathura &> /dev/null; then
            # Si zathura ya está abierto, simplemente deja que recargue el PDF automáticamente
            # No matamos el proceso para que actualice en el mismo sitio
            if ! pgrep -x zathura >/dev/null 2>&1; then
                # Solo abrimos si NO está en ejecución
                if zathura --fork "$pdf_path" >/dev/null 2>&1; then
                    echo "   ✓ Abierto en zathura (nueva instancia)"
                    return 0
                fi
            else
                # Zathura ya está abierto, dejamos que recargue automáticamente
                echo "   ✓ Zathura detectado - recargará automáticamente"
                return 0
            fi
        fi

        if command -v xdg-open &> /dev/null; then
            if xdg-open "$pdf_path" >/dev/null 2>&1 & then
                echo "   ✓ Abierto con xdg-open"
                return 0
            fi
        fi

        if command -v evince &> /dev/null; then
            if evince "$pdf_path" >/dev/null 2>&1 & then
                echo "   ✓ Abierto en evince"
                return 0
            fi
        fi

        echo "   ⚠️  No se encontró un visor PDF disponible"
        return 1
    }
    
    PDF_PATH="$(pwd)/build/0000.pdf"
    open_pdf "$PDF_PATH"
    
    # Abrir en VS Code (completamente desvinculado)
    if command -v code &> /dev/null; then
        code build/0000.pdf >/dev/null 2>&1 &
        echo "   ✓ Abierto en Visual Studio Code"
    else
        echo "   ⚠️  Visual Studio Code no está disponible"
    fi
    
else
    echo "❌ Error: No se pudo generar el PDF"
    echo "   Revisa los logs en build/*.log para más detalles"
    exit 1
fi

echo "=========================================="
echo ""
