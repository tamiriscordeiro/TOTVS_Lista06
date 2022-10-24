Function Main()

// 2. Criar um algoritmo que efetue o c�lculo de uma presta��o em atraso.
// para tanto, utilize a f�rmula PREST = VALOR + (VALOR * (TAXA/ 100)
// * TEMPO). Apresentar o valor da presta��o. O c�lculo e a exibi��o
// dever�o ser feitos por um procedimento.

    local nTempo := 0
    local nValor := 0
    local nTaxa := 0
   
        while !ISDIGIT(nValor) .OR. Val(nValor) <= 0
            ACCEPT "Digite o valor da prestacao: " TO nValor
        enddo

        while !ISDIGIT(nTaxa) .OR. Val(nTaxa) <= 0
            ACCEPT "Insira a taxa por atraso: " TO nTaxa
        enddo

        while !ISDIGIT(nTempo) .OR. Val(nTempo) <= 0
            ACCEPT "Insira os dias de atraso: " TO nTempo
        enddo

        prestacao (nValor , nTaxa , nTempo)

        
RETURN NIL

static function prestacao (nValor , nTaxa , nTempo)

     local nPrest := 0

    nPrest := VAL(nValor) + (VAL(nValor) * (VAL(nTaxa) / 100) * VAL(nTempo))

    QOUT("")
    QOUT("O valor da prestacao a ser paga eh: R$" , AllTrim(str(ROUND(nPrest , 2)))) 

return nil 
