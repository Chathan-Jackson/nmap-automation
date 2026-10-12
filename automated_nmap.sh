#!/bin/bash

# Nmap Automation & HTML Reporting
# Portfolio reconstruction based on the original academic project.
# Use only on systems you own or have explicit authorization to scan.

if [ -z "$1" ]; then
    echo "Usage: $0 <target_IP> [ports]"
    echo "Example: $0 10.0.2.15 80,443,22,3389"
    exit 1
fi

TARGET=$1
PORTS=$2

TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
XML_REPORT="nmap_scan_${TIMESTAMP}.xml"
HTML_REPORT="nmap_scan_${TIMESTAMP}.html"

echo "Starting authorized Nmap scan of $TARGET..."

if [ -n "$PORTS" ]; then
    sudo nmap -sV -O -p "$PORTS" -oX "$XML_REPORT" "$TARGET"
else
    sudo nmap -sV -O -oX "$XML_REPORT" "$TARGET"
fi

if [ $? -ne 0 ]; then
    echo "Nmap scan failed."
    exit 1
fi

echo "Scan complete."
echo "XML report saved as: $XML_REPORT"

if command -v xsltproc >/dev/null 2>&1; then
    xsltproc "$XML_REPORT" -o "$HTML_REPORT"

    if [ -f "$HTML_REPORT" ]; then
        echo "HTML report created: $HTML_REPORT"

        if command -v firefox >/dev/null 2>&1; then
            firefox "$HTML_REPORT" >/dev/null 2>&1 &
        fi
    fi
else
    echo "xsltproc is not installed."
    echo "XML results are available in $XML_REPORT"
fi
