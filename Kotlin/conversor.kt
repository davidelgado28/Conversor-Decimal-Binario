fun decimalParaBinario(decimal: Int): String {
    if(decimal==0) return "0"

    var numero = decimal
    var binario = ""
    while(numero>0){
        binario = (numero % 2).toString() + binario
        numero /= 2
    }
    return binario
}
fun main(){
    print("Digite um numero decimal: ")
    val decimal = readLine()?.toIntOrNull() ?: 0
    println("Binario: ${decimalParaBinario(decimal)}")
}
