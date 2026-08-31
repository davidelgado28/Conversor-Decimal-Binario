function decimalParaBinario(decimal)
    if decimal == 0 then
        return "0"
    end

    local binario = ""
    local numero = decimal
    while numero > 0 do
        binario = (numero % 2) .. binario
        numero = math.floor(numero / 2)
    end
    return binario
end

io.write("Digite um numero decimal: ")
local decimal = tonumber(io.read())
print("Binario: " .. decimalParaBinario(decimal))
