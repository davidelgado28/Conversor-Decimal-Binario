def decimal_para_binario(decimal)
  return "0" if decimal == 0

  binario = ""
  numero = decimal
  while numero > 0
    binario = (numero % 2).to_s + binario
    numero /= 2
  end
  binario
end

print "Digite um numero decimal: "
decimal = gets.chomp.to_i
puts "Binario: #{decimal_para_binario(decimal)}"
