programa {
    funcao inicio() {
        inteiro decimal, num, resto
        cadeia binario = ""

        escreva("Digite um numero decimal: ")
        leia(decimal)

        se(decimal==0){            
          escreva("Binario: 0\n")
        }senao{
            num = decimal
            enquanto(num>0){
                resto = num%2
                binario = "" + resto + binario
                num = num / 2
            } 
            escreva("Binario: ", binario, "\n")
        }
    }
}
