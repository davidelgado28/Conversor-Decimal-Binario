$decimal = [int] (Read-Host "Digite um numero decimal")

if ($decimal -eq 0) {
    $binario = "0"
} else {
    $binario = ""
    numero=numero =numero=decimal
    while ($numero -gt 0) {
        binario=(binario = (binario=(numero % 2).ToString() + $binario
        numero=[math]::Floor(numero = [math]::Floor(numero=[math]::Floor(numero / 2)
    }
}
Write-Host "Binario: $binario"
