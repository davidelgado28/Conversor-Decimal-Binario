program decimal_binario
    implicit none
    integer :: decimal, numero, resto, i
    character(len=64) :: binario
    character(len=1) :: temp

    write(*, '(A)', advance='no') 'Digite um numero decimal: '
    read(*, *) decimal

    if (decimal == 0) then
        write(*, *) 'Binario: 0'
        stop
    end if

    binario = ''
    i = 1
    numero = decimal
    do while (numero > 0)
        resto = mod(numero, 2)
        write(temp, '(I1)') resto
        binario(i:i) = temp
        i = i + 1
        numero = numero / 2
    end do

    write(*, '(A)', advance='no') 'Binario: '
    do numero = i - 1, 1, -1
        write(*, '(A)', advance='no') binario(numero:numero)
    end do
    write(*, *)

end program decimal_binario
