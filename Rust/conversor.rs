use std::io;

fn decimal_para_binario(decimal: u32) -> String {
    if decimal == 0 {
        return String::from("0");
    }

    let mut numero = decimal;
    let mut binario = String::new();
    while numero > 0 {
        binario.insert(0, char::from_digit(numero % 2, 10).unwrap());
        numero /= 2;
    }
    binario
}

fn main() {
    println!("Digite um numero decimal: ");
    let mut entrada = String::new();
    io::stdin().read_line(&mut entrada).unwrap();
    let decimal: u32 = entrada.trim().parse().unwrap();

    println!("Binario: {}", decimal_para_binario(decimal));
}
