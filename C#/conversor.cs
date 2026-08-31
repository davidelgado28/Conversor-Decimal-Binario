using System;

class ConversorBinario {
    static void Main() {
        Console.Write("Digite um numero decimal: ");
        int decimal_ = int.Parse(Console.ReadLine());

        if(decimal_ == 0) {
            Console.WriteLine("Binario: 0");
        }else{
            string binario = "";
            int numero = decimal_;
            while(numero>0){
                binario = (numero%2) binario;
                numero /= 2;
            }
            Console.WriteLine("Binario: " + binario);
        }
    }
}
