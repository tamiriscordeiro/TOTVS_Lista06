// 7. Como sabemos, o Harbour/ADVPL não possui uma função para cálculo
// de potência. Crie uma função “POT”, que receba como parâmetros a
// base e o expoente e retorne o valor da potência.

Function Main()

    local nBase := 0
    local nExp  := 0
    local nPot  := 0

    WHILE !ISDIGIT(nBase)
        Accept "Digite o valor da base: " TO nBase
    ENDDO

    WHILE !ISDIGIT(nExp)
        Accept "Digite o valor do expoente: " TO nExp
    ENDDO

    nBase := Val(nBase)
    nExp  := Val(nExp)
    nPot  := POT(nBase , nExp , nPot)

    QOUT("")
    QOUT("A potencia de" , Alltrim(STR(Round(nBase, 0))) , "elevado a " , Alltrim(STR(Round(nExp, 0))) , "eh:" , Alltrim(STR(Round(nPoT, 0))))



Return NIL

Static Function POT(nBase , nExp , nPot)

    nPot := nBase ** nExp

Return (nPot)
