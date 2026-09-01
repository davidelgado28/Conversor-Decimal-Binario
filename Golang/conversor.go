package main

import (
	"bufio"
	"fmt"
	"os"
	"strconv"
	"strings"
)

func decimalToBinary(n int64) string {
	if n == 0 {
		return "0"
	}
	
	negative := false
	if n < 0 {
		negative = true
		n = -n
	}

	var bin string
	for n > 0 {
		remainder := n % 2
		bin = strconv.FormatInt(remainder, 10) + bin
		n /= 2
	}

	if negative {
		bin = "-" + bin
	}
	return bin
}

func binaryToDecimal(bin string) (int64, error) {
	return strconv.ParseInt(bin, 2, 64)
}

func main() {
	reader := bufio.NewReader(os.Stdin)

	fmt.Println("=== CONVERSOR DECIMAL <-> BINÁRIO ===")
	fmt.Println("1. Decimal para Binário")
	fmt.Println("2. Binário para Decimal")
	fmt.Print("Escolha uma opção (1 ou 2): ")

	inputOption, _ := reader.ReadString('\n')
	inputOption = strings.TrimSpace(inputOption)

	if inputOption == "1" {
		fmt.Print("Digite um número decimal: ")
		line, _ := reader.ReadString('\n')
		line = strings.TrimSpace(line)

		val, err := strconv.ParseInt(line, 10, 64)
		if err != nil {
			fmt.Println("Número decimal inválido.")
			return
		}

		binStr := decimalToBinary(val)
		fmt.Printf("Decimal %d em Binário: %s\n", val, binStr)
	} else if inputOption == "2" {
		fmt.Print("Digite um número binário: ")
		line, _ := reader.ReadString('\n')
		line = strings.TrimSpace(line)

		decVal, err := binaryToDecimal(line)
		if err != nil {
			fmt.Println("Número binário inválido.")
			return
		}

		fmt.Printf("Binário %s em Decimal: %d\n", line, decVal)
	} else {
		fmt.Println("Opção inválida.")
	}
}
