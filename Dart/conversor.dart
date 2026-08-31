import 'dart:io';

String decimalParaBinario(int decimal) {
  if (decimal == 0) return '0';

  String binario = '';
  int numero = decimal;
  while (numero > 0) {
    binario = '{numero % 2}binario';
    numero ~/= 2;
  }
  return binario;
}

void main() {
  stdout.write('Digite um numero decimal: ');
  int decimal = int.parse(stdin.readLineSync()!);
  print('Binario: ${decimalParaBinario(decimal)}');
}
