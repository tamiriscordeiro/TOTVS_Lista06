// 16.Criar um programa de funções com literais e nela disponibilizar as
// funções/procedimentos:
// a. isLetra(c): informa se o caractere enviado é uma letra.
// b. isDigito(c): informa se o caractere enviado é um número.
// c. isSimbolo(c): informa se o caractere enviado é um símbolo.
// d. toLower(c): converte uma letra maiúscula em minúscula.
// e. cTroca(a, b): troca os valores entre as variáveis a e b.

Function Main() // Teste das funcões

    local cLetra  := ""
    local nNum    := 0
    local cSimb   := ""
    local cMaiusc := ""
    local nVal    := 0
    local aVal    := {}

    Accept "Digite uma letra: " TO cLetra 

    WHILE !isLetra(cLetra)
        Accept "Voce nao digitou uma letra, digite uma letra: " TO cLetra
    ENDDO
    QOUT("Voce digitou uma letra")
    QOUT("")

    Accept "Digite um numero: " TO nNum 

    WHILE !isDigito(nNum)
        Accept "Voce nao digitou um numero, digite um numero: " TO nNum
    ENDDO
    QOUT("Voce digitou um numero")
    QOUT("")

    Accept "Digite um simbolo: " TO cSimb 

    WHILE !isSimbolo(cSimb)
        Accept "Voce nao digitou um simbolo, digite um simbolo: " TO cSimb
    ENDDO
    QOUT("Voce digitou um simbolo")
    QOUT("")

    Accept "Escreve algo em caixa alta para ser retornado em caixa baixa: " TO cMaiusc

    cMaiusc := toLower(cMaiusc)
    QOUT(cMaiusc)

    Accept "Digite o primeiro valor: " TO nVal
        Aadd(aVal, nVal)

    Accept "Digite o segundo valor: " TO nVal
        Aadd(aVal, nVal)

    cTroca(aVal)
    QOUT("O seu novo primeiro valor eh:" , Alltrim(aVal[1]) , "e o seu novo segundo valor eh:" , Alltrim(aVal[2]))

RETURN NIL


Function isLetra(cMSG) 

    local nI := 0
    
    IF len(cMSG) < 1
        RETURN .F.
    ENDIF

        FOR nI := 1 to len(cMSG)
            IF !ISALPHA(SubStr(cMSG, nI , 1))
                RETURN .F.
            ENDIF
        NEXT nI
RETURN .T.

Function isDigito(nMSG) 

    local nI := 0
    
    IF len(nMSG) < 1
        RETURN .F.
    ENDIF

        FOR nI := 1 to len(nMSG)
            IF !IsDigit(SubStr(nMSG, nI , 1))
                RETURN .F.
            ENDIF
        NEXT nI
RETURN .T.

Function isSimbolo(cMSG) 

    local nI := 0
    
    IF len(cMSG) < 1
        RETURN .F.
    ENDIF

        FOR nI := 1 to len(cMSG)
            IF !((ASC(cMSG) >= 33 .AND. ASC(cMSG)<= 47) .OR.(ASC(cMSG) >= 58 .AND. ASC(cMSG) <= 64) .OR. (ASC(cMSG)>= 91 .AND. ASC(cMSG) <= 96) .OR. (ASC(cMSG) >= 123 .AND. ASC(cMSG) <= 126))
                RETURN .F.
            ENDIF
        NEXT nI
RETURN .T.

Function toLower(cMSG)
RETURN Lower(cMSG)

Function cTroca(aVal)
    aAdd(aVal , aVal[2] )  // salva uma copia de [2] em [3]
    aVal[2] := aVal[1] // clona [1] em [2]
    aVal[1] := aVal[3] // copia [3] em [1]
    aDel(aVal, 3) // apaga a auxiliar [3]
RETURN aVal
