// 8. Sabendo que a área quadrada é dada pela multiplicação da medida de
// 2 lados, escreva um algoritmo que mostre a área quadrada de um
// espaço qualquer cujos lados foram informados pelo usuário. O cálculo
// da área deverá ser realizado por uma função.

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
    QOUT("A area dos valores informados eh:" , Alltrim(STR(nArea)) , "m²")
Return NIL

Static Function AREA(nLado1 , nLado2 , nArea)

    nArea := nLado1 * nLado2

Return (nArea)
