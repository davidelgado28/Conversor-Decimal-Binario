func decimalParaBinario(_ decimal: Int) -> String {
    if decimal == 0 { return "0" }

    var numero = decimal
    var binario = ""
    while numero > 0 {
        binario = String(numero % 2) + binario
        numero /= 2
    }
    return binario
}
print("Digite um numero decimal: ", terminator: "")
if let linha = readLine(), let decimal = Int(linha) {
    print("Binario: \(decimalParaBinario(decimal))")
}
