# 🔍 Nmap Smart Scanner

Script bash para automatizar el reconocimiento de puertos abiertos y realizar un escaneo de servicios con `nmap`, optimizado para pruebas de penetración y CTFs.

## 🧠 ¿Qué hace este script?

1. Realiza un escaneo rápido de todos los puertos (`-p-`) para identificar cuáles están abiertos.
2. Extrae los puertos abiertos de manera limpia y robusta.
3. Ejecuta un segundo escaneo detallado solo sobre los puertos abiertos, utilizando:
   - `-sC`: scripts por defecto de Nmap.
   - `-sV`: detección de versiones de servicios.
4. Muestra en consola los resultados.

---

## 🖥️ Uso

```bash
chmod +x smart_scan.sh
./smart_scan.sh
