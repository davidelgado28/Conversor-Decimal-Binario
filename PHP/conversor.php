<?php
$decimal = (int) readline("Digite um numero decimal: ");

if($decimal===0){
    $binario = "0";
}else{
    $binario = "";
    $numero = $decimal;
    while($numero>0){
        $binario = ($numero%2) . $binario;
        $numero = intdiv($numero, 2);
    }
}
echo "Binario: $binario\n";
