//15.Crie uma fun��o chamada �ehPositivo� que descubra se um valor � positivo ou negativo 
// (considere o valor zero como positivo) e retorne Verdadeiro ou Falso. 
// Use essa fun��o em um programa que calcula o m�dulo de um n�mero informado pelo usu�rio.

Function Main()

    local nNum := 0
    local nDiferenca := 0
    
        ACCEPT "Digite um numero positivo ou negativo: " TO nNum
            nNum := VAL(nNum)

        ehPositivo (nNum)

        if ehPositivo (nNum) = .f.
            nNum := (nNum) * (-1)
            QOUT("O numero informado eh negativo e seu modulo eh |" , AllTrim(str(nNum)) , "|")
        ELSE
            QOUT("O numero informado eh positivo e seu modulo eh |" , AllTrim(str(nNum)) , "|")
        ENDIF
 
RETURN NIL

static function ehPositivo (nNum)

    local lValor := .t.

    if nNum < 0 
        lValor := .f.
    else 
        lValor := .t.
    endif
            
RETURN (lValor)
