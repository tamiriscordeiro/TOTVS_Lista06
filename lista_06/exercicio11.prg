// 11.Fa�a um algoritmo que calcule o reajuste de um sal�rio. O usu�rio
// informar� o sal�rio atual e o percentual de reajuste.

Function Main()

local nSalario := 0
local nAjuste  := 0
local nNewS    := 0


        WHILE !ISDIGIT(nSalario) 

            Accept "Digite o salario atual: " TO nSalario

        ENDDO

        WHILE !ISDIGIT(nAjuste) 

            Accept "Digite o percentual de ajuste no salario: " TO nAjuste

        ENDDO

    nSalario := Val(nSalario)
    nAjuste  := Val(nAjuste)

    nNewS := AJUSTE(nSalario , nAjuste , nNewS)

    QOUT("")
    QOUT("O salario ajustado eh:" , Alltrim(STR(nNewS)))

Return NIL

Function AJUSTE(nSalario , nAjuste , nNewS)

    nNewS := nSalario + (nSalario * (nAjuste / 100))
    
Return (nNewS)
