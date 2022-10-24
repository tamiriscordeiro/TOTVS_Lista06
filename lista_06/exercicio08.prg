// 8. Sabendo que a �rea quadrada � dada pela multiplica��o da medida de
// 2 lados, escreva um algoritmo que mostre a �rea quadrada de um
// espa�o qualquer cujos lados foram informados pelo usu�rio. O c�lculo
// da �rea dever� ser realizado por uma fun��o.

Function Main()

    local nLado1 := 0
    local nLado2 := 0
    local nArea  := 0

    While !ISDIGIT(nLado1) 
        Accept "Digite o um dos lados: " TO nLado1
    ENDDO

    While !ISDIGIT(nLado2)
        Accept "Digite o outro lado: " TO nLado2
    ENDDO

    nLado1 := Val(nLado1)
    nLado2 := Val(nLado2)

    nArea := AREA(nLado1 , nLado2 , nArea)

    QOUT("")
    QOUT("A area dos valores informados eh:" , Alltrim(STR(nArea)) , "m�")
Return NIL

Static Function AREA(nLado1 , nLado2 , nArea)

    nArea := nLado1 * nLado2

Return (nArea)
