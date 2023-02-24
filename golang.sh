#!/bin/bash
# Instalador de Go Lang en Bash Script
# Creditos: PowerMX
# Telegram: https://t.me/vpnmx

# Verificar dependencias
if ! which wget > /dev/null 2>&1; then
    echo "Se requiere wget para continuar"
    exit 1
fi

if ! which tar > /dev/null 2>&1; then
    echo "Se requiere tar para continuar"
    exit 1
fi

# Descargar la última versión de Go
LATEST_GO_VERSION=$(wget -q -O - https://golang.org/dl/ | grep -o 'go[0-9\.]\+\.linux-amd64\.tar\.gz' | head -n 1)
wget https://golang.org/dl/${LATEST_GO_VERSION}

# Extraer los archivos
tar -C /usr/local -xzf ${LATEST_GO_VERSION}

# Establecer variables de entorno
export PATH=$PATH:/usr/local/go/bin

go version
