#!/bin/bash

read -p "Digite um numero decimal: " decimal

if [ "$decimal" -eq 0 ]; then
    echo "Binario: 0"
else
    binario=""
    numero=$decimal
    while [ $numero -gt 0 ]; do
        binario=((numero((numero % 2))((numerobinario
        numero=$((numero / 2))
    done
    echo "Binario: $binario"
fi
