decimal = int(input("Digite um numero em decimal: "))

if decimal == 0:
    binario = "0"
else:
    numero = decimal
    binario = ""
    while numero > 0:
        binario = str(numero%2) + binario
        numero //= 2

print(f"Binario: {binario}")
