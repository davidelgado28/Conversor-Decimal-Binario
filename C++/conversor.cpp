#include <bits/stdc++.h>

using namespace std;

int main() {
    int decimal;
    cout << "Digite um numero decimal: ";
    cin >> decimal;

    if(decimal==0){
        cout << "Binario: 0" << endl;
        return 0;
    }

    string binario = "";
    int numero = decimal;
    while(numero>0){
        binario += (numero%2==0) ? '0' : '1';
        numero /= 2;
    }
    reverse(binario.begin(), binario.end());

    cout << "Binario: " << binario << endl;
    return 0;
}
