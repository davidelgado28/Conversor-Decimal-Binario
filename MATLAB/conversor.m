function conversor_binario()
    decimal = input('Digite um numero decimal: ');

    if decimal == 0
        binario = '0';
    else
        binario = '';
        numero = decimal;
        while numero > 0
            binario = [num2str(mod(numero, 2)), binario];
            numero = floor(numero / 2);
        end
    end

    fprintf('Binario: %s\n', binario);
end

% Atalho: dec2bin(decimal)
