// 12.Faça um programa para cálculo do montante (valor futuro) a partir de um dado capital (valor presente). 
// O programa deverá solicitar ao usuário o valor do capital (valor presente), a taxa de juros e o prazo.
// O programa também deverá permitir que o usuário escolha se quer utilizar o regime de capitalização simples ou composto. 
// Ao final apresentar ao usuário o montante (valor futuro e o valor dos juros).

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
    local nP      := 0
    local nTaxa   := 0
    local nPrazo  := 0

    while ISDIGIT(nP) = .f.
        ACCEPT("Digite o valor do capital: ") TO nP
    enddo
        nP := val(nP)
    
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
            MontanteComposto (nP , nTaxa , nPrazo)

        elseif cChoice = "S"
            MontanteSimples (nP , nTaxa , nPrazo)
        
        else 
            qout("Opcao invalida!")
        endif 

RETURN NIL
