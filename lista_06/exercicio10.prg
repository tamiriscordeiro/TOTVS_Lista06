// 10.Escreva uma função que calcule a média de 3 valores quaisquer. O
// programa principal deverá ler os 3 valores informados pelo usuário e
// apresentar a média.

Function Main()

    local nValores := 0
    local nMedia   := 0
    local nI       := 0
    local nSoma    := 0

    FOR nI := 1 to 3

        While !ISDIGIT(nValores) 
            Accept "Digite um valor pra calcular a media: " TO nValores 
        enddo

        nValores := Val(nValores)
        nSoma := nSoma + nValores

    NEXT nI

    nMedia := media(nValores , nMedia , nSoma)

    QOUT("A media dos valores digitados eh:" , Alltrim(STR(nMedia)))
Return NIl

Static Function media(nValores , nMedia , nSoma)

    nMedia := nSoma / 3

Return (nMedia)
