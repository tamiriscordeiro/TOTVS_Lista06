// 3. Elaborar um programa que possua uma sub-rotina que efetue o
// somatório dos N primeiros números naturais iniciando em 1. O
// resultado deverá ser exibido no programa principal e não no
// procedimento.

Function Main()

    local nI    := 0
    local nSoma := 0
    local nNum  := 0

    while !ISDIGIT(nNum) .OR. VAL(nNum) <= 0
        Accept "Digite a quantidade de numeros para a soma: " TO nNum
    enddo

    nNum := val(nNum)

    Somatorio(nI , @nSoma , nNum)

    QOUT("")
    QOUT("O somatorio dos " , AllTrim(strZero(nNum, 3)) , "primeiros numeros eh" , AllTrim(strZero(nSoma, 3)))

Return NIL

static Function Somatorio(nI, nSoma , nNum)

    For nI := 1 to nNum
        nSoma := nSoma + nI
    next

Return (nSoma)
