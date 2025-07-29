#!/bin/bash

ip="192.168.80.157"

# Escaneo rápido para enumerar puertos abiertos
echo "[+] Escaneando puertos abiertos en $ip..."
open_ports=$(nmap -p- --min-rate=1000 -T4 "$ip" | awk '/^[0-9]+\/tcp/ {print $1}' | cut -d/ -f1 | paste -sd, -)

if [ -z "$open_ports" ]; then
    echo "[-] No se encontraron puertos abiertos."
    exit 1
fi

echo "[+] Puertos abiertos: $open_ports"

# Segundo escaneo con detección de servicios
echo "[+] Realizando escaneo detallado de servicios..."
nmap -p"$open_ports" -sC -sV "$ip"
