function decimalParaBinario(decimal) {
    if(decimal===0) return "0";

    let binario = "";
    let numero = decimal;
    while(numero>0){
        binario = (numero%2) + binario;
        numero = Math.floor(numero/2);
    }
    return binario;
}
const decimal = parseInt(prompt("Digite um numero decimal:"));
console.log("Binario: " + decimalParaBinario(decimal));
