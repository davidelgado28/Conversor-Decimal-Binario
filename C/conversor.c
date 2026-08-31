#include <stdio.h>

int main() {
    int decimal, numero, i = 0;
    char binario[64];

    printf("Digite um numero decimal: ");
    scanf("%d", &decimal);

    if(decimal==0){
        printf("Binario: 0\n");
        return 0;
    }
    numero = decimal;
    while(numero>0){
        binario[i++] = (numero % 2) + '0';
        numero /= 2;
    }
    binario[i] = '\0';

    printf("Binario: ");
    for(int j = i-1; j>=0; j--){
        printf("%c", binario[j]);
    }
    printf("\n");

    return 0;
}
