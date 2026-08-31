import java.util.Scanner;

public class ConversorBinario {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Digite um numero decimal: ");
        int decimal = scanner.nextInt();

        if(decimal==0){
            System.out.println("Binario: 0");
        }else{
            String binario = "";
            int numero = decimal;
            while(num>0){
                binario = (num%2) + binario;
                num /= 2;
            }
            System.out.println("Binario: " + binario);
        }
        scanner.close();
    }
}
