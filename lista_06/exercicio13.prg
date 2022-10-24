// 13.Na mesma linha do programa anterior fazer uma função para cálculo do valor presente, dado o montante e a taxa.

/* • Fórmulas:
? Juros simples: VF = VP ( 1 + i + n )
? Juros compostos: VF = VP ( 1 + i )^n
? Juros a partir do VF: J = VF - VP
• Onde:
? VF = Montante ou Valor Futuro
? VP = Capital ou Valor Presente
? J = Juros
? i = taxa em decimal
? n = prazo */

// Juros compostos: VF = VP ( 1 + i )^n / J = C * i * t

SET PROCEDURE TO financeira.prg

Function Main()

    local cChoice := ""
    local nMont      := 0
    local nTaxa   := 0
    local nPrazo  := 0

    while ISDIGIT(nMont) = .f.
        ACCEPT("Digite o valor do Montante: ") TO nMont
    enddo
        nMont := val(nMont)
    
    while ISDIGIT(nTaxa) = .f.
        ACCEPT("Digite o valor da taxa de juros: ") TO nTaxa 
    enddo 
        nTaxa := val(nTaxa)

    while ISDIGIT(nPrazo) = .f.
        ACCEPT("Digite o prazo: ") TO nPrazo 
    enddo 
        nPrazo := val(nPrazo)

    ACCEPT("Digite 'S' para calcular com juros simples ou 'C' para juros compostos: ") TO cChoice
        cChoice:= Upper(cChoice)

        if cChoice = "C"
            CapitalComposto (nMont , nTaxa , nPrazo)

        elseif cChoice = "S"
            CapitalSimples (nMont , nTaxa , nPrazo)
        
        else 
            qout("Opcao invalida!")
        endif 

RETURN NIL
