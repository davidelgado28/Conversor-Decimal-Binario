CREATE OR REPLACE FUNCTION decimal_para_binario(n INT)
RETURNS TEXT AS DECLAREbinarioTEXT:=′′;numeroINT:=n;BEGINIFnumero=0THENRETURN′0′;ENDIF;WHILEnumero>0LOOPbinario:=(numeronumero:=numero/2;ENDLOOP;RETURNbinario;END;DECLARE
    binario TEXT := '';
    numero INT := n;
BEGIN
    IF numero = 0 THEN
        RETURN '0';
    END IF;

    WHILE numero > 0 LOOP
        binario := (numero % 2)::TEXT || binario;
        numero := numero / 2;
    END LOOP;

    RETURN binario;
END;DECLAREbinarioTEXT:=′′;numeroINT:=n;BEGINIFnumero=0THENRETURN′0′;ENDIF;WHILEnumero>0LOOPbinario:=(numeronumero:=numero/2;ENDLOOP;RETURNbinario;END; LANGUAGE plpgsql;

SELECT decimal_para_binario(10);  
