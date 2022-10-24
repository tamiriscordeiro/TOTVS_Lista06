//14.Organize as funções de PV e FV numa unidade de funções financeiras.

static function CapitalComposto (nMont , nTaxa , nPrazo)

    local nP := 0

    nP := nMont / (1 + nTaxa) ^ nPrazo 
        qout("O valor do capital dos juros compostos eh: R$" , Alltrim(Str(ROUND(nP , 2))))

return NIL 

static function CapitalSimples (nMont , nTaxa , nPrazo)

    local nP  := 0
    local nJuros := 0

    nJuros := nP * nTaxa * nPrazo

    nP := nMont / (1 + (nTaxa * nPrazo))
        qout("O valor do capital dos juros simples eh: R$" , Alltrim(Str(ROUND(nP , 2))))

return NIL

static function MontanteComposto (nP , nTaxa , nPrazo)

    local nMont := 0

    nMont := nP * (1 + nTaxa) ^ nPrazo 
        qout("O valor do montante em juros compostos eh: R$" , Alltrim(Str(ROUND(nMont , 2))))

return NIL 

static function MontanteSimples (nP , nTaxa , nPrazo)

    local nMont  := 0
    local nJuros := 0

    nJuros := nP * nTaxa * nPrazo

    nMont := nP + nJuros
        qout("O valor do montante em juros simples eh: R$" , Alltrim(Str(ROUND(nMont , 2))))

return NIL
