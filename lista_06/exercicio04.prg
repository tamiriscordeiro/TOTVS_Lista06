// 4. Lembra do exercício da troca de valores entre 2 variáveis?
// Implementar um programa que leia 2 valores informados pelo usuário
// e através de um procedimento chamado “troca”, realize a troca dos
// valores entre as duas variáveis.

Function Main()

    local nA := 0
    local nB := 0
   
    while !ISDIGIT(nA)
        ACCEPT "Digite o valor de A: " TO nA
    enddo 

    while !ISDIGIT(nB)
        ACCEPT "Digite o valor de B: " TO nB
    enddo

    troca (@nA , @nB)

    QOUT("")
    QOUT("O valor de A agora eh: " , (nA))
    QOUT("O valor de B agora eh: " , (nB))

RETURN NIL

static function troca (nA , nB)

    local nTemp := 0

    nTemp := nB
    nB := nA
    nA := nTemp

return nil

   

