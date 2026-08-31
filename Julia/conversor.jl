function decimal_para_binario(decimal::Int)
    decimal == 0 && return "0"

    binario = ""
    numero = decimal
    while numero > 0
        binario = string(numero % 2) * binario
        numero ÷= 2
    end
    return binario
end

println("Digite um numero decimal: ")
decimal = parse(Int, readline())
println("Binario: ", decimal_para_binario(decimal))
