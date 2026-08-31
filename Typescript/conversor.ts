function decimalParaBinario(decimal: number): string {
    if(decimal===0) return "";

    let binario = "";
    let numero = decimal;
    while (numero>0){
        binario = (numero%2) + binario        numero = Math.floor(numero/2);
    }
    return binario;
}
console.log("Binario:", decimalParaBinario(10)); 
