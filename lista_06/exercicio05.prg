// 5. Implementar um procedimento que dado o dividendo e o divisor de
// uma divisão, calcule tanto o quociente como o resto da divisão inteira. O
// resultado não deverá ser exibido pelo procedimento. Deverá ficar
// disponível para ser exibido ou manipulado pelo programa principal.

Function Main()

    local nNum1      := 0
    local nNum2      := 0
    local nQuociente := 0
    local nResto     := 0

    WHILE !ISDIGIT(nNum1)
        Accept "Digite o valor do dividendo: " TO nNum1
    ENDDO

    WHILE !ISDIGIT(nNum2)
        Accept "Digite o valor do divisor: " TO nNum2
    ENDDO

    nNum1 := Val(nNum1)
    nNum2 := Val(nNum2)

    divisao(nNum1 , nNum2 , @nQuociente , @nResto)

    QOUT("")
    QOUT("O quociente dessa divisao eh...: " , Alltrim(STR(Round(nQuociente, 2))))
    QOUT("")
    QOUT("O resto dessa divisao eh.......: " , Alltrim(STR(Round(nResto, 2))))

Return NIL

Static Function divisao(nNum1 , nNum2 , nQuociente , nResto)

    nQuociente := nNum1 / nNum2
    nResto     := nNum1 % nNum2
    
Return NIL
