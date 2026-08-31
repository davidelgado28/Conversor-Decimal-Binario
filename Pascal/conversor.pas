program DecimalBinario;

var
  decimal, numero: Integer;
  binario: String;

begin
  Write('Digite um numero decimal: ');
  ReadLn(decimal);

  if decimal = 0 then
    binario := '0'
  else
  begin
    binario := '';
    numero := decimal;
    while numero > 0 do
    begin
      binario := IntToStr(numero mod 2) + binario;
      numero := numero div 2;
    end;
  end;

  WriteLn('Binario: ', binario);
end.
