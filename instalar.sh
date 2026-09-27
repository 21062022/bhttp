#!/usr/bin/env bash
set -uo pipefail

echo -e "\n INSTALADOR OFICIAL - J HAZAEL MORENO"
echo "========================================"

if [ "$(id -u)" -ne 0 ]; then
    echo "❌ Ejecuta este script como root: sudo bash instalar.sh"
    exit 1
fi

echo "📁 Configurando directorios del sistema..."
mkdir -p /etc/bhttp
mkdir -p /usr/local/lib/bhttp

if [ -f "hazael.sh" ]; then
    echo "💻 Instalando panel de control..."
    cp hazael.sh /usr/local/bin/hazael
    chmod +x /usr/local/bin/hazael
    echo "✔ Panel instalado correctamente."
else
    echo "⚠ Advertencia: No se encontró 'hazael.sh' en esta misma carpeta."
    echo "  Coloca 'hazael.sh' junto a este instalador y vuelve a ejecutarlo."
fi

echo -e "\n🎉 ¡INSTALACIÓN COMPLETADA!"
echo "👉 Escribe en cualquier momento para abrir tu panel: hazael"
