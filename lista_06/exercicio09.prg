// 9. Escreva um algoritmo para mostrar o sucessor e o antecessor de um
// n�mero qualquer informado pelo usu�rio. Tanto o antecessor como o
// sucessor dever�o ser obtidos atrav�s de fun��es respectivas.

Function Main()

    local nI    := 3
    local nA    := 0
    local nS    := 0

    While !ISDIGIT(nI) 
        Accept "Digite um numero para saber o antecessor e o sucessor dele: " TO nI 
    ENDDO

    nI := Val(nI)

    nA := antecessor(nI , nA)
    nS := sucessor(nI , nS)

    QOUT("O antecessor de" , nI , "eh:" , Alltrim(STR(nA)))
    QOUT("O sucessor de" , nI , "eh:" , Alltrim(STR(nS)))

Return NIL

Static Function antecessor(nI , nA)

    nA := nI - 1

Return (nA)

Static Function sucessor(nI , nS)

    nS := nI + 1

Return (nS)
